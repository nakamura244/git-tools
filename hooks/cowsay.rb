#!/usr/bin/env ruby

cowsay_list = (`cowsay -l`).split[4..-1]
puts cowsay_list.sample

