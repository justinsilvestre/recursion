def merge_sort(nums)
	num_chunks = nums.map { |n| [n] }
	p num_chunks
	result = []
	# merging
	(0...nums.length).step(2) do |i|
		puts "====step #{i}===="
		chunk = num_chunks[i]
		next_chunk = num_chunks[i+1]
		if next_chunk.nil?
			puts "only one chunk #{chunk}, nothing to compare"
			merged_chunks = [chunk]
		else
			merged_chunks = []
			until chunk.empty? && next_chunk.empty?
				if next_chunk.empty?
					puts "next chunk is empty"
					lower_first = chunk.shift
				elsif chunk.empty?
					puts "chunk is empty"
					lower_first = next_chunk.shift
				else
					puts "comparing #{chunk} and #{next_chunk}"
					if chunk.first < next_chunk.first
						lower_first = chunk.shift
					else
						lower_first = next_chunk.shift
					end
				end
				puts "the lowest first number of any chunk is #{lower_first}"
				merged_chunks << lower_first
				puts "the combined chunks are #{merged_chunks}"
			end
		end
		result << merged_chunks
	end
	p result
end



roo = [8,6,4,7,2,3,9,1]
merge_sort roo
