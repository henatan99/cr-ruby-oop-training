class App()
    def initialize()
        @books = []
        @people = []
        @rentals = []    
    end

    def list_books
        @books.each |book| do
            puts `Title: "#{book.title}", Author: #{book.author} \n`
        end
    end

    def list_people
        @people.map |person| do
            prefix = person. is_a?(Student) ? '[Student]' : '[Teacher]'
            puts `#{prefix} Name: "#{person.name}", Id: #{person.id}, Age: #{person.age} \n`
        end
    end

    def create_person
        puts "Do you want to create a student (1) or a teacher (2)? [Input the number]: \n"
        person_type = gets.chomp

        if person_type != "1" && person_type != "2"
            puts "Invalid option"
            return
        end

        puts "Age: "
        age = gets.chomp.to_i
        puts "Name: "
        name = gets.chomp
        if person_type === "1" 
            puts "Has parent permission? [Y/N]: " 
            parent_permission = gets.chomp
            parent_permission = parent_permission.downcase == "y"
            @people << Student.new(age, parent_permission, name)
        elseif person_type === "2" 
            puts "Specilization: "
            specialization = gets.chomp
            @people << Teacher.new(age, specialization, name) 
        end
        puts "Person created successfully"
    end

    def create_book
        puts "Title"
        title = gets.chomp 
        puts "Author"
        author = gets.chomp
        @books << Book.new(title, author)
        puts "Book created successfully"
    end

    def create_rental
        puts "Select a book from the following list by number \n"
        @books.each_with_index |book, index| do
            puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
        end
        id = gets.chomp.to_i 
        if id < 0 || id >= @books.length 
            puts "Invalid option"
            return
        end
        puts "\nDate"
        date = gets.chomp 
        @rentals << Rental.new(date, @books[book_index], @people[person_index])
        puts "Rental created successfully"
    end

    def list_rentals_for_person_id
        
    end
end

def main
    app = App.new()
    puts "Welcome to school library app \n\n"
    response = nil

    while response != "7"
        puts "Please choose an option by entering a number"
        puts "1 - List all books"
        puts "2 - List all people"
        puts "3 - Create a person"
        puts "4 - Create a book"
        puts "5 - Create a rental"
        puts "6 - List all rentals for a given person id"
        puts "7 - Exit"

        response = gets.chomp

        case response
        when "1"
          app.list_books()
        when "2"
          app.list_people()
        when "3"
          app.create_person()
        when "4"
          app.create_book()
        when "5"
          app.create_rental()
        when "6"
          app.list_rentals_for_person_id()
        when "7"
          # *Have a way to quit the app.
          puts "Thank you for using this app!"
        end
    
    end
end

main()


