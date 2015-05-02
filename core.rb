def perform_migration(migration_class, repo_path)
  previous_directory = Dir.pwd
  Dir.chdir(repo_path)
  
  migration_class.run(repo_path)
  
  Dir.chdir(previous_directory)
end

def ask_yes_no(message)
  answered = false
  while !answered
    print message
    print " (y/n) "
    
    case $stdin.gets.strip.downcase
    when "y", "yes"
      answered = true
      return true
    when "n", "no"
      answered = true
      return false
    end
  end
end