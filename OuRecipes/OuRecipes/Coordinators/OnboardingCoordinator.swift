//
//  OnboardingCoordinator.swift
//  OuRecipes
//
//  Created by ENB Mac Mini M1 on 08/11/24.
//

import Foundation

class OnboardingCoordinator: BaseCoordinator {
    // MARK: Lifecycle

    override init() {}

    // MARK: Overridden Functions

    override func start() {
        let viewController = OnboardingViewController.generateController()
        guard let onboardingViewController = viewController as? OnboardingViewController else { return }

        self.navigationController.viewControllers = [onboardingViewController]
    }
}
