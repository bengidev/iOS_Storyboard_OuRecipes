//
//  AppCoordinator.swift
//  OuRecipes
//
//  Created by ENB Mac Mini M1 on 08/11/24.
//

import UIKit

class AppCoordinator: BaseCoordinator {
    // MARK: Properties

    private var window: UIWindow

    // MARK: Lifecycle

    init(window: UIWindow) {
        self.window = window
    }

    // MARK: Overridden Functions

    override func start() {
        self.navigationController.navigationBar.isHidden = true

        self.window.rootViewController = self.navigationController
        self.window.makeKeyAndVisible()

        // TODO: here you could check if user is signed in and show appropriate screen
        let coordinator = OnboardingCoordinator()
        coordinator.navigationController = self.navigationController

        self.start(coordinator: coordinator)
    }
}
