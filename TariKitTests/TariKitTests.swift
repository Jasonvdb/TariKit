//
//  TariKitTests.swift
//  TariKitTests
//
//  Created by Jason van den Berg on 2020/06/09.
//  Copyright © 2020 Tari Labs, LLC. All rights reserved.
//

import XCTest
@testable import TariKit

class TariKitTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPrivateKey() {
        //Create priv key from hex, then create hex from that to test ByteVector toString()
        let originalPrivateKeyHex = "6259c39f75e27140a652a5ee8aefb3cf6c1686ef21d27793338d899380e8c801"
        
        do {
            let privateKey = try PrivateKey(hex: originalPrivateKeyHex)
            let (hex, hexError) = privateKey.hex
            if hexError != nil {
                XCTFail(hexError!.localizedDescription)
            }
            
            XCTAssertEqual(hex, originalPrivateKeyHex)
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
