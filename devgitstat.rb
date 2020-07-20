require "git_fame"

class Statistic < GitFame::Base

  def printer
  rhash = Hash.new   
    data = (to_csv[36..-1]).split("\n")
    data.map do |line|
      temparr = String.new(line).split(',')
      rhash["#{temparr[0]}"] = temparr[1] 
    end
    rhash
  end

end

path = ARGV[0] #you also can enter path to directory from command line, just use arguments 

unless(path)
  puts 'Enter path to a git directory, if devgitstat.rb run into git directory - enter empty line'
  path = STDIN.gets.chomp
  unless (path)
    path = "." 
  end
end

begin 
fame = Statistic.new({
  repository: path,
})

puts fame.printer

rescue GitFame::Error => error
  puts "Could not run because #{File.expand_path(path)} is not a git repository!"
end
