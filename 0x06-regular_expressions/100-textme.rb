#!/usr/bin/env ruby
# This script extracts sender, receiver, and flags from a TextMe app log message

log = ARGV[0]
sender = log.match(/\[from:(.*?)\]/)[1]
receiver = log.match(/\[to:(.*?)\]/)[1]
flags = log.match(/\[flags:(.*?)\]/)[1]

puts "#{sender},#{receiver},#{flags}"
