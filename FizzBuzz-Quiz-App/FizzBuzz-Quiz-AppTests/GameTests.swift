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
        _ = game.play(move: "1")
        XCTAssertTrue(game.score == 1)
    }
    
    func testOnPlayTwiceScoreIncremented(){
        _ = game.play(move: "1")
        _ = game.play(move: "2")
        XCTAssertTrue(game.score == 2)
    }
    
    func testIfMoveIsRight(){
        game.score = 2
        let result = game.play(move: "Fizz")
        XCTAssertEqual(result, true)
    }
    
    func testIfMoveIsWrong(){
        game.score = 1
        let result = game.play(move: "Fizz")
        XCTAssertEqual(result, false)
        
    }
    
    func testIfMoveToBuzz(){
        game.score = 4
        let result = game.play(move: "Buzz")
        XCTAssertEqual(result, true)
    }
    
    func testIfNotMoveToBuzz(){
        game.score = 3
        let result = game.play(move: "Buzz")
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveToFizzBuzz(){
        game.score = 14
        let result = game.play(move: "FizzBuzz")
        XCTAssertEqual(result, true)
    }
}
