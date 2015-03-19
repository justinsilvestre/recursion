
def merge_sort_rec(nums)
	num_chunks = nums.map { |n| [n] }
	merge_chunks(num_chunks)
end

def merge_chunks(all_chunks)
	return all_chunks[0] unless all_chunks.length > 1
	sorted_chunks = []
	all_chunks.each_slice(2) do |chunks|
		merged_chunks = merge_pair(chunks[0], chunks[1])
		sorted_chunks << merged_chunks
	end
	merge_chunks(sorted_chunks)
end

def merge_pair(a, b)
	return a if b.nil?
	result = []
	until a.empty? && b.empty?
		if a.empty?
			lower_first = b.shift
		elsif b.empty?
			lower_first = a.shift
		elsif a.first < b.first
			lower_first = a.shift
		else
			lower_first = b.shift
		end
		result << lower_first
	end
	result
end

roo = [8,6,4,7,2,3,9,1,4]

p merge_sort_rec roo

def ms(a)
	l = a.length
	if l < 2
		a
	else
		m(ms(a[0...l/2]), ms(a[l/2..-1]))
	end
end

def m(a, b)
	return b if a.empty?
	return a if b.empty?
	a.first < b.first ? [a.first] + m(a[1..-1], b) : [b.first] + m(a, b[1..-1])
end

p ms(roo)