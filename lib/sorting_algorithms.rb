module SortingAlgorithms
  
  def bubble_sort(list)
    list.each_index do |i|
      (list.length - i - 1).times do |job|
        if list[job] > list[job + 1]
        list[job], list[job + 1] = list[job + 1], list[job]
        end
      end
    end
  end
  
  def insertion_sort(list)
    (1..list.length - 1).each do |i|
      value = list[i]
      j = i - 1
      while j >= 0 && list[j] > value do
        list[j + 1] = list[j]
        j -= 1
      end
      list[j + 1] = value
    end
    list
  end
  
  def merge_sort(list)
    return list if list.size < 2
    left = list[0, list.length/2]
    right = list[list.length/2, list.length]

    merge(merge_sort(left), merge_sort(right))
  end

  def merge(left, right)
    sorted_list = []
    until left.empty? || right.empty?
      sorted_list << (left[0] <= right[0] ? left.shift : right.shift)
    end
    sorted_list.concat(left).concat(right)
    p sorted_list
  end
  
  def heap_sort (list)
    sl = []
    heap = build_heap(list)
    heap.size.times do
      sl << heap.shift
      heap = heapify(heap, 0)
    end
    sl.reverse
  end

  def left(i)
    ((i+1)*2)-1
  end

  def right(i)
    (i+1)*2
  end

  def heapify(h, root)
    max = root
    l, r = left(root), right(root)
    if ( l < h.size && h[l] > h[max])
      max = l
    end
    if ( r < h.size && h[r] > h[max])
      max = r
    end
    if( root != max)
      h[root], h[max] = h[max], h[root]
      return heapify(h, max)
    else
      return h
    end
  end

  def build_heap(list)
    heap = list.clone
    (((heap.size)-1)/2).downto(0) do |e|
      heap = heapify(heap, e)
    end
    heap
  end
  
  def quick_sort(list)
    sl = list.clone
    return sl if sl.size <= 1
    pivot = sl.pop
    left, right = sl.partition { |e| e < pivot }
    quick_sort(left) + [pivot] + quick_sort(right)
  end
end