require 'pry'
class Dog
#Dog class variables has a class variable, @@all, the points to an array
#every puppy that is born should get pushed into this array 
#at the moment of instantiation––in the #initialize method!
@@all = []

attr_reader :name
#def name
#    @name
#end

#Use the SELF keyword inside the #initialize method 
#to refer to the new dog you are trying to store in your @@all array.
    def initialize(name) 
        @name = name #setter/writer
        @@all << self ##need to use self keyword
    end
    
    def self.all #is a class method returns all dog instances
        @@all
    end

    def self.clear_all #is a class method that empties the @@all array of all existing dogs
        @@all.clear
        
    end

    def self.print_all #is a class method that puts out the name of each dog to the terminal
        @@all.each do |instance|
        puts instance.name
        end
    end
end

dog_one = Dog.new("Spot")
#p dog_one
dog_two = Dog.new("blah")
#p dog_two
a_test = Dog.all
p a_test.class 
Dog.print_all