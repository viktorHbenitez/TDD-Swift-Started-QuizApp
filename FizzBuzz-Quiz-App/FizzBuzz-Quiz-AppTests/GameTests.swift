//
//  GameTests.swift
//  FizzBuzz-Quiz-AppTests
//
//  Created by Victor Hugo Benitez Bosques on 11/12/20.
//

import XCTest
@testable import FizzBuzz_Quiz_App
/*
 This will be responsable for keeping track of the player's score (how high they have counted), and checking the player's move with the Brain  to see if the player is right or wrong
 */
class GameTests: XCTestCase {
  
  let game = Game()
  
  func testGameStartAtZero(){
    let result = game.score
    XCTAssertTrue(result == 0)
  }
  
  func testOnPlayScoreIncremented(){
    _ = game.play(move: .number)
    XCTAssertTrue(game.score == 1)
  }
  
  func testOnPlayTwiceScoreIncremented(){
    _ = game.play(move: .number)
    _ = game.play(move: .number)
    XCTAssertTrue(game.score == 2)
  }
  
  func testIfMoveIsRight(){
    game.score = 2
    let response = game.play(move: .fizz)
    let result = response.right
    XCTAssertEqual(result, true)
  }
  
  func testIfMoveIsWrong(){
    game.score = 1
    let response = game.play(move: .fizz)
    let result = response.right
    XCTAssertEqual(result, false)
    
  }
  
  func testIfMoveToBuzz(){
    game.score = 4
    let response = game.play(move: .buzz)
    let result = response.right
    XCTAssertEqual(result, true)
  }
  
  func testIfNotMoveToBuzz(){
    game.score = 3
    let response = game.play(move: .buzz)
    let result = response.right
    XCTAssertEqual(result, false)
  }
  
  func testIfMoveToFizzBuzz(){
    game.score = 14
    let response = game.play(move: .fizzBuzz)
    let result = response.right
    XCTAssertEqual(result, true)
  }
  
  func testIfNotToFizzBuzz(){
    game.score = 1
    let response = game.play(move: .fizzBuzz)
    let result = response.right
    XCTAssertEqual(result, false)
  }
  
  func testIfMoveToNumber(){
    game.score = 1
    let response = game.play(move: .number)
    let result = response.right
    XCTAssertEqual(result, true)
  }
  
  func testIfNotMoveToNumber(){
    game.score = 2
    let response = game.play(move: .number) // return Fizz
    let result = response.right
    XCTAssertEqual(result, false)
  }
  
  func testIfMoveWrongScoreNotIncremented(){
    game.score = 1
    _ = game.play(move: .fizz)
    XCTAssertEqual(game.score, 1)
  }
  
  func testPlayShouldReturnIfMoveRight(){
    let response = game.play(move: .number)
    XCTAssertNotNil(response.right)
  }
  
  func testPlayShouldReturNewScore(){
    let response = game.play(move: .number)
    XCTAssertNotNil(response.score)
  }
  
}
