class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def edit?
    update?
  end

  def update?
    true
  end

  def show?
    true
  end

end
