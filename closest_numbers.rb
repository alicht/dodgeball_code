#  Closest Numbers (Programming)
#  Sorting is often useful as the first step in many tasks.
#  The most common usage is the ability to find things easier, 
#  but there are also other uses.

#  Challenge
#  Given a list of unsorted numbers, can you find the numbers that have the absolute 
#  smallest difference between them? If there are multiple pairs, find them all.
 
#  Input Format
#  There will be two lines of input:
#   * n-the size of the list
#   * array minus the n numbers of the list

#  Output Format
#  Outputs the pairs of numbers with the smallest difference. If there are multiple
#  pairs, output all of them in ascending order all on the same line (consecutively)
#  with just a single space between each pair of numbers. If there's a number which 
#  lies in two pairs, print it two times (see sample case #3 for explanation).

#  Constraints
#  1 <= n <= 200000
#  -(10(7)) <= x <= (10(7)), where x (?) array
#  array[i] != array[j], O <= i,j < N, and i != j 

#  Sample Input #1
#  (10) -20 -3916237 -357920 -3620601 7374819 -7330761 30 6246457 -6461594 266854
#  Sample Output #1
#  - 20 30
#  Explanation: (30) - (-20) = 50, which is the smallest difference
#  Sample Input #2
#  (12) -20 -3916237 -357920 -3620601 7374819 -7330761 30 6246457 -6461594 266854
#  -520 -470
#  Sample Output #2
#  -520 -470 -20 30
#  Explanation: (-470) - (-520) = 30 - (-20) = 50, which is the smallest difference
#  Sample Input #3
#  (4)5 4 3 2
#  Sample Output #3
#  2 3 3 4 4 5
# Explanation: Here, the minimum difference will be 1. So valid pairs are  
# (2,3) (3,4) (4,5). So we have to print 2 one time, 3 and 4 two times, and 5 one time.

def calculate_min_difference(arr)
  min = arr[1] - arr[0]
  i = 1
  while i < arr.length
    min = [min, arr[i] - arr[i-1]].min
    i = i + 1
  end
  return min
end


def print_min_difference_pairs(unsorted_arr)
  arr = unsorted_arr.sort
  min_differnce = calculate_min_difference(arr)
  output = ""
  i = 1 
  while i < arr.length
    if arr[i] - arr[i-1] == min_difference
      output += "#{arr[i-1]} #{arr[i]} "
  	end
  end
  output
end