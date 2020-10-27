//
//  main.swift
//  TheCellSell
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/the-cell-sell.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation


func get_price(daytime:Int, evening:Int, weekend:Int) -> String{
    var a = 0
    var b = 0
    var resultString = ""
    
    if daytime > 100{
        a += (daytime - 100) * 25
    }
    
    a += evening * 15
    a += weekend * 20
    
    if daytime > 250{
        b += (daytime - 250) * 45
    }
    
    b += evening * 35
    b += weekend * 25
    
    resultString += "Plan A costs \(a)\n"
    resultString += "Plan B costs \(b)\n"
    
    if a < b{
        resultString += "Plan A is cheapest."
    
    }else if a == b{
        resultString += "Plans A and B are the same price."
    
    }else {
        resultString += "Plan B is the cheapest."
    }
    
    return resultString
}
