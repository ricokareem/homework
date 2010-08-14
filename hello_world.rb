#!/opt/local/bin/ruby -w 

## Rico Rodriquez Collins

## 1. Write a simple "Hello world" program
  puts "1. Hello World"
  puts " "


## 2. Use a built-in string method to substitute all vowels with an asterisk. 
## Also, understand the difference between single- and double-quoted strings.
  str = "Hello World"
  new_str = str.gsub(/a|e|i|o|u/,"*")
  puts "2. #{new_str}"
  puts " "


## 3. Create an array of your favorite numbers. 
## Use a block to iterate through them and accumulate the sum of the numbers.
  a = [ 1, 3, 5, 7, 11, 13, 17, 19, 23 ]
  puts "3a. array of numbers: " 
  a.each { |num| puts "   #{num}"} 

  sum = 0
  count = 0
  puts "3b. Sum of the array" 
  a.each do |num|
    puts "  adding #{num}"
    sum += num
    count += 1
    puts "sum#{count} = #{sum}"
  end
  puts " "


## 4. Create a hash that associates your name and address with appropriate values. 
## Use symbols for the keys. 
## Print a mailing label to the screen by indexing the hash.
  mailing_label = {
    :name     => "Rico Rodriquez Collins",
    :street   => "205 N Naomi Street",
    :city     => "Burbank",
    :state    => "CA",
    :zipcode  => "91505"
  }  
  puts "4. Mailing Label"
  puts "  #{mailing_label[:name]}"
  puts "  #{mailing_label[:street]}"
  puts "  #{mailing_label[:city]}, #{mailing_label[:state]} #{mailing_label[:zipcode]}"
  puts " "


## 5. Define a say_hello_to method that takes a person's name as the parameter and prints out a personalized greeting.
  def say_hello_to(name)
     puts "Hello, #{name}.  It's good to see you."
     puts " "
  end

  puts "5. Say hello to <name>"
  puts "Enter a name: "
  name = gets.chomp!
  say_hello_to(name)



## 6. Write a Song class that has instance variables for a song's name and number of stars as a rating. 
## Define an initialize method that initializes the object with the name of a song and its star rating. 
## Define a play method that prints out the song's name in all capital letters and its rating. 
## Create an instance of a song and invoke its play method.
  class Song
    def initialize (selection)
      @selection = Integer(selection)
    end
    def play (selection)
        tracks = [
        {
          "name" => "Mary Had a Little Rock",
          "rating" => 4
        },
        {
          "name" => "Crash Test My Heart",
          "rating" => 5
        },
        {
          "name" => "Tears in My Beers",
          "rating" => 3
        }
      ]
      unless selection > tracks.length || selection <= 0
        puts "Now Playing... Track # #{selection}.  "
        puts "   Which is " + "#{tracks[(selection - 1)]["name"]}".upcase
        puts "   It has a rating of " + "#{tracks[(selection - 1)]["rating"]} stars."
      else
        puts "There is no song for number #{selection}.  Please only enter a number to one of the songs listed above"
      end
    end
  end

  puts "6. Play a song from the list (type the number then <enter>)"
  begin
    puts "1. Mary Had a Little Rock" + "\n" + "2. Crash Test My Heart" + "\n" + "3. Tears in My Beers"
    selection = gets.chomp!
    song = Song.new(selection)
    song.play(Integer(selection))
  rescue
    puts "\n" + "Numbers only, please" + "\n" + "\n"
    retry
  end  
  puts " "      

  
