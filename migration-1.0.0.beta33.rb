require "fileutils"

class Migration
  def self.run(repo_path)
    puts "Installing the post-commit hook which stages tracking files (bug #91565510)"
    system('multi install --hooks')
  end
end