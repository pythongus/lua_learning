-- Classic Quick Sort Algorithm

quicksort = {}

function quicksort.quicksort(array)
  qsort(array, 1, #array)
  return array
end

function qsort(array, lo, hi)
  if lo < hi then
    local pi = partition(array, lo, hi)
    qsort(array, lo, pi - 1)
    qsort(array, pi + 1, hi)
  end
end

function partition(array, lo, hi)
  local pivot = array[hi]
  local i = lo - 1
  for j = lo, hi do
    if array[j] < pivot then
      i = i + 1
      swap(array, i, j)
    end
  end
  swap(array, i + 1, hi) 
  return i + 1
end

function swap(array, first, second)
  array[first], array[second] = array[second], array[first]
end

return quicksort
