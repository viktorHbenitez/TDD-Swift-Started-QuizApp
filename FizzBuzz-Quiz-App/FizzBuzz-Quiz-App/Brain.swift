//
//  Brain.swift
//  FizzBuzz-Quiz-App
//
//  Created by Victor Hugo Benitez Bosques on 01/12/20.
//

import Foundation

struct Brain {
    
    func isDivisibleByThree(number: Int) -> Bool{
        return number % 3 == 0
    }
    
    func isDivisibleByFive(number: Int) -> Bool{
        return number % 5 == 0
    }
    
    func isDivisibleByFifteen(number: Int) -> Bool {
        return number % 15 == 0
    }
}
