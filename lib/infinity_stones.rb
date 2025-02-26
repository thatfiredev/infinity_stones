#!/usr/bin/ruby -w
class Infinity_Stones
  def self.snap(percentage)
    # Find all the files and count them
    total = 0
    dirs = Dir.glob("**/*")
    for i in 0..(dirs.size - 1)
      filename = dirs.at(i)
      next if File.directory?(filename) or filename.include? '.dust'
      total += 1

      # Delete if the current_iteration is less or equal to the files to delete
      files_to_delete = total * percentage / 100
      if total >= files_to_delete && total > 0
        if i <= files_to_delete
          File.write(filename, '')
          File.rename(filename, filename + '.dust')
          puts filename + " turns into dust..."
        end
      end
    end
    puts ""
    puts files_to_delete.to_s + " file(s) turned to dust."
    puts "Perfectly Balanced. As all things should be."
  end
end
