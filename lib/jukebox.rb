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

def help
 puts 'I accept the following commands:'
 puts '- help : displays this help message'
 puts '- list : displays a list of songs you can play'
 puts '- play : lets you choose a song to play'
 puts '- exit : exits this program'
end

def list(songs)
  (0...songs.length).each do |x|
    puts "#{x+1}. #{songs[x]}"
  end
end

def play(songs)
    puts 'Please enter a song name or number:'
    answer = gets.chomp
    if songs.include?(answer)
      puts "Playing #{answer}"
    elsif (answer.to_i <songs.length && answer.to_i>0)
      puts "Playing #{songs[answer.to_i-1]}"
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
  loop do
  answer = gets.chomp
  case answer
  when "help"
    help
  when "list"
    list(songs)
  when "play"
    play(songs)
  when "exit"
    exit_jukebox
    break
  end
  end
end
