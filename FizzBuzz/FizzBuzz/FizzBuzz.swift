//
//  FizzBuzz.swift
//  FizzBuzz
//
//  Created by Ivan Ornes on 22/12/20.
//

import Foundation

public protocol FizzBuzzable {
    func process(number: Int) -> String
}

public struct FizzBuzz: FizzBuzzable {
    public func process(number: Int) -> String {
        return number.isMultiple(of: 3) ?
               (number.isMultiple(of: 5) ? "FizzBuzz": "Fizz") :
                number.isMultiple(of: 5) ? "Buzz" : "\(number)"
    }
}
