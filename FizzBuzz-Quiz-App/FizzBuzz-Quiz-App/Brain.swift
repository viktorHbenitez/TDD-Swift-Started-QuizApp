//
//  Brain.swift
//  FizzBuzz-Quiz-App
//
//  Created by Victor Hugo Benitez Bosques on 01/12/20.
//

import Foundation

/*
 We had built the brain of out app. which could check if a number was divisible by 3 or 5, and say either Fizz, Buzz, FizzBuzz or just return the number
 */
struct Brain {
    
    func isDivisibleByThree(number: Int) -> Bool{
        return isDivisibleBy(number: number, divNumber: 3)
    }
    
    func isDivisibleByFive(number: Int) -> Bool{
        return isDivisibleBy(number: number
                             , divNumber: 5)
    }
    
    func isDivisibleByFifteen(number: Int) -> Bool {
        return isDivisibleBy(number: number, divNumber: 15)
    }
    
    func isDivisibleBy(number: Int, divNumber: Int) -> Bool {
        return number % divNumber == 0
    }
    
    
    func check(number: Int) -> Move{
        switch true {
        case isDivisibleByFifteen(number: number):
          return Move.fizzBuzz
        case isDivisibleByFive(number: number):
          return Move.buzz
        case isDivisibleByThree(number: number):
          return Move.fizz
        default:
          return Move.number
        }
    }
    
}

