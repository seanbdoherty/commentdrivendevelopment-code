//: Comment Driven Development

import UIKit

/*
 Minesweeper example
 
 ? _ _ 1 1 1
 _ _ _ 2 X 2
 _ 1 1 3 X 2
 _ 1 X 2 1 1
 _ 1 1 1 _ _
 
 */
// Bad: Poor naming, no comments
let Max:Int = 3
func checkCompletionBadVariables(val:[[String]]) -> Bool {
    var nusp:Int = 0
    var sc:Bool = false
    var bf:Int = 0
    for x in val {
        for y in x {
            switch y {
            case "X":
                bf += 1
            case "?":
                sc = true
            default:
                nusp += 1
            }
        }
    }
    return bf == Max && !sc
}

//Better: Good Variable Names, still no comments or understanding of intent
let NumBombs:Int = 3
func checkCompletionGoodVariables(board:[[String]]) -> Bool {
    var numUncoveredSpaces:Int = 0
    var hasCoveredSpaces:Bool = false
    var bombsFound:Int = 0
    for row in board {
        for column in row {
            switch column {
            case "X":
                bombsFound += 1
            case "?":
                hasCoveredSpaces = true
            default:
                numUncoveredSpaces += 1
            }
        }
    }
    return bombsFound == NumBombs && !hasCoveredSpaces
}

// This function should let us check if a board is completed and tell the user if it is completed.  A board is complete when all of the bombs are found, and all of the spaces are uncovered.
func checkCompletionCDDWithCode(board:[[String]]) -> Bool {
    // Setup variables to track if spaces are uncovered, and number of bombs found
    
    // For each item in a board, check to see if it is a bomb or uncovered
    
    // If its a bomb, keep track of total number of bombs
    
    // If there are spaces that haven't been uncovered, return false
    
    // If there are more or less bombs than the number of bombs for the level, return false
    
    return false
}


// This function should let us check if a board is completed and tell the user if it is completed.  A board is complete when all of the bombs are found, and all of the spaces are uncovered.
func checkCompletionCDDPreCode(board:[[String]]) -> Bool {
    // Setup variables to track if spaces are uncovered, and number of bombs found
    var hasCoveredSpaces:Bool = false
    var bombsFound:Int = 0
    
    // For each item in a board, check to see if it is a bomb or uncovered
    for row in board {
        for column in row {
            // If its a bomb, keep track of total number of bombs
            if column == "X" {
                bombsFound += 1
            }
            // If there are spaces that haven't been uncovered, return false
            if column == "?" {
                return false
            }
        }
    }
    
    // If there are more or less bombs than the number of bombs for the level, return false
    return bombsFound == NumBombs
}
