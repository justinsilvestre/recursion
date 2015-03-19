
def merge_sort_rec(nums)
	num_chunks = nums.map { |n| [n] }
	merge_chunks(num_chunks)
end

def merge_chunks(all_chunks)
	return all_chunks[0] unless all_chunks.length > 1
	sorted_chunks = []
	all_chunks.each_slice(2) do |chunks|
		merged_chunks = merge_pair(chunks)
		sorted_chunks << merged_chunks
	end
	merge_chunks(sorted_chunks)
end

def merge_pair(chunks)
	first = chunks[0]
	second = chunks[1]
	return first if second.nil?
	result = []
	until first.empty? && second.empty?
		if first.empty?
			lower_first = second.shift
		elsif second.empty?
			lower_first = first.shift
		elsif first.first < second.first
			lower_first = first.shift
		else
			lower_first = second.shift
		end
		result << lower_first
	end
	result
end

roo = [8,6,4,7,2,3,9,1,4]

p merge_sort_rec roo