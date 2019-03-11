#!/usr/bin/ruby -w
# puts Dir["**/*"].length

class Infinity_Stones
  def self.snap
    dirs = Dir.glob("**/*")
    total = 0
    for i in 0..(dirs.size - 1)
      next if File.directory?(dirs.at(i))
      puts dirs.at(i)
      total += 1
      # puts File.directory?(dirs.at(i))
    end
    puts "Found " + total + " files"
  end
end
