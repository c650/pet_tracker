class Pet
	attr_accessor :age
	attr_reader :owner, :name, :gender, :type, :mood
    
	def initialize(name, age, gender, type, mood="")
		@name = name
		@mood = mood
		@type = type
		@age = age
		@gender = gender
	end

	def owner=(owner)
		if owner.is_a? User
			@owner = owner
			@owner.new_pet=(@name, @age, @gender, @type)
		else
			"ERROR"
		end
	end

	def is_fed?
		@is_fed = false
	end

	def feed
		@is_fed = true
	end

    def walk
        @mood = "happy"
    end
    
    def speak
        if :type == "snake"
            puts "sSsSsS"
        elsif :type == "dog"
            puts "woof"
        else 
            puts "meow"
        end
    end
    
    def 
end