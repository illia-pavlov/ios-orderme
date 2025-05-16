//
//  PageManager.swift
//  orderMe
//
//  Created by guess on 15.05.2025.
//  Copyright © 2025 Boris Gurtovoy. All rights reserved.
//

import XCTest

class PageManager {
    let app = XCUIApplication()

    lazy var login = LoginPage(app: app)
    lazy var home = HomePage(app: app)
    lazy var restaurant = RestaurantPage(app: app)

    static let shared = PageManager()
    private init() {}
}
