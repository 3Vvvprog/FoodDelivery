//
//  OnboardingCoordinator.swift
//  FoodDelivery
//
//  Created by Вячеслав Вовк on 05.02.2024.
//

import UIKit

class OnboardingCoordinator: Coordinator {
    private let factory = SceneFactory.self
    
    override func start() {
        showOnboarding()
    }
    
    override func finish() {
        finishDelegate?.coordinatorDidFinished(childCoordinator: self)
    }
}

private extension OnboardingCoordinator {
    func showOnboarding() {
        let viewController = factory.makeOnboardingScene(coordinator: self)
        navigationController?.pushViewController(viewController, animated: true)
    }
}
