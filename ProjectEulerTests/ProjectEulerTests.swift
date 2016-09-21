//
//  ProjectEulerTests.swift
//  ProjectEulerTests
//
//  Created by Rodney Sampson on 9/21/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

import XCTest
import ProjectEuler

class ProjectEulerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testQuestionOne() {
        let result = questionOne()
        let expected = 233168
        XCTAssertEqual(result, expected)
    }
    
}
