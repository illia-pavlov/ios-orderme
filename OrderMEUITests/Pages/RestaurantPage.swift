//
//  RestaurantPage.swift
//  orderMe
//
//  Created by guess on 15.05.2025.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest

class RestaurantPage {
    let app: XCUIApplication

    init(app: XCUIApplication) {
        self.app = app
    }
    
    var detectTableButton: XCUIElement { app.cells["Detect table"].firstMatch }
    var tableNumberTextField: XCUIElement { app.textFields["tableNumberTextField"] }
    var selectTableButton: XCUIElement { app.buttons["Select table"] }
    var callWaiterButton: XCUIElement { app.cells["Call a waiter"].firstMatch }
    var bringMenuButton: XCUIElement { app.buttons["Bring a menu"] }
    var okButton: XCUIElement { app.buttons["OK"] }
    
    func setTableNumber(_ number: String) {
        detectTableButton.tap()
        tableNumberTextField.tap()
        tableNumberTextField.typeText(number)
        selectTableButton.tap()
    }
    
    func bringMenu() {
        callWaiterButton.tap()
        bringMenuButton.tap()
    }
}

