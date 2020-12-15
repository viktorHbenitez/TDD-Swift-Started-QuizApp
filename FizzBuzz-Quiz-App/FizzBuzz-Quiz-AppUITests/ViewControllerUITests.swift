//
//  ViewControllerUITests.swift
//  FizzBuzz-Quiz-AppUITests
//
//  Created by Victor Hugo Benitez Bosques on 12/12/20.
//

import XCTest

class ViewControllerUITests: XCTestCase {
  
  override func setUp() {
    continueAfterFailure = false
    XCUIApplication().launch()
  }
  
  func testTapNumberButtonIncrementsScore(){
    let button = XCUIApplication().buttons["numberButton"]
    button.tap()
    let newScore = button.label
    XCTAssertEqual(newScore, "1")
  }
  
  func testTapNumberTwiceIncrementesScoreTwice(){
    let button = XCUIApplication().buttons["numberButton"]
    button.tap()
    button.tap()
    let newScore = button.label
    XCTAssertEqual(newScore, "2")
  }
  
  func testTapFizzButtonIncrementScore3(){
    let numberButton = XCUIApplication().buttons["numberButton"]
    let fizzButton = XCUIApplication().buttons["fizzButton"]
    
    numberButton.tap()
    numberButton.tap()
    fizzButton.tap()
    
    let newScore = numberButton.label
    XCTAssertEqual(newScore, "3")
    
  }
  
  func testTapBuzzButtonIncrementedScoreTo5(){
    let numberButton = XCUIApplication().buttons["numberButton"]
    let fizzButton = XCUIApplication().buttons["fizzButton"]
    let buzzButton = XCUIApplication().buttons["buzzButton"]
    
    numberButton.tap()
    numberButton.tap()
    fizzButton.tap()
    numberButton.tap()
    buzzButton.tap()
    
    let newScore = numberButton.label
    
    XCTAssertEqual(newScore, "5")
  }
  
  
  
  func testTappFizzBuzzButtonIncrementedScoreTo15(){
    let numberButton = XCUIApplication().buttons["numberButton"]
    let fizzButton = XCUIApplication().buttons["fizzButton"]
    let buzzButton = XCUIApplication().buttons["buzzButton"]
    
    numberButton.tap()
    numberButton.tap()
    fizzButton.tap()
    numberButton.tap()
    buzzButton.tap()
    
    let newScore = numberButton.label
    
    XCTAssertEqual(newScore, "5")
    
  }
  
  func testTapFizzBuzzButtoIncrementedTo15(){
    let app = XCUIApplication()
    let numberButton = app.buttons["numberButton"]
    let fizzbuzzButton = app.buttons["fizzBuzzButton"]
    
    playTo14()
    
    fizzbuzzButton.tap()
    let newScore = numberButton.label
    XCTAssertEqual(newScore, "15")
    
  }
  
  
  func playTo14(){
    let numberButton = XCUIApplication().buttons["numberButton"]
    let fizzButton = XCUIApplication().buttons["fizzButton"]
    let buzzButton = XCUIApplication().buttons["buzzButton"]

    numberButton.tap()
    numberButton.tap()
    fizzButton.tap()
    numberButton.tap()
    buzzButton.tap()
    fizzButton.tap()
    numberButton.tap()
    numberButton.tap()
    fizzButton.tap()
    buzzButton.tap()
    numberButton.tap()
    fizzButton.tap()
    numberButton.tap()
    numberButton.tap()
  }
  
}
