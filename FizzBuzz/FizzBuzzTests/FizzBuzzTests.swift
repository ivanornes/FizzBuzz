//
//  FizzBuzzTests.swift
//  FizzBuzzTests
//
//  Created by Ivan Ornes on 22/12/20.
//

import XCTest
@testable import FizzBuzz

struct FizzBuzz {
    
    func range(startingAt number: Int, limit: Int) -> String {
        return (number...limit).reduce("", { $0 + "\($1)" })
    }
    
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
        let sut = FizzBuzz()
        
        let result = sut.range(startingAt: 1, limit: 10)
        
        XCTAssertEqual(result, "12345678910")
    }
    
    func test_range_returnsTheNumbersFrom5To15() {
        let sut = FizzBuzz()
        
        let result = sut.range(startingAt: 5, limit: 15)
        
        XCTAssertEqual(result, "56789101112131415")
    }
    
    func test_range_returnsTheNumbersFromMinus5ToPlus5() {
        let sut = FizzBuzz()
        
        let result = sut.range(startingAt: -5, limit: 5)
        
        XCTAssertEqual(result, "-5-4-3-2-1012345")
    }
    
    func test_range_returnsTheNumbersFrom1To100() {
        let sut = FizzBuzz()
        
        let result = sut.range(startingAt: 1, limit: 100)
        
        var expectedResult = ""
        for i in 1...100 {
            expectedResult += "\(i)"
        }
        XCTAssertEqual(result, expectedResult)
    }
    
    func test_processRage_returnsAStringFrom1To5() {
        let sut = FizzBuzz()
        
        let result = sut.range(startingAt: 1, limit: 5)
                        .compactMap { char -> String? in
                            guard let number = Int("\(char)") else { return nil }
                            return sut.process(number: number)
                        }.joined()
        
        XCTAssertEqual(result, "12Fizz4Buzz")
    }
}
