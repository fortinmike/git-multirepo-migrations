require "fileutils"

class Migration
  def self.run(repo_path)
    puts "Deleting .git/hooks/prepare-commit-msg"
    FileUtils.rm_f(".git/hooks/prepare-commit-msg")
    
    puts "Deleting .git/hooks/post-merge"
    FileUtils.rm_f(".git/hooks/post-merge")

    puts "Initializing extras to add .gitattributes file and add custom merge driver in .git/config"
    system('multi init --extras')
  end
end