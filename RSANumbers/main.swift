//
//  main.swift
//  RSA Numbers
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/rsa-numbers.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("RSA Numbers")
print("===========")

// INPUT

// Get lower limit of range
print("Enter lower limit of range")
let lower = Int(readLine()!)!

// Get upper limit of range
print("Enter upper limit of range")
let upper = Int(readLine()!)!

// PROCESS

// Count the number of divisors in the given Number
func divisorCount(of givenNumber: Int) -> Int {
    
    // 1 is always a divisor
    var divisorCount = 1
    
    // Start looping from 2
    for i in 2...givenNumber {
        
        // What is the remainder?
        let remainder = givenNumber % i
        
        // DEBUG output...
//        print("\(givenNumber) \\ \(i) has a remainder of \(remainder)")

        // TODO: Add some code here... we need to keep track of how many divisors there are
        if remainder == 0 {
            divisorCount += 1
        }
        
    }
    
    // Return the count of divisors
    return divisorCount
    
}

// How many divisors does a number have?
var rsa = [Int]()
for i in lower...upper{
    // Making sure that the code does not kill itselef
    if i > 2{
        if 4 == divisorCount(of: i){
            rsa.append(i)
        }
    }
}

print("The number of RSA numbers between \(lower) and \(upper): \(String(rsa.count))")
for num in ras{
    print("\(num) is a ras number")
}
