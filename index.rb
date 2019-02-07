p "K Nearest Point(s) to Origin!"

# Function that will sort an array into a Max-Heap
=begin
	Params:
		@arr -> array that will be sorted
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

	# Reinitialize largest index if left is greater
	if left < size and  arr[left] > arr[largest]
		largest = left

	# Reinitialize largest index if right is greater 
	if right < size and arr[right] > arr[largest]
		largest = right

	# Swap largest with parent node in array if parent is not the greatest
	# Repeat for children node using reccursion
	if largest != indx
		swap(arr, largest, indx)

		max_heap(arr, largest, size)
				



