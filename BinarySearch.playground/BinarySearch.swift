//: Playground - noun: a place where people can play

import UIKit
let arr = [1,2,3,4,5,6]

// Linear search is O(n) since we go through the array
func linearSearch(searchValue: Int, array: [Int]) -> Bool {
    for num in array {
        if num == searchValue {
            return true
        }
    }
    return false
}

// BinarySearch performs in O(log(n)) since we are going through half of the array for each iteration of the loop
func binarySearch(searchValue: Int, array: [Int]) -> Bool{
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex {
        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = array[middleIndex]
        
        if middleValue == searchValue {
            return true
        }
		
	// Ignore right half if searchValue is smaller
        if searchValue < middleValue {
            rightIndex = middleIndex - 1
        }
			
	// Ignore left half if searchValue is greater
        else {
            leftIndex = middleIndex + 1
        }
    }
    return false
}

print(linearSearch(searchValue: 4, array: arr))
print(binarySearch(searchValue: 1, array: arr))
