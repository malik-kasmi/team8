class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  include Pundit
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def user_not_authorized
    flash[:alert] = "Vous n'etes pas autoriser a executer cette action"
    redirect_to(root_path)
  end

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :photo])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  def after_sign_in_path_for(resource)
    if !session[:invited_by_team].blank?
      TeamUser.create(user: resource, team: Team.find(session[:invited_by_team]),  status: "accept")
      session[:invited_by_team] = nil
    end
    request.env['omniauth.origin'] || stored_location_for(resource) || teams_path || root_path
  end

  def default_url_options
  { host: ENV['HOST'] || 'localhost:3000' }
  end

private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

end
