class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
      if user.role == 'admin'
        can :manage, :all
      elsif user.role == 'member'
        can :create, Comment
        can :update, Comment
        can :destroy, Comment
        can :create, Profile
        can :update, Profile
        can :create, Contact
        can :read, :all
      else
        can :read, :all
        can :create, Contact
      end
  end
end
