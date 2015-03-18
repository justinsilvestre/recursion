#! usr/bin/eval ruby


def fib(num)
	num > 2 ?	fibs = fib(num-1) << fibs[-1]+fibs[-2] : [0,1]
end

puts fib(ARGV[0].to_i)