#! /usr/bin/env ruby
require_relative 'game'

game = Game.new
game.start

puts "Playing Rock, Paper, Scissors!"

puts "Rock vs Scissors:"
puts game.play(:rock, :scissors)

puts "Scissors vs Rock:"
puts game.play(:scissors, :rock)

puts "Rock vs Paper:"
puts game.play(:rock, :paper)

puts "Paper vs Rock:"
puts game.play(:paper, :rock)

puts "Scissors vs Paper:"
puts game.play(:scissors, :paper)

puts "Paper vs Scissors:"
puts game.play(:paper, :scissors)

puts "Tie games:"
puts game.play(:rock, :rock)
puts game.play(:paper, :paper)
puts game.play(:scissors, :scissors)
