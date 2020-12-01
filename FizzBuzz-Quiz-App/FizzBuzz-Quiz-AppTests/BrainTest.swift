//
//  BrainTest.swift
//  FizzBuzz-Quiz-AppTests
//
//  Created by Victor Hugo Benitez Bosques on 01/12/20.
//

import XCTest

@testable import FizzBuzz_Quiz_App
class BrainTest: XCTestCase {

    // Our app can tell if a number is divisible by three
    func testGiveNumberIsDivisibleByThree(){
        let brain = Brain()  // SUT = System Under Test

        // act or when
        let result = brain.isDivisibleByThree(number: 3)
        XCTAssertEqual(result, true)
    }
    
    func testGivenNumberIsNotDivisibleByThree(){
        let brain = Brain()
        
        let result = brain.isDivisibleByThree(number: 1)
        XCTAssertEqual(result, false)
    }

}
