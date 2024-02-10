//
//  UserStorage.swift
//  FoodDelivery
//
//  Created by Вячеслав Вовк on 10.02.2024.
//

import Foundation

class UserStorage {
    static let shared = UserStorage()
     
    var passedOnboarding: Bool {
        get { UserDefaults.standard.bool(forKey: "passedOnboarding") }
        
        set { UserDefaults.standard.set(newValue, forKey: "passedOnboarding") }
    }
}
