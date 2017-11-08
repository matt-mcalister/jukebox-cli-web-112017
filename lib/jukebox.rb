songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)


def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song,idx|
    puts "#{idx+1}. #{song}"
  end
end

def play(songs)
  puts "Please eanter a song name or number:"
  response = gets.chomp

  if songs.include?(response)
    puts "Playing #{response}"
  elsif response > 0 || response < 10
    puts "Playing #{songs[response-1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help

  puts "Please enter a command:"
  response = gets.chomp

  while response != "exit"
    if response == "help"
      help
      puts "Please enter a command:"
      response = gets.chomp
    elsif response == "list"
      list(songs)
      puts "Please enter a command:"
      response = gets.chomp
    elsif response == "play"
      play(songs)
      puts "Please enter a command:"
      response = gets.chomp
    end
  end
  exit_jukebox
end
