def perform_migration(migration_class, repo_path)
  previous_directory = Dir.pwd
  Dir.chdir(repo_path)
  
  migration_class.run(repo_path)
  
  Dir.chdir(previous_directory)
end