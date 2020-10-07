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
let phrases =  [["CU", "see you"],
                [":-)", "I’m happy"],
                [":-(", "I’m unhappy"],
                [";-)", "wink"],
                [":-P", "stick out my tongue"],
                ["(˜.˜)", "sleepy"],
                ["TA","totally awesome"],
                ["CCC", "Canadian Cheese Champion"],
                ["CUZ","because"],
                ["TY", "thank-you"],
                ["YW", "you’re welcome"],
                ["TTYL","talk to you later"]]

func exists(element: String ,list: [[String]]) -> (state:Bool, index:Int){
    var result = false
    var indexs = 0
    
    for i in list{
        indexs += 1
        if i[0] == element{
            result = true
            break
        }
    }
    return (state: result, index: indexs)
}

while true{
    print("Enter phrase> ", terminator: "")
    let phrase = readLine()!
    
    // PROCESS AND OUTPUT
    // NOTE: Instead of an "if statement" using a different type of Swift structure to handle all the different possible cases...
    let result = exists(element: phrase, list: phrases)
    
    if result.state{
        print(phrases[result.index - 1][1])
    
    }else if phrase == "TTYL"{
        print("talk to you later")
        break
    
    }else{
        print(phrase)
    }
}
