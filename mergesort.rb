=begin
def merge_sort(nums, lvl=1)
	l = nums.length
	if l > lvl
		merge_sort(nums[0..l/2]) + merge_sort(nums[l/2..l])
	else
		nums.each_with_index do |n, i|
			if i < nums.length
				if n > nums[i+1]
					n, nums[i+1] = nums[i+1], n
				else

			end
		end
	end
end
=end

def split(nums)
	l = nums.length
	if l > 2
		h1 = nums[0...l/2]
		h2 = nums[l/2..l]
		[split(h1), split(h2)]
	else
		nums
	end
end

def merge(nums)
	if nums == 
end

roo = [8,6,4,7,2,3,9,1]
p split roo
p merge split roo