class TeamPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    true
  end

  def create?
    true
  end

  def create_game?
    record.captain == user
  end

  def invitation?
    true
  end

  def referal_landing?
    true
  end
end
