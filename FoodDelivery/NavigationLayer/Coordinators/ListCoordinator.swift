//
//  ListCoordinator.swift
//  FoodDelivery
//
//  Created Вячеслав Вовк on 06.02.2024.
//  Copyright © 2024 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ListCoordinator: Coordinator {
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .yellow
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func finish() {
        print("AppCoordinator finish")
    }
}
