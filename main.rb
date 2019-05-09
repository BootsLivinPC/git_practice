def puts_git(cmd)
  puts `git #{cmd} -h` # back ticks in ruby allow you to use prompt commands
  menu
end

def menu
  puts '1: Enter git command'
  puts '2: Exit'
  choice = gets.to_i
  sleep(3)
  puts `clear`
  case choice
  when 1
    puts 'Enter git command'
    puts_git(gets.strip)
    menu
  when 2
    exit
  else
    puts 'Invalid choice'
    menu
  end
end

menu