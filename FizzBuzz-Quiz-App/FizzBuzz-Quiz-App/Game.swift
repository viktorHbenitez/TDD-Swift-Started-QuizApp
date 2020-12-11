//
//  Game.swift
//  FizzBuzz-Quiz-App
//
//  Created by Victor Hugo Benitez Bosques on 11/12/20.
//

import Foundation


class Game{
    
    var score: Int
    var brainGame: Brain
    
    init(_ brain: Brain = Brain(), _ score: Int = 0){
        self.score = score
        self.brainGame = brain
    }
    
    func play(move: String) -> Bool{
        score += 1
        
        let result = brainGame.check(number: score)
        
        if result == move{
            return true
        }
        
        return false
    }
    
}
    
   
