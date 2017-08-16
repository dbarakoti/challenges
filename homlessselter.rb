# you have been hired by a homeless shelter to keep track of all the people who check in and stay.
# you need to write a program that keeps track of Names, Age, Any illnesses they need medication for, and if they stayed there within the last 30 days.
# print a table that stores this information.
# use a gem for the table.
# Add a feature to your program that will ckeck out a person form your list.
# store their data in a separate list that stores their info and starts a timer for 1 week.
# Turn them into dragons.

require 'terminal-table'
require 'date'

@rows = []

def play_again
    print "Would you like to add another homeless person (y or n)? "
    @answer = gets.chomp.strip
    puts "\n"

    if @answer.downcase == "y"
        main_method()
    elsif @answer.downcase == "n"
        return
    else
        play_again()
    end
end

def check_date
    @rows.each do |x|
        if x[0] == @first_name
            if x[1] == @last_name
                if x[2] == @age
                    if (x[4] + 30) > @date
                        day = (x[4] + 30).strftime("%m/%d/%Y")

                        puts "You have stayed here in the last 30 days."
                        puts "You can stay here after this #{day}"
                        puts "\n"

                        info()
                    end
                end
            end
        end
    end
end

def info
    @first_name = nil
    @last_name = nil
    @age = nil
    @illnesses = nil
    
    print "What's your first name? "
    @first_name = gets.chomp.strip
    puts "\n"

    print "What's your last name? "
    @last_name = gets.chomp.strip
    puts "\n"

    print "What's your Age? "
    @age = gets.chomp.strip.to_i
    puts "\n"

    print "Do you have an illnesses that needs medication (y or n)? "
    medication = gets.chomp.strip
    puts "\n"
    if medication.downcase == 'y'
        print "What illnesses do you have? "
        @illnesses = gets.chomp.strip
        puts "\n"
    end

    @date = Date.today
end

def main_method
    info()
    check_date()

    @rows << [@first_name, @last_name, @age, @illnesses, @date]

    play_again()
end

exit_program = 'n'
until exit_program.downcase == 'y'
    main_method

    table = Terminal::Table.new :title => "Homeless Shelter", :headings => ['First', 'last', 'Age', 'Illnesses', 'Days'], :rows => @rows 

    table.style = {:all_separators => true, :border_x => "=", :border_i => "+", :alignment => :center}

    puts table
    puts "\n"

    puts "Would you like to exit (y or n)? "
    exit_program = gets.chomp.strip
end