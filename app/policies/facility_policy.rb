class FacilityPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index
    true
  end

  def show?
    return true
  end

  def new?
    return true
  end

  def map?
    true
  end

  def create?
    return true
  end
 #part added
  def destroy?
    return true
  end

  def edit?
    true
  end

  def update?
    true
  end

  def map?
    true
  end

end
