#make user class 
class User 
	attr_accessor :num_of_pets, :age, :sanity, :has_scratches?, :has_bites?, :life_status
	attr_reader :name, :gender, :pets

	def initialize(name, gender, age, sanity = true)
		@name = name
		@gender = gender
		@age = age
		@sanity = sanity
		@num_of_pets = 0 
    @pets = Hash.new
	end

	def feed_a_pet(pet)
		pet.feed

		if pet.mood == "angry"
			if pet.type == "cat"
				self.has_scratches? = true
			else
				self.has_bites? = true
			end

			if pet.type == "snake"
				self.life_status = "dead"
			end
		end

	end

	def new_pet=(name, age, gender, type)
    if type=="dog"
      @pets[:dog].push(Pet.new(name, age, gender, type))
    elsif type =="snake"
      @pets[:snake].push(Pet.new(name, age, gender, type))
    else 
      @pets[:cat].push(Pet.new(name, age, gender, type))
    end
  end
		
	end
end

