//
//  Main.swift
//
//
//  Created by Vincent He on 2020-11-09.
//

import Foundation

let ALIVE_CELL = 1
let DEADE_CELL = 0

class Windows {
    func print_state(state: [[Int]]){
        print("================")
        for row in state{
            print(row)
        }
    }
}

func neighbors_count (row:Int, column:Int, state:[[Int]]) -> Int{
    let neighbors = [
        [row , column - 1],
        [row + 1, column - 1],
        [row + 1, column],
        [row + 1, column + 1],
        [row , column + 1],
        [row - 1, column + 1],
        [row - 1, column],
        [row - 1, column - 1],
    ]
    
    var count = 0
    for point in neighbors{
        if point[0] >= 0 && point[0] <= state.count - 1 && point[1] >= 0 && point[1] <= state[row].count - 1{ // Preventing index out of range error
            if state[point[0]][point[1]] == ALIVE_CELL{ // If a point has a cell that is alive
                count += 1
            }
            
        }
    }
    return count
    
}


func alive_or_dead(row:Int, column:Int, state:[[Int]]) -> Bool{
    let n_count = neighbors_count(row: row, column: column, state: state)

    
    if state[row][column] == ALIVE_CELL{
        if n_count <= 1 {
            return false

        } else if n_count == 2 ||  n_count == 3 { // More than 4 than die
            return true
        
        } else {
            return false
        }
    }
    
    if state[row][column] == DEADE_CELL{
        if n_count == 3 {
            return true
        } else {
            return false
        }
    }
  
    print("WARNING SOMETHING WAS GONE WRONG")
    return false
}

func update_state(state:[[Int]]) -> [[Int]]{
    // Return a bool if the game is over ( no cell alive)
    var updated_state = state

    for row in 0..<state.count{
      
        for column in 0..<state[row].count{
            // Checking if there is a neighbors
          
            if alive_or_dead(row:row, column: column, state: state){ // True is alive
                updated_state[row][column] = ALIVE_CELL
            }else{
                updated_state[row][column] = DEADE_CELL

            }
        }
        
    }
    
    return updated_state
}

var win = Windows()
var dead:Bool = false
var state = [
    [0, 0, 0, 0, 0],
    [0, 1, 1, 1, 0],
    [0, 1, 0, 0, 0],
    [0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0]
]
var new_state = [[Int]]()

while !dead{
    new_state = update_state(state: state)
    state = new_state
    win.print_state(state: state)
    
}
