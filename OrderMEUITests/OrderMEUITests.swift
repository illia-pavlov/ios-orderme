//
//  OrderMEUITests.swift
//  OrderMEUITests
//
//  Created by guess on 14.05.2025.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest

final class OrderMEUITests: XCTestCase {
    
    let pages = PageManager.shared
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        pages.app.launch()
    }
    

    func testSetTableNumber() throws {
        pages.login.tapLoginLater()
        pages.home.tapRestaurant(name: "Ocean Seafood")
        pages.restaurant.setTableNumber("3")
    }
    
    func testLoginAndSelectRestaurant() throws {
        pages.login.tapLoginLater()
        XCTAssertTrue(pages.app.buttons["Home"].exists, "Home screen should appear after tapping Login Later")

        pages.home.tapRestaurant(name: "Ocean Seafood")
        XCTAssertTrue(pages.restaurant.detectTableButton.exists, "Restaurant page should load")
    }
    
    func testBringMenu() throws {
        pages.login.tapLoginLater()
        pages.home.tapRestaurant(name: "Burger")
        pages.restaurant.setTableNumber("5")
        pages.restaurant.bringMenu()
    
        XCTAssert(pages.restaurant.okButton.waitForExistence(timeout: 2), "Button is not present")
    }

}
