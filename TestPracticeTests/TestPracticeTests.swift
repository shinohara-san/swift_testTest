//
//  TestPracticeTests.swift
//  TestPracticeTests
//
//  Created by Yuki Shinohara on 2020/06/29.
//  Copyright © 2020 Yuki Shinohara. All rights reserved.
//

import XCTest
@testable import TestPractice //ないとsquare()やMathStuffにアクセスできない

class TestPracticeTests: XCTestCase {
    
    func testSquare(){
        let num = 3
        let result = num.square()
        XCTAssertEqual(result, 9)
    }

    func testAdd(){
        let math = MathStuff()
        let result = math.addInt(x: 1, y: 2)
        XCTAssertEqual(result, 3)
    }
    
    func testMultiply(){
        let math = MathStuff()
        let result = math.multiplyInt(x: 1, y: 2)
//        XCTAssertEqual(result, 3)
        XCTAssertEqual(result, 2)
    }
    
    func testDivide(){
        let math = MathStuff()
        let result = math.divideInt(x: 2, y: 2)
        XCTAssertEqual(result, 1)
    }
    
    func testHelloWorld(){
        var hw:String?
        XCTAssertNil(hw)
        
        hw = "Hello world"
//        XCTAssertEqual(hw, "Hello world1")
        XCTAssertEqual(hw, "Hello world")
    }
}
