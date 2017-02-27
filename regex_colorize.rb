#!/usr/bin/ruby
# encoding: UTF-8
# coding: UTF-8

if RUBY_VERSION =~ /1.9/
    Encoding.default_external = Encoding::UTF_8
    Encoding.default_internal = Encoding::UTF_8
end

#Uber simway to colorize outputin
class String
	def color(c)
		colors = {
			:black        => 0,
			:red          => 1,
			:green        => 2,
      :bright_green => 10,
			:yellow       => 3,
			:blue         => 4,
			:magenta      => 5,
			:cyan         => 6,
			:white        => 7,
      :grey         => 243
		}

		return "\e[38;5;#{colors[c] || c}m#{self}\e[0m"
	end
end

ARGF.each_with_index do |line, count|
	line.gsub!(%r{(^.+)\s(\d{2}:\d{2})}, "#{'\\1'.color(:blue)} #{"\\2".color(:red)}")
	line.gsub!(%r{(\<.+\>)(.+)}, "#{'\\1'.color(:magenta)} #{"\\2".color(:white)}")
  line.gsub!(%r{(-!-)(.+)}, "#{'\\1'.color(:grey)} #{'\\2'.color(:grey)}")
  line.gsub!(%r{(gypsydave5)}, "#{'\\1'.color(:bright_green)}")
	print "#{line}"
end