//
//  ViewControllerTests.swift
//  FizzBuzz-Quiz-AppTests
//
//  Created by Victor Hugo Benitez Bosques on 12/12/20.
//

import XCTest
@testable import FizzBuzz_Quiz_App

/*
 We will start by testing if the ViewController can play a move, and that the score is incremented
 */
class ViewControllerTests: XCTestCase {
  
  
  var viewController : ViewController!
  
  override func setUp() {
    super.setUp()
    
    let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
    viewController = (storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController)
    //    UIApplication.shared.keyWindow!.rootViewController = viewController
    let _ = viewController.view
  }
  
  func testMove1IncrementsScore(){
    viewController.play(move: .number)
    let newScore = viewController.gameScore
    XCTAssertEqual(newScore, 1)
  }
  
  func testMoveTwiceIncrementsScore(){
    viewController.play(move: .number)
    viewController.play(move: .number)
    let newScore = viewController.gameScore
    XCTAssertEqual(newScore, 2)
  }
  
  func testHasAGame(){
    XCTAssertNotNil(viewController.game)
  }
  
  func testHasNotAGame(){
    viewController.game = nil
    viewController.play(move: .number)
    XCTAssertNil(viewController.game)
  }
  
  func testFizzIncrementScore() {
    viewController.game?.score = 2
    viewController.play(move: .fizz)
    let newScore = viewController.gameScore
    XCTAssertEqual(newScore, 3)
  }
  
  func testBuzzIncrementScore() {
    viewController.game?.score = 4
    viewController.play(move: .buzz)
    let newScore = viewController.gameScore
    XCTAssertEqual(newScore, 5)
  }
  
  func testFizzBuzzIncrementScore() {
    viewController.game?.score = 14
    viewController.play(move: .fizzBuzz)
    let newScore = viewController.gameScore
    XCTAssertEqual(newScore, 15)
  }
  
  
  func testIncorrectMoveNotIncremented(){
    let _ = viewController.play(move: .fizz)
    let newScore = viewController.gameScore
    XCTAssertEqual(newScore, 0)
  }
  
  
  
}
