class Student
    attr_accessor :name, :age, :class
    def initialize()
        print "Nhap ten: "
        @name = gets.chomp
        print "Nhap tuoi:"
        @age = gets.to_i
        print "Nhap lop: "
        @class = gets.chomp
    end

    def toString
        return "Student{name=#{@name}, age= #{@age}, class=#{@class}}"
    end
end

class Card
    attr_accessor :id, :borrowDate, :paymentDate, :bookId, :student
    def initialize()
        print "Enter id: "
        @id = gets.chomp
        print "Enter borrowDate: "
        @borrowDate = gets.to_i
        print "Enter paymentDate: "
        @paymentDate = gets.to_i
        print "Enter bookId: "
        @bookId = gets.chomp
        puts "Enter student: "
        @student = Student.new
    end
    
    def toString
        return "Card{ id=#{@id}, borrowDate=#{@borrowDate}, paymentDate=#{paymentDate},
        bookId = #{bookId}, #{@student.toString} }"
    end
end

class ManagerCard
    attr_accessor :cards
    def initialize()
        @cards = []
    end
    
    def addCard(card)
        @cards << card
    end

    def deleteCard(id)
        if @cards.find{|item| item.id == id}
            @cards.reject! { |e| e.id == id }
            return true
        end
        return false
    end

    def showInfor
        @cards.each{ |card| puts card.toString}
    end
end

managerCard  = ManagerCard.new
while true
    puts "Application Manager Card"
    puts "Enter 1: To insert Card"
    puts "Enter 2: To remove Card by id"
    puts "Enter 3: To show information cards"
    puts "Enter 4: To exit:"
    print "Enter: "
    line218  = gets.to_i
    case line218
        when 1
            card = Card.new
            managerCard.addCard(card)
            puts card.toString
        when 2
            print "Enter id to delete: "
            id = gets.chomp
            if managerCard.deleteCard(id)
                puts "Success"
                managerCard.showInfor
            else
                puts "Fail"
            end
        when 3
            managerCard.showInfor
        when 4
            break
        else
            puts "Invalid"
    end
end