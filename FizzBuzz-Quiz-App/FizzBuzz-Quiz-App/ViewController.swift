//
//  ViewController.swift
//  FizzBuzz-Quiz-App
//
//  Created by Victor Hugo Benitez Bosques on 30/11/20.
//

import UIKit

class ViewController: UIViewController {
  
  var game: Game?
  
  var gameScore: Int?{
    didSet{
      numberButton.setTitle("\(gameScore ?? 0)", for: .normal)
    }
  }
  
  
  @IBOutlet private weak var numberButton: UIButton!
  @IBOutlet private weak var fizzButton: UIButton!
  @IBOutlet private weak var buzzButton: UIButton!
  @IBOutlet private weak var fizzBuzzButton: UIButton!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    game = Game()
    
    guard let game = game else {return }
    gameScore = game.score
  }
  
  func play(move: Move){
    guard let unwrappedGame = game else {
      print("Game is nil")
      return
    }
    let response = unwrappedGame.play(move: move)
    gameScore = response.score
  }
  
  @IBAction func buttonTapped(_ sender: UIButton) {
    
    switch sender {
    case numberButton:
      play(move: .number)
    case fizzButton:
      play(move: .fizz)
    case buzzButton:
      play(move: .buzz)
    case fizzBuzzButton:
      play(move: .fizzBuzz)
    default:
      print("Invalid selected")
    }
  }
  
}

