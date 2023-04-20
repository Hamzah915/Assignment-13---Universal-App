//
//  TableViewUITests.swift
//  UniversalAppUITests
//
//  Created by Hamzah Azam on 20/04/2023.
//

import XCTest

final class TableViewUITests: XCTestCase {
    
    var app: XCUIApplication!

    override func setUpWithError() throws {
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testButtonExists() throws{
        let tableViewButton = app.buttons["TableView"]
        XCTAssertTrue(tableViewButton.exists)
        tableViewButton.tap()
    }
    
    func testTableViewExists() throws{
        let tableView = app
    }
    
    func testTableCellExists() throws{
        
    }
    
    func testBackButtonExists() throws{
        let backButton = app.buttons["Back"]
        XCTAssertTrue(backButton.exists)
        backButton.tap()
    }

    func  testSomeflow() throws {
        
        app/*@START_MENU_TOKEN@*/.staticTexts["TableView"]/*[[".buttons[\"TableView\"].staticTexts[\"TableView\"]",".staticTexts[\"TableView\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.tables/*@START_MENU_TOKEN@*/.staticTexts["iPhone 9"]/*[[".cells.staticTexts[\"iPhone 9\"]",".staticTexts[\"iPhone 9\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["UniversalApp.DetailsView"].buttons["Back"].tap()
        app.navigationBars["UniversalApp.TableView"].buttons["Back"].tap()
                        
        
    }
    
    


    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
