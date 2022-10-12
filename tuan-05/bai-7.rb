class Teacher
    attr_accessor :salary, :bonus, :penaty, :realSalary, :name, :age, :hometown, :id
    def initialize()
        print "Enter salary: "
        @salary = gets.to_f
        print "Enter bonus:"
        @bonus = gets.to_f
        print "Enter penaty: "
        @penaty = gets.to_f
        @realSalary = getRealSalary
        print "Enter name: "
        @name = gets.chomp
        print "Enter age:"
        @age = gets.to_i
        print "Enter hometown: "
        @hometown = gets.chomp
        print "Enter id: "
        @id = gets.chomp
    end

    def getRealSalary
        return @salary + @bonus - @penaty
    end

    def toString
        return "Teacher{salary=#{@salary}, bonus= #{@bonus}, penaty=#{@penaty}, 
        realSalary=#{realSalary}, name=#{@name}, age= #{@age}, hometown=#{@hometown}, id=#{id}}"
    end
end

class ManagerTeacher 
    attr_accessor :teachers
    def initialize()
        @teachers = []
    end
    
    def add(teacher)
        @teachers << teacher
    end

    def deleteById(id)
        if @teachers.find{|item| item.id == id}
            @teachers.reject! { |e| e.id == id }
            return true
        end
        return false
    end

    def getSalary(id)
        teacher = @teachers.find{|item| item.id == id}
        if teacher.nil?
            return 0
        end
        return teacher.realSalary
    end

    def show
        @teachers.each{ |teacher| puts teacher.toString}
    end
end

managerTeacher  = ManagerTeacher.new
while true
    puts "Application Manager Teacher"
    puts "Enter 1: To insert teacher"
    puts "Enter 2: To remove teacher by id"
    puts "Enter 3: To get salary"
    puts "Enter 4: To exit:"
    print "Enter: "
    line218  = gets.to_i
    case line218
        when 1
            teacher = Teacher.new
            managerTeacher.add(teacher)
            puts teacher.toString
        when 2
            print "Enter id to delete: "
            id = gets.chomp
            if managerTeacher.deleteById(id)
                puts "Success"
                managerTeacher.show
            else
                puts "Fail"
            end
        when 3
            print "Enter id to get salary: "
            id = gets.chomp
            puts "Salary: #{managerTeacher.getSalary(id)}"
        when 4 
            break
        else
            puts "Invalid"
    end
end