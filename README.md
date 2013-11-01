# Sorting Algorithms Mixin

## Bubble sort

- Look at the first two items in the list.
- If the first item is greater, then swap the items.
- Now compare the second and third items in the same way.
- Continue doing this until you get to the end of the list - 1.
- Repeat the whole process n times (where n is the length of your list).

## Selection sort

- Take an item in the list and walk up the array checking each element.
- If the item is larger, leave it. If it is smaller, walk back down shifting all larger elements up until it becomes the larger element.

## Merge sort

- Divide the unordered list in half recursively until we have sublists containing 1 element each.
- Repeatedly merge the sublists back together again.

## Heap sort

- A heap is a binary tree that is ordered so that each parent node is larger than its two child nodes.
- A heap is constructed from all the elements in the list.
- Simply put, we can sort the elements by repeatedly moving the largest element of the heap and putting it at the end of the ordered list.

## Quick sort

- Select an element close to the middle (called the pivot element).
- Put all elements that are less than or equal to that element to the left.
- Put all elements which are greater to its right.
- Recursively call this method on the sublists.