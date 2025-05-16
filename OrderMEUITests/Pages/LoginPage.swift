//
//  LoginPage.swift
//  orderMe
//
//  Created by guess on 15.05.2025.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest

class LoginPage {
    let app: XCUIApplication

    init(app: XCUIApplication) {
        self.app = app
    }

    var loginLaterButton: XCUIElement {
        app.buttons["loginLaterButton"]
    }

    func tapLoginLater() {
        XCTAssertTrue(loginLaterButton.exists, "Login Later button should be present")
        loginLaterButton.tap()
    }
}
