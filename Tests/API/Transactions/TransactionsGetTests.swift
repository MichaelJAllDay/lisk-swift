//
//  TransactionsGetTests.swift
//  LiskTests
//
//  Created by Andrew Barba on 1/2/18.
//

import XCTest
@testable import Lisk

class TransactionsGetTests: LiskTestCase {

    func testMainnetGet() {
        let id = "10861152394901264352"
        let transactions = Transactions(client: mainNetClient)
        let response = tryRequest { transactions.transaction(id: id, completionHandler: $0) }
        XCTAssert(response.success)
        XCTAssertEqual(response.transaction.id, id)
    }
}
