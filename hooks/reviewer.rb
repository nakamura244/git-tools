#!/usr/bin/env ruby


diff_files = `git diff \`git show-branch --merge-base master HEAD\` HEAD --name-only`

authors = {}

diff_files.each_line do |file|
    file.chomp!
    if File.exist?(file) then
        `git blame #{file}`.each_line do |line|
           if line =~/\((.+) [0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2} [+\-][0-9]{4} [0-9]+\)/ then
               key = $1.strip
               if authors.key?(key) then
                   authors[key] = authors[key] + 1
               else
                   authors[key] = 1
               end
           end
        end
    end
end

authors.sort_by{|key,val| -val}.each do | key,value |
    puts "author:#{key}...#{value}pt"
end
