//
//  ViewController.swift
//  FoodDelivery
//
//  Created by Вячеслав Вовк on 05.02.2024.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = AppColors.lightGray
        
        let label = UILabel()
        label.text = "Hello world!"
        
        view.addSubview(label)
        
        label.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(200)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        
        label.font = .Roboto.thin.size(of: 40)
        label.textColor = AppColors.accentOrange
    }


}

