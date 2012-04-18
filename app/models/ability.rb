class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user

    if user.role == "admin"
      can :manage, [Ad, Adtype]
      can :manage, User
      cannot [:update, :destroy], User, :id => user.id
    else
      can :read, [Ad, Adtype]
      if user.role == "signed_user"
        can :update, User, :id => user.id
        can :create, Ad
        can :manage, Ad, :user_id => user.id
      end
    end
  end
end
