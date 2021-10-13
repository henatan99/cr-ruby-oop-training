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

    def list_all_people
        @people.map |person| do
            puts `#{person. is_a?(Student) ? '[Student]' : '[Teacher]'} Name: "#{person.name}", Id: #{person.id}, Age: #{person.age} \n`
        end
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


