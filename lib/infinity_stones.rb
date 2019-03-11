#!/usr/bin/ruby -w
class Infinity_Stones
  def self.snap
    # Find all the files and count them
    total = 0
    dirs = Dir.glob("**/*")
    for i in 0..(dirs.size - 1)
      filename = dirs.at(i)
      next if File.directory?(filename) or filename.include? '.dust'
      total += 1

      # Delete if the total is an odd number
      if total % 2 != 0
        File.write(filename, '')
        File.rename(filename, filename + '.dust')
        puts filename + " turns into dust..."
      end
    end
    puts ""
    puts (total / 2).to_s + " file(s) turned to dust."
    puts "Perfectly Balanced. As all things should be."
  end
end
