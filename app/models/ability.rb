class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user

    if user.role == "admin"
      can :manage, [Ad, Adtype]
      can :manage, User
      can :assign_role, User
      cannot :destroy_account, User
      cannot [:update, :destroy], User, :id => user.id
    else
      can :read, [Ad, Adtype]
      if user.role == "signed_user"
        can :destroy_account, User
        can :update, User, :id => user.id
        can :create, Ad
        can :manage, Ad, :user_id => user.id
      end
    end
  end
end
