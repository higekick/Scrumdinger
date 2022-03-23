//
//  ScrumdingerTests.swift
//  ScrumdingerTests
//
//  Created by hige on 2022/02/21.
//

import XCTest
@testable import Scrumdinger

class ScrumdingerTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let someStructureBylet = SomeStructure() // struct SomeStructure { var value }
        //someStructureBylet.value = "change" // errorが起きる　->  Cannot assign to property: 'someStructreBylet' is a 'let' constant
        
        let someClassBylet = SomeClass() // class SomeClass { var value }
        someClassBylet.value = "change" // OK
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    let myClosure = { (s1: String, s2: String) -> Bool in
        return s1 > s2
    }
    
    let myClosure2 = { (s1: String, s2: String) -> Bool in
        let s3 = s1 + s2
        return s1 > s2
    }
}

struct SomeStructure {
    var value = ""
}

class SomeClass {
    var value = ""
}
