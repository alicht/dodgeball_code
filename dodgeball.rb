#  The University of Purim has to select a team of Dodgeball players from its class of 
#  2014. There are N students in the class and each student is identified by his/her 
#  admission number, which lies between 1 and N. The coach has to select K players 
#  out of these N students for his team. But there's a catch! If in the chosen 
#  K players, a player's admission number divides another player's admission number, 
#  then there's a high chance of them getting into a fight. The coach is evil and 
#  wants to ensure that the team consists of at least 1 pair of players who fight 
#  each other. What is the minimum size of K that ensures this?
 
#  Input Format
#  The first line contains the size of the class of 2013, N. 
#  It's guaranteed to be an even number.
 
#  Constraints 
#  2 < 2N < 10(10)
 
 
#  Output Format
#  The minimum size of K that guarantees the existence of 2 players 
#  who fight each other.
 
#  Sample Input #0
#  4
#  Sample Output #0
#  3
#  Sample Input #1
#  2
#  Sample Output #1
#  2
 
 
# Explanation #0
# When K = {1,2,3}, 1 & 2 and 1 & 3 can fight with each other
# When K = {1,3,4}, 1 & 3 and 1 & 4 can fight with each other
# When K = {2,3,4}, 2 & 4 can fight with each other
 
# Explanation #1
# When K = {1,2}, 1& 2 can fight with each other



def prime?(i)
  return false  if i == 0 || i == 1
  return true if i == 2 || i == 3
  return false if i % 2 == 0 || i % 3 == 0 
 	
  j = 5
  while j*j <= i
    return false if i % j == 0
    j = j + 2
  end
 
  return true
end


# this is just an example to see if our the prime function we wrote works
# (1..10**5).to_a.each do |num|
# puts "Failed for #{num}" if Prime.prime?(num) != prime?(num)
# end


def number_of_primes_lesser_than(n)
  num_primes = 0
  
  [1..n].each do |num|
    num_primes = num_primes + 1 if prime?(num)
  end
  
  return num_primes
end

def minK(n)
  return  number_of_primes_lesser_than(n) + 1
end