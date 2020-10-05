//
//  main.swift
//  Shifty Sums
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/shifty-sums.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("Shifty Sums")
print("===========")

// INPUT

// Get the number to be shifted
let n = Int(readLine()!)!

// How many times should we shift?
let k = 3

// PROCESS
func p10(k: Int) -> Int{
    var result: Int = 1
    
    if k>0{
        for _ in 1...k{
            result = result * 10
        }
    }
    return result
}

// Shift the given number "k" number of times
var output = 0
for i in 0...k{
    output += p10(k: i) * n
}

// OUTPUT
print(output)
