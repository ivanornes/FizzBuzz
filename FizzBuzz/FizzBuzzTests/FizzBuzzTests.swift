//
//  FizzBuzzTests.swift
//  FizzBuzzTests
//
//  Created by Ivan Ornes on 22/12/20.
//

import XCTest
@testable import FizzBuzz

struct FizzBuzz {
    func process(number: Int) -> String {
        if number.isMultiple(of: 3) {
            return "Fizz"
        } else {
            return "\(number)"
        }
    }
}

class FizzBuzzTests: XCTestCase {
    func test_process_numberThreeResultIsFizz() {
        let sut = FizzBuzz()
        
        let result = sut.process(number: 3)
        
        XCTAssertEqual(result, "Fizz")
    }
    
    func test_process_numberOneResultIs1() {
        let sut = FizzBuzz()
        
        let result = sut.process(number: 1)
        
        XCTAssertEqual(result, "1")
    }
    
    func test_process_numberFourResultIs4() {
        let sut = FizzBuzz()
        
        let result = sut.process(number: 4)
        
        XCTAssertEqual(result, "4")
    }
}
