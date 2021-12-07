#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require "date"

today = Date.today

if ARGV && ARGV.size == 1
  number = ARGV[0]
else
  firstDay = Date.new(today.year, 12, 01)

  if today.month < 12
    puts "This year’s puzzle is not yetopen!"
    exit(1)
  end

  number = today - firstDay + 1
end

number = number.to_i

num = number.to_s.rjust(2, '0')

folder = "day#{num}"
file = "day#{num}/day#{num}.rb"
inputFile = "day#{num}/input"
exampleFile = "day#{num}/example"

puts "create floder #{folder}"
system("mkdir -p #{folder}")

puts "create file"
system("touch #{file}")


fileContent = "#!/usr/bin/env ruby\n# -*- coding: UTF-8 -*-\n\ninputs = File.read(\"input\").split(\"\\n\")\n\n"

File.open(file, 'w') do |file|
  file.write(fileContent)
end

system("chmod +x #{file}")

puts "create input file"

system("touch #{inputFile}")
system("touch #{exampleFile}")

puts "OK! Solve this puzzle!"
puts "https://adventofcode.com/#{today.year}/day/#{number}"
