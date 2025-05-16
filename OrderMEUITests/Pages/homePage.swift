//
//  HomePage.swift
//  orderMe
//
//  Created by guess on 15.05.2025.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest

class HomePage {
    let app: XCUIApplication

    init(app: XCUIApplication) {
        self.app = app
    }

    func tapRestaurant(name: String) {
            app.staticTexts[name].tap()
        }
}
