#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

inputs = File.read("input").split("\n")

def line_to_command line
  c, v = line.split " "
  return c, v.to_i
end

def part1 lines
  horizontal = 0
  depth = 0
  lines.each do |line|
    command, value = line_to_command line
    case command
    when "forward"
      horizontal += value
    when "up"
      depth -= value
    when "down"
      depth += value
    end
  end
  horizontal * depth
end

def part2 lines
  horizontal = 0
  depth = 0
  aim = 0
  lines.each do |line|
    command, value = line_to_command line
    case command
    when "forward"
      horizontal += value
      depth += aim * value
    when "up"
      aim -= value
    when "down"
      aim += value
    end
  end
  horizontal * depth
end


puts part1(inputs)
puts part2(inputs)

