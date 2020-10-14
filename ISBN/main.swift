//
//  main.swift
//  ISBN
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/speeding-is-not-fine.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("ISBN")
print("====")

// INPUT

// Set the first 10 digits
let first10Digits = "9780921418"

// Set the sum of just the first 10 digits, which are always 9780921418
// TODO: Use puzzle description to determine how much to subtract.
let first10DigitsSum = 120 - 0

// Ask for the 11th digit
print("Digit 11? ", terminator: "")
let digit11 = Int(readLine()!)!

let digit12 = 7

let digit13 = 9

// PROCESS & OUTPUT

// Finish calculating the sum including the 11th, 12th, and 13th digits of the ISBN number

// Print the 1-3 sum for the entire 13-digit ISBN number

// Determine whether this entire ISBN number is valid,
// using the special property of an ISBN number (see puzzle description).
// HINT: Review the arithmetic operators tutorial from the Swift Fundamentals.
//       https://www.hackingwithswift.com/sixty/3/1/arithmetic-operators
