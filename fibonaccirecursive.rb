#! /usr/bin/env ruby


def fib(num)
	if num < 2
		[0,1]
	else
		fibs = fib(num-1)
		fibs << fibs[-1] + fibs[-2]
	end
end

puts fib(ARGV[0].to_i)