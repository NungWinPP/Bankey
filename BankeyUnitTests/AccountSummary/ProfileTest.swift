//
//  ProfileTest.swift
//  BankeyUnitTests
//
//  Created by Parinthon Puksuriwong on 6/4/2565 BE.
//

import XCTest

@testable import Bankey

class ProfileTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    func testcanParse() throws {
        let json = """
        {
        "id": "1",
        "first_name": "Kevin",
        "last_name": "Flynn",
        }
        """
        
        let data = json.data(using: .utf8)!
        let result = try! JSONDecoder().decode(Profile.self, from: data)
        
        XCTAssertEqual(result.id, "1")
        XCTAssertEqual(result.firstName, "Kevin")
        XCTAssertEqual(result.lastName, "Flynn")
    }
}
