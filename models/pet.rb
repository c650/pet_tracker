class Pet
	attr_accessor :age
	attr_reader :owner, :name, :gender, :type, :mood

	def initialize(name, age, gender, type)
		@name = name
		@mood
		@type = type
	end

	def owner=(owner)
		if owner.is_a? User
			@owner = owner
		else
			"ERROR"
		end
	end

	def is_fed?
		@is_fed = false
	end

	def feed(food)
		if food == 

		@is_fed = true
	end


end