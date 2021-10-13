class App()
    def initialize()
        @books = []
        @people = []
        @rentals = []    
    end

    def list_books
        @books.map |book| do
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
            person = Student.new(age, parent_permission, name)
        elseif person_type === "2" 
            puts "Specilization: "
            specialization = gets.chomp
            person = Teacher.new(age, specialization, name) 
        end
        @people.push(person)
        puts "Person created successfully"
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


