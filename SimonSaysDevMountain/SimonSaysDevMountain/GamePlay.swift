//
//  GamePlay.swift
//  SimonSaysDevMountain
//
//  Created by Kelly Johnson on 8/8/18.
//  Copyright © 2018 DunDak, LLC. All rights reserved.
//

import Foundation

class GamePlay {
    
    // user moves array
    private var userMoves: [Int] = []
    
    // correct moves array
    private(set) var correctMoves: [Int] = []
    
    enum Move {
        case correctAndContinue
        case correctAndNewRound
        case incorrect
    }
    
    // function userSelected value -> Move
    func userSelected(_ value: Int) -> Move {
        
        userMoves.append(value)
        
        if correctMoves.count == userMoves.count {
            if correctMoves == userMoves {
                print("Correct! User got all the moves correct.  Time to move to next round.")
                createNextRound()
                return Move.correctAndNewRound
            } else {
                print("Incorrect")
                return Move.incorrect
            }
        } else {
            // user is in mid-game
            for number in 0..<userMoves.count {
                if correctMoves[number] != userMoves[number] {
                    print("Incorrect")
                    return Move.incorrect
                }
            }
            
            print("All moves so far are correct")
            return Move.correctAndContinue
        }
    }
    
    // function create next round
    func createNextRound() {
        correctMoves.append(pickRandomNumberBetween0And3())
        userMoves = []
        print("create the next round")
        print("here's the right moves: \(correctMoves)")
    }
    
    // function start new game
    func startNewGame() {
        correctMoves = [pickRandomNumberBetween0And3(), pickRandomNumberBetween0And3(), pickRandomNumberBetween0And3()]
        userMoves = []
        
        print("here's the right moves: \(correctMoves)")
    }
    
    // function to pick random number 0-3
    private func pickRandomNumberBetween0And3() -> Int {
        // create random number from 0 up to but not including number passed in... in this case 0-3
        return Int(arc4random_uniform(4))
    }
    
    
    
}


































