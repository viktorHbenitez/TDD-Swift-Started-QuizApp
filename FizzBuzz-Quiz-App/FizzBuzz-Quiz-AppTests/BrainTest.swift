//
//  BrainTest.swift
//  FizzBuzz-Quiz-AppTests
//
//  Created by Victor Hugo Benitez Bosques on 01/12/20.
//

import XCTest

/*
 Note: The important of TDDis learning to love failing test and warnings
 */

@testable import FizzBuzz_Quiz_App
class BrainTest: XCTestCase {

    // SUT = System Under Test
    let brain = Brain()
    
    // Test Case: Our first Test that our ap can tell if a number is divisible by three
    func testGiveNumberIsDivisibleByThree(){
        let result = brain.isDivisibleByThree(number: 3)
        XCTAssertEqual(result, true)
    }
    
    func testGivenNumberIsNotDivisibleByThree(){
        let result = brain.isDivisibleByThree(number: 1)
        XCTAssertEqual(result, false)
    }
    
    func testGivenNumberIsDivisibleByFive(){
        let result = brain.isDivisibleByFive(number: 5)
        XCTAssertEqual(result, true)
    }
    
    func testGivenInNotDivisibleByFive(){
        let result = brain.isDivisibleByFive(number: 3)
        XCTAssertEqual(result, false)
    }
    
    func testGivenIsDivisibleByFifteen(){
        let result = brain.isDivisibleByFifteen(number: 15)
        XCTAssertEqual(result, true)
    }
    
    func testGivenNumberIsDivisibleByFifteen(){
        let result = brain.isDivisibleByFifteen(number: 3)
        XCTAssertEqual(result, false)
    }
    
    func testSayNothingReturnNumber(){
        let result = brain.check(number: 1)
      XCTAssertEqual(result, .number)
    }
    
    func testSayNothingReturnOtherNumber(){
        let result = brain.check(number: -1)
      XCTAssertEqual(result, .number
      )
    }
    
    func testSayFizz(){
        let result = brain.check(number: 3)
      XCTAssertEqual(result, Move.fizz)
    }
    
    func testSayBuzz(){
        let result = brain.check(number: 5)
      XCTAssertEqual(result, Move.buzz)
    }
    
    func testSayFizzBuzz(){
        let result = brain.check(number: 15)
      XCTAssertEqual(result, Move.fizzBuzz)
    }

}

