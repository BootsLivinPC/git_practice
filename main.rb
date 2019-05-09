require "colorize"

def puts_git(cmd)
  puts `git #{cmd} -h` # back ticks in ruby allow you to use prompt commands
  menu
end

def menu
  puts "MAIN MENU".colorize(:cyan)
  puts '1: Enter git command'.colorize(:yellow)
  puts '2: Exit'.colorize(:blue)
  choice = gets.to_i
  sleep(3)
  puts `clear`
  case choice
  when 1
    puts 'Enter git command'.colorize(:gold)
    puts_git(gets.strip)
    menu
  when 2
    puts "Thanks for using our program".colorize(:purple)
    exit
  else
    puts 'Invalid choice'.colorize(:red)
    sleep(1)
    puts `clear`
    menu
  end
end

menu