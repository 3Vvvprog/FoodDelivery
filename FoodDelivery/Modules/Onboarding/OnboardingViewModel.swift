//
//  OnboardingViewModel.swift
//  FoodDelivery
//
//  Created Вячеслав Вовк on 06.02.2024.
//  Copyright © 2024 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol OnboardingViewModelDelegate: AnyObject {
    func reloadData()
    func fetchData()
}

class OnboardingViewModel {
    
    init() {
        
    }
}

extension OnboardingViewModel: OnboardingViewModelDelegate {
    func reloadData() {
        
    }
    
    func fetchData() {
    }
}
