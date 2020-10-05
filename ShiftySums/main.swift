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

// Shift the given number "k" number of times
var output = n
output += n * 10
output += n * 10 * 10
output += n * 10 * 10 * 10

// OUTPUT
print(output)
