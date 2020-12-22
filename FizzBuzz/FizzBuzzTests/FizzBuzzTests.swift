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
        return "Fizz"
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
}
