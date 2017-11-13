class Ability
  include CanCan::Ability
  def initialize(user)
	if user.username == 'admin'
		can :read, Employee
		can :delete, Pizza
		can :delete, Client
		#can :delete, Order   esperando desenvolvimento
		#can :delete, Report  esperando desenvolvimento
	end
  end
end