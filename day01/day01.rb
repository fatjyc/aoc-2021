#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

inputs = File.read("input").split("\n").map(&:to_i)

def part1 lines
  lines.each_cons(2).count { _2 > _1 }
end

def part2 lines
  arr = lines.each_cons(3).map(&:sum)
  part1 arr
end


puts part1(inputs)
puts part2(inputs)

