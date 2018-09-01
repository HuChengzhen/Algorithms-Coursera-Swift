//
//  QuickUnionUFUnitTests.swift
//  UnionFindTests
//
//  Created by 胡诚真 on 2018/9/1.
//  Copyright © 2018 huchengzhen. All rights reserved.
//

import XCTest
@testable import UnionFind

class QuickUnionUFUnitTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInit() {
        let N = 1000
        let uf = QuickUnionUF(N: N)
        for i in 0..<N {
            XCTAssertTrue(uf.id[i] == i)
        }
    }

    func testUnionConnected() {
        let nf = QuickUnionUF(N: 10)
        
        XCTAssertTrue(nf.connected(p: 0, q: 0))
        XCTAssertTrue(nf.connected(p: 9, q: 9))
        XCTAssertFalse(nf.connected(p: 0, q: 9))
        XCTAssertFalse(nf.connected(p: 0, q: 1))
        
        nf.union(p: 1, q: 9)
        XCTAssertTrue(nf.connected(p: 1, q: 9))
        XCTAssertTrue(nf.connected(p: 9, q: 9))
        XCTAssertTrue(nf.connected(p: 1, q: 1))
        XCTAssertFalse(nf.connected(p: 0, q: 8))
        XCTAssertFalse(nf.connected(p: 0, q: 1))
        
        nf.union(p: 2, q: 3)
        XCTAssertTrue(nf.connected(p: 1, q: 9))
        XCTAssertTrue(nf.connected(p: 2, q: 3))
        XCTAssertFalse(nf.connected(p: 0, q: 8))
        XCTAssertFalse(nf.connected(p: 0, q: 1))
        
        nf.union(p: 2, q: 9)
        XCTAssertTrue(nf.connected(p: 2, q: 9))
        XCTAssertTrue(nf.connected(p: 2, q: 3))
        XCTAssertTrue(nf.connected(p: 1, q: 9))
        XCTAssertTrue(nf.connected(p: 1, q: 2))
        XCTAssertTrue(nf.connected(p: 3, q: 9))
        XCTAssertTrue(nf.connected(p: 1, q: 3))
        XCTAssertFalse(nf.connected(p: 0, q: 8))
        XCTAssertFalse(nf.connected(p: 0, q: 1))
        XCTAssertFalse(nf.connected(p: 0, q: 2))
        XCTAssertFalse(nf.connected(p: 0, q: 1))
        XCTAssertFalse(nf.connected(p: 0, q: 8))
        XCTAssertFalse(nf.connected(p: 0, q: 9))
        XCTAssertFalse(nf.connected(p: 0, q: 8))
        XCTAssertFalse(nf.connected(p: 3, q: 4))
    }
}
