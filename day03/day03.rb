#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

inputs = File.read("input").split("\n").map(&:chars)

def part1 lines
  strs = lines.transpose.map do |line|
    line.tally.max_by(&:last).first
  end
  gamma = strs.join.to_i 2
  epsilon = strs.map do |s|
    if s == "1"
      "0"
    else
      "1"
    end
  end.join.to_i 2
  gamma * epsilon
end

def find_num lines, index, num

end

def part2 lines

end


puts part1(inputs)

