require "fileutils"

class Migration
  def self.run(repo_path)
    puts "Initializing extras to add the post-commit hook which stages tracking files (bug #91565510)"
    system('multi init --extras')
  end
end