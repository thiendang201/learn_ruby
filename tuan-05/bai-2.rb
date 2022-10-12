class Document
    attr_accessor :id, :nxb, :number
    def initialize()
        print "Nhap ID: "
        @id = gets
        print "Nhap nxb:"
        @nxb = gets
        print "Nhap so ban phat hanh: "
        @number = gets.to_i
    end

    def toString
        puts "id: #{@id}"
        puts "nxb: #{@nxb}"
        puts "so ban phat hanh: #{@number}"
    end
end

class Book < Document
    attr_accessor :author, :numberPage
    def initialize()
        super
        print "Nhap tac gia: "
        @author = gets
        print "Nhap so trang: "
        @numberPage = gets.to_i
    end
    
    def toString
        puts "Sach"
        puts "tac gia: #{@author}"
        puts "so trang: #{@numberPage}"
        super
    end
end

class Journal  < Document
    attr_accessor :issueNumber, :monthIssue
    def initialize()
        super
        print "Nhap so phat hanh:"
        @issueNumber = gets.to_i
        print "Nhap thang phat hanh:"
        @monthIssue = gets.to_i
    end
    
    def toString
        puts "Tap Chi"
        puts "So phat hanh: #{@issueNumber}"
        puts "Thang phat hanh: #{@monthIssue}"
        super
    end
end

class Newspaper < Document
    attr_accessor :dayIssue
    def initialize()
        super
        print "Nhap ngay phat: "
        @dayIssue = gets.to_i
    end
    
    def toString
        puts "Newspaper"
        puts "Ngay phat hanh: #{@dayIssue}"
        super
    end
end

class ManagerDocument
    attr_accessor :documents
    def initialize()
        @documents = []
    end
    
    def addDocument(document)
        @documents << document
    end

    def deleteDocument(id)
        if @documents.find{|item| item.id == id}
            @documents.reject! { |e| e.id == id }
            return true
        end
        return false
    end

    def showInfor
        @documents.each{ |document| document.toString}
    end

    def searchByBook
        @documents.select {|item| item.is_a?(Book)}.each{ |e| e.toString}
    end

    def searchByNewspaper
        @documents.select {|item| item.is_a?(Newspaper)}.each{ |e| e.toString}
    end

    def searchByJournal
        @documents.select {|item| item.is_a?(Journal)}.each{ |e| e.toString}
    end
end

managerDocument  = ManagerDocument.new
while true
    puts "1 - Them tai lieu"
    puts "2 - Tim kiem tai lieu bang loai sach "
    puts "3 - Hien thi thong tin tai lieu"
    puts "4 - Xoa tai lieu"
    puts "5 - Thoat:"
    print "Chon: "
    chon  = gets.to_i
    case chon
        when 1
            puts "1 - Them sach"
            puts "2 - Them bao"
            puts "3 - Them tap chi"
            print "Chon: "
            type = gets.to_i
            case type
                when 1
                    book = Book.new
                    managerDocument.addDocument(book)
                    puts book.toString
                when 2
                    newspaper = Newspaper.new
                    managerDocument.addDocument(newspaper)
                    puts newspaper.toString
                when 3
                    journal = Journal.new
                    managerDocument.addDocument(journal)
                    puts journal.toString
                else
                    puts "Invalid"
            end
        when 2
            puts "1 - Tim sach"
            puts "2 - Tim bao"
            puts "3 - Tim tap chi"
            print "Chon: "
            choise = gets.to_i
            case choise
                when 1
                    managerDocument.searchByBook
                when 2
                    managerDocument.searchByNewspaper
                when 3
                    managerDocument.searchByJournal
                else
                    puts "Khong hop le"
            end
        when 3
            managerDocument.showInfor
        when 4
            print "Nhap ID can xoa: "
            id = gets
            puts managerDocument.deleteDocument(id)
            managerDocument.showInfor
        when 5
            break
        else
            puts "Khong hop le!"
    end
end