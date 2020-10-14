//
//  main.swift
//  Speeding Is Not Fine
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/speeding-is-not-fine.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("Speeding Is Not Fine")
print("====================")

// INPUT

// Ask for the speed limit
print("What is the speed limit, in km/h? ", terminator: "")
let limit = Int(readLine()!)!

let speed = 45

// PROCESS AND OUTPUT

// See whether the driver is within the speed limit, and if they are not, see how much they are above the limit.
if speed < limit {
    print("Congratulations, you are within the speed limit!")
} else {
    print("You are speeding.")
}
