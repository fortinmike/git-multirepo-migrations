require "fileutils"

class Migration
  def self.run(repo_path)
    puts "Removing unused hooks..."
    FileUtils.rm_f(".git/hooks/prepare-commit-msg")
    FileUtils.rm_f(".git/hooks/post-merge")

    puts "Initializing extras..."
    system('multi init --extras')
  end
end