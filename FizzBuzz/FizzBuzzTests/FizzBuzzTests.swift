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
        return number.isMultiple(of: 3) ?
               (number.isMultiple(of: 5) ? "FizzBuzz": "Fizz") :
                number.isMultiple(of: 5) ? "Buzz" : "\(number)"
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
    
    func test_range_returnsTheNumbersFrom1To10() {
        let result = 1...10
        
        XCTAssertEqual(Array(result), [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    }
    
    func test_range_returnsTheNumbersFrom5To15() {
        let result = 5...15
        
        XCTAssertEqual(Array(result), [5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15])
    }
    
    func test_range_returnsTheNumbersFromMinus5ToPlus5() {
        let result = -5...5
        
        XCTAssertEqual(Array(result), [-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5])
    }
    
    func test_range_returnsTheNumbersFrom1To100() {
        let result = 1...100
        
        var expectedResult: [Int] = []
        for i in 1...100 {
            expectedResult.append(i)
        }
        XCTAssertEqual(Array(result), expectedResult)
    }
    
    func test_processRage_returnsAStringFrom1To5() {
        let sut = FizzBuzz()
        
        let result = (1...5).map { sut.process(number: $0) }.joined()
        
        XCTAssertEqual(result, "12Fizz4Buzz")
    }
}
