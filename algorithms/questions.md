# 1. Implement merge sort. What's the bigO and why?

def merge_sort(array)
  if array.length == 1
    array
  else
    arr1 = array[0..array.length/2-1]
    arr2 = array[array.length/2..array.length]
    merge(merge_sort(arr1), merge_sort(arr2))
  end
end

def merge(left, right)
  sorted = []
  until left.empty? || right.empty? do
    if left.first < right.first
      sorted.push(left.shift)
    else
      sorted.push(right.shift)
    end
  end
  sorted.concat(left).concat(right)
end

#BIG O
# In my notes I have that the Big O of a merge sort is n log n, which I think is because at each level of the merge-sort the number of elements being sorted is halved, so the decrease is exponential.  Not sure if I can explain it better than that...or if that's really right.  I'm just glad I got the merge-sort itself to work. :)


# 2. Write a method to reverse a string. (Hint: You cannot use reverse method)

def reverse(string)
  if string.length == 1
    string[0]
  else
    newstring = string[-1] + reverse(string[0..string.length-2])
  end
end

# 3. Write a method to see if string is a palindrome

def is_palindrome?(string)
  rev = reverse(string)
  string == rev ? true : false
end
#I'm assuming this is okay...otherwise you'd just paste the code above for reverse where the "rev" variable is defined and compare string to newstring.

# 4. Given the root note in a sorted binary search tree, how do you find the smallest element?
#I'm pretty sure the smallest element would essentially be the left-most on the tree, even if it's not the lowest down. Since smaller elements always get added to the left of whichever node they are being compared to, the left-most node will be the smallest in a sorted binary tree.
