//
//  window_shopperTests.swift
//  window-shopperTests
//
//  Created by Yann Debain on 25/12/2017.
//  Copyright © 2017 Debain Yann. All rights reserved.
//

import XCTest
@testable import window_shopper

class window_shopperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testGetHours() {
        XCTAssert(Wage.getHours(forWage: 25, andPrice: 100) == 4)
        XCTAssert(Wage.getHours(forWage: 15.50, andPrice: 250.53) == 17)
    }
    
}