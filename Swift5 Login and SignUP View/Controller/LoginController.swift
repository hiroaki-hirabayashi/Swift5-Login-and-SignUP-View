//
//  LoginController.swift
//  Swift5 Login and SignUP View
//
//  Created by 平林宏淳 on 2020/09/08.
//  Copyright © 2020 Hiroaki_Hirabayashi. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    //MARK: - Properties
    let containerView = UIView()
    let loginView = LoginView()
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    //MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = .systemRed
        
        view.addSubview(containerView)
        containerView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height * 2)
        containerView.backgroundColor = .white

        view.addSubview(loginView)
        loginView.frame = CGRect(x: containerView.bounds.origin.x, y: containerView.bounds.origin.y, width: containerView.bounds.width, height: containerView.bounds.height)
    }

}
