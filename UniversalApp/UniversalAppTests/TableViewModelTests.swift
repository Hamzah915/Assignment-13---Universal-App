//
//  TableViewModelTests.swift
//  UniversalAppTests
//
//  Created by Hamzah Azam on 19/04/2023.
//

import XCTest
@testable import UniversalApp

final class TableViewModelTests: XCTestCase {
    
    var tableViewModel: TableViewModel!

    override func setUpWithError() throws {
        tableViewModel = TableViewModel(anyManager: NetworkManager())
    }

    override func tearDownWithError() throws {
        tableViewModel = nil
    }

    func testGetDataForProducts() throws{
        tableViewModel = TableViewModel(anyManager: NetworkManager())
        tableViewModel.getDataUsingClosures(url: "https://dummyjson.com/products")
        
        let expectation = expectation(description: "Getting the list of products")
        let waitDuration = 2.0
        DispatchQueue.main.asyncAfter(deadline: .now() + waitDuration){
            XCTAssertEqual(self.tableViewModel.item?.products.count, 30)
            
            guard let PRODUCT = self.tableViewModel.item?.products.first else {return}
            XCTAssertEqual(PRODUCT.title, "iPhone 9")
            XCTAssertEqual(PRODUCT.id, 1)
            XCTAssertEqual(PRODUCT.price, 549)
            XCTAssertEqual(PRODUCT.stock, 94)
            XCTAssertEqual(PRODUCT.rating, 4.69)

            expectation.fulfill()
        }
        wait(for: [expectation], timeout: waitDuration)

    }
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
