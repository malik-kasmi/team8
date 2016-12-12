class GamePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def new?
    create?
  end

  def create?
    record.requester.captain == user
  end

  def accept?
    record.opponent.captain == user
  end

  def reject?
    record.opponent.captain == user
  end

  def edit?
    update?
  end

  def update?
    record.requester.captain == user
  end

end
