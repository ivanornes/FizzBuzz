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
    
    public init() {}
    
    public func process(number: Int) -> String {
        switch (number.isMultiple(of: 3), number.isMultiple(of: 5)) {
        case (false, false): return "\(number)"
        case (false, true): return "Buzz"
        case (true, false): return "Fizz"
        case (true, true): return "FizzBuzz"
        }
    }
}
