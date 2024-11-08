//
//  BaseCoordinator.swift
//  OuRecipes
//
//  Created by ENB Mac Mini M1 on 08/11/24.
//

import UIKit

class BaseCoordinator: Coordinator {
    // MARK: Properties

    var childCoordinators: [Coordinator] = []
    var parentCoordinator: Coordinator?
    var navigationController = UINavigationController()

    // MARK: Functions

    func start() { fatalError("Start method must be implemented") }

    func start(coordinator: Coordinator) {
        self.childCoordinators.append(coordinator)

        coordinator.parentCoordinator = self
        coordinator.start()

        dump(self.childCoordinators.description, name: "BaseCoordinator start")
    }

    func didFinish(coordinator: Coordinator) {
        if let index = self.childCoordinators.firstIndex(where: { $0 === coordinator }) {
            self.childCoordinators.remove(at: index)

            dump(self.childCoordinators.description, name: "BaseCoordinator didFinish")
        }
    }
}
