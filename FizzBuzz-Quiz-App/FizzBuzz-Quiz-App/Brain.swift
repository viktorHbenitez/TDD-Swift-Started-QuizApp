//
//  Brain.swift
//  FizzBuzz-Quiz-App
//
//  Created by Victor Hugo Benitez Bosques on 01/12/20.
//

import Foundation

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
    
    
    func check(number: Int) -> String{
        switch true {
        case isDivisibleByFifteen(number: number):
            return "FizzBuzz"
        case isDivisibleByFive(number: number):
            return "Buzz"
        case isDivisibleByThree(number: number):
            return "Fizz"
        default:
            return "\(number)"
        }
    }
    
}
