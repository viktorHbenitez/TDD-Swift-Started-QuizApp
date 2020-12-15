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
  
  func play(move: Move) -> (right: Bool, score: Int){
    let result = brainGame.check(number: score + 1)
    
    if result == move{
      score += 1
      return (true, score)
    }
    return (false, score)
  }
  
}


