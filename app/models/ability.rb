class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
      if user.has_role? :admin
        can :manage, :all
      elsif user.has_role? :author
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
