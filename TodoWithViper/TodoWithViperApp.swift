//
//  TodoWithViperApp.swift
//  TodoWithViper
//
//  Created by Büşra Gedikoğlu on 1.01.2025.
//

import SwiftUI

@main
struct TodoWithViperApp: App {
    var body: some Scene {
        WindowGroup {
            let interactor = HomeInteractor()
            let router = HomeRouter()
            let presenter = HomePresenter(interactor: interactor, router: router)
            HomeView(presenter: presenter)
        }
    }
}
