def merge_sort(nums)
	num_chunks = nums.map { |n| [n] }
	p num_chunks
	result = []
	# merging
	while num_chunks.length > 1
		puts "there are still at least two chunks"
		(0...num_chunks.length).step(2) do |i|
			puts "====step #{i}===="
			chunk = num_chunks[i]
			next_chunk = num_chunks[i+1]
			puts "comparing #{chunk} and #{next_chunk}"
			if next_chunk.nil?
				puts "only one chunk #{chunk}, nothing to compare"
				merged_chunks = [chunk]
			elsif chunk.nil?
				puts "only one chunk #{next_chunk}, nothing to compare"
				merged_chunks = [next_chunk]
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
					num_chunks[i] = merged_chunks
					num_chunks[i+1] = []
					puts "the combined chunks are #{merged_chunks}"
				end
			p num_chunks
			num_chunks.select! {|n| !(n.empty?) }
		end
		result << merged_chunks
		p result
		p num_chunks
	end
	end
	p result
end



roo = [8,6,4,7,2,3,9,1]
merge_sort roo
