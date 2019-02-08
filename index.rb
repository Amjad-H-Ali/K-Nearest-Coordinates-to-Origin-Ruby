p "K Nearest Point(s) to Origin!"

# Simple function that swaps elements in array
def swap arr, indx1, indx2
	temp = arr[indx1]
	arr[indx1] = arr[indx2]
	arr[indx2] = temp
end	

# Function that will find k amount of coordinates nearest to the origin
=begin
	Params:
		@coor -> the array of coordinates in array 
		@k    -> the amount of coordinates to find nearest to the origin	
=end
def k_nearest_coor coor, k

	# Sort k portion of array in max heap
	(k/2 - 1).downto(0) {|indx| max_heap(coor, indx, k)}
end



# Function that will sort an array into a Max-Heap
=begin
	Params:
		@arr  -> array that will be sorted
		@indx -> index of current parent element in array
		@size -> size of array
=end
def max_heap arr, indx, size

	# Assume largest int is the parent node.
	# Store its index
	largest = indx

	# Initialize left and right children indexes
	left = (indx * 2) + 1

	right = left + 1

	# Formula: a² + b² > a² + b²
	# Reinitialize largest index if left coordinate is further away from the origin
	if left < size and  (arr[left][0]**2 + arr[left][1]**2) > (arr[largest][0]**2 + arr[largest][1]**2)
		largest = left

	# Reinitialize largest index if right coordinate is further away from origin
	if right < size and (arr[right][0]**2 + arr[right][1]**2) > arr[largest][0]**2 + arr[largest][1]**2)
		largest = right

	# Swap largest with parent node in array if parent is not the greatest
	# Repeat for children node using reccursion
	if largest != indx
		swap(arr, largest, indx)

		max_heap(arr, largest, size)
end




