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
            if number.isMultiple(of: 5) {
                return "FizzBuzz"
            }
            return "Fizz"
        } else if number.isMultiple(of: 5) {
            return "Buzz"
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
    
    func test_process_numberFiveResultIsBuzz() {
        let sut = FizzBuzz()
        
        let result = sut.process(number: 5)
        
        XCTAssertEqual(result, "Buzz")
    }

    func test_process_numberFourteenResultIs14() {
        let sut = FizzBuzz()
        
        let result = sut.process(number: 14)
        
        XCTAssertEqual(result, "14")
    }
    
    func test_process_numberFifteenResultIsFizzBuzz() {
        let sut = FizzBuzz()
        
        let result = sut.process(number: 15)
        
        XCTAssertEqual(result, "FizzBuzz")
    }
    
    func test_process_numberSixteenResultIs16() {
        let sut = FizzBuzz()
        
        let result = sut.process(number: 16)
        
        XCTAssertEqual(result, "16")
    }
}
