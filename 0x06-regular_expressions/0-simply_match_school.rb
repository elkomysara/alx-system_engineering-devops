#!/usr/bin/env ruby
# This script matches the word "School" in a given string argument

puts ARGV[0].scan(/School/).join
