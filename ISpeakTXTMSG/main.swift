//
//  main.swift
//  I Speak TXTMSG
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/i-speak-txtmsg.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("I Speak TXTMSG")
print("==============")

// INPUT

// Ask for a phrase
print("Enter phrase> ", terminator: "")
let phrase = readLine()!

// PROCESS AND OUTPUT
// NOTE: Instead of an "if statement" using a different type of Swift structure to handle all the different possible cases...
if phrase == "TA" {
    print("totally awesome")
} else if phrase == "TTYL" {
    print("talk to you later")
    exit(0)
}
