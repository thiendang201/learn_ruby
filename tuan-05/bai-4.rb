class Person
    attr_accessor :name, :age, :job, :passport
    def initialize()
        print "Enter name: "
        @name = gets.chomp
        print "Enter age: "
        @age = gets.to_i
        print "Enter job: "
        @job = gets.chomp
        print "Enter passport: "
        @passport = gets.chomp
    end

    def toString
        return "name=#{@name}, age= #{@age}, job=#{@job}, passport=#{@passport}"
    end
end

class Family
    attr_accessor :persons, :address

    def initialize()
        print "Enter number person of family: "
        n = gets.to_i
        @persons = []
        for i in 1..n
            puts "\nEnter person #{i}:"
            person = Person.new
            @persons << person
        end
        print "Enter address: "
        @address = gets.chomp
    end
    
    def toString
        str = " "
        i = 1
        @persons.each{ |person| 
            str += "person#{i}{#{person.toString}}\n"
            i += 1
        }
        return str
    end
end

class Town
    attr_accessor :families
    def initialize()
        print "Enter number family of town: "
        n = gets.to_i
        @families = []
        for i in 1..n
            puts "\nEnter family #{i}:"
            family = Family.new
            @families << family
        end
    end
    
    def toString
        str = " "
        i = 1
        @families.each{ |family| 
            str += "Family#{i}{#{family.toString}}\n"
            i += 1
        }
        return str
    end
end

town  = Town.new
puts "\nShow Info Town:"
puts town.toString