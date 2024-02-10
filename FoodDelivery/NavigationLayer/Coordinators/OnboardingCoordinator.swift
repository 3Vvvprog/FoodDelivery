//
//  OnboardingCoordinator.swift
//  FoodDelivery
//
//  Created by Вячеслав Вовк on 05.02.2024.
//

import UIKit

class OnboardingCoordinator: Coordinator {
    override func start() {
        showOnboarding()
    }
    
    override func finish() {
        finishDelegate?.coordinatorDidFinished(childCoordinator: self)
    }
}

private extension OnboardingCoordinator {
    func showOnboarding() {
        var pages = [UIViewController]()
        let firstVC = OnboardingPartViewController()
        firstVC.imageToShow = UIImage.chicken
        firstVC.titleText = "Delicious Food"
        firstVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
        
        let secondVC = OnboardingPartViewController()
        secondVC.imageToShow = UIImage.shipped
        secondVC.titleText = "Fast Shipping"
        secondVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum rhoncus nulla."
        let thirdVC = OnboardingPartViewController()
        thirdVC.imageToShow = UIImage.medal
        thirdVC.titleText = "Certificate Food"
        thirdVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ultricies mauris a id."
        let fourthVC = OnboardingPartViewController()
        fourthVC.imageToShow = UIImage.creditCard
        fourthVC.titleText = "Payment Online"
        fourthVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui ultricies sit massa."
        pages.append(firstVC)
        pages.append(secondVC)
        pages.append(thirdVC)
        pages.append(fourthVC)
        let presenter = OnboardingViewPresenter(coordinator: self)
        let viewController = OnboardingViewController(pages: pages, viewOutput: presenter)
        navigationController?.pushViewController(viewController, animated: true)
    }
}
