require "fileutils"

class Migration
  def self.run(repo_path)
    puts "Initializing extras to update .gitattributes for .multirepo.meta auto-merging"
    system('multi init --extras')
  end
end