//
//  main.swift
//  MagicSquares
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/magic-squares.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("Magic Squares")
print("=============")

// INPUT

// Create an empty array to store each row of numbers
// NOTE: Each row will itself be an array, effectively creating a two-dimensional array.
var numbers: [[String]] = []

// Ask for the first row of numbers
// NOTE: This is provided as a String
for _ in 0...3{
    let line1 = readLine()!
    
    // Now split the first row of numbers using the space character as a delimiter, and then place the resulting array in the 2D array of numbers
    // NOTE: Set a breakpoint and use the debugger to see what the "numbers" array contains at this point
    if line1.components(separatedBy: " ").count != 4{
        print("ERROR Need 4 components to complete, no space bar at the end")
        exit(1)
    }
    
    numbers.append(line1.components(separatedBy: " "))
}

for row in 0...3{
    var count:Int = 0
    for column in 0...3{
        count += Int(numbers[row][column]) ?? 0
    }
    if count != 34{
        print("Not Magic Square")
        exit(0)
    }
}

for column in 0...3{
    var count:Int = 0
    for row in 0...3{
        count += Int(numbers[row][column]) ?? 0
    }
    if count != 34{
        print("Not Magic Square")
        exit(0)
    }
}

print("Magic Sqaure")
