class Ability
  include CanCan::Ability

    def initialize(user)
    if user.try(:admin?)
        can :manage, :all
    else
      can :create, Post
      can :read, Post
      can :update, Post do |post|
          post.user == user
      end
      can :delete, Post do |post|
          post.user == user
      end
      
      can :create, Comment
      can :read, Comment
      can :update, Comment do |comment|
          comment.user == user
      end
      can :delete, Comment do |comment|
          comment.user == user
      end
      
      can :data, Videopost
      can :update, Videopost do |home|
          home.user == user
      end
      can :delete, Videopost do |home|
          home.user == user
      end
      
    end
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end