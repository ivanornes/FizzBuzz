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
        // Given
        let sut = FizzBuzz()
        
        // When
        let result = sut.process(number: 3)
        
        // Then
        XCTAssertEqual(result, "Fizz")
    }
    
    func test_process_numberOneResultIs1() {
        let sut = FizzBuzz()
        
        let result = sut.process(number: 1)
        
        XCTAssertEqual(result, "1")
    }
}
