//
//  AuthenticationController.swift
//  Swift5 Login and SignUP View
//
//  Created by 平林宏淳 on 2020/09/08.
//  Copyright © 2020 Hiroaki_Hirabayashi. All rights reserved.
//

import UIKit

class AuthenticationController: UIViewController {
    
    //MARK: - Properties
    let containerView = UIView()
    let loginView = LoginView()
    let signUpView = SignUpView()
    var showSignUpView = true
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    //MARK: - Action
    
    @objc func toggleView() {
        if showSignUpView {
            UIView.animate(withDuration: 0.5, animations: {
                self.view.frame.origin.y = -self.view.bounds.height + 144
                self.loginView.rightButton.setImage(#imageLiteral(resourceName: "iconfinder_207-User_2124114"), for: .normal)
                self.loginView.leftButton.setImage(#imageLiteral(resourceName: "iconfinder_time_1_6095860"), for: .normal)
                self.loginView.rightButton.contentEdgeInsets = UIEdgeInsets(top: 17, left: 17, bottom: 17, right: 17) //bottonのサイズ
            }) { _ in
                self.loginView.rightButton.isUserInteractionEnabled = false
                self.loginView.leftButton.isUserInteractionEnabled = true
                self.showSignUpView = false
            }
        } else {
            UIView.animate(withDuration: 0.5, animations: {
                self.containerView.frame.origin.y = 0
                self.loginView.rightButton.setImage(#imageLiteral(resourceName: "iconfinder_time_1_6095860"), for: .normal)
                self.loginView.leftButton.setImage(#imageLiteral(resourceName: "iconfinder_user_4172315"), for: .normal)
                self.loginView.rightButton.contentEdgeInsets = UIEdgeInsets(top: 12, left: 12, bottom: 12, right: 12) //bottonのサイズ

            }) { _ in
                self.loginView.rightButton.isUserInteractionEnabled = true
                self.loginView.leftButton.isUserInteractionEnabled = false
                self.showSignUpView = true
            }
        }
                
    }

    //MARK: - Helpers
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
    
    func configureUI() {
        view.backgroundColor = .systemRed
        
        view.addSubview(containerView)
        containerView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height * 2)
        containerView.backgroundColor = .white

        view.addSubview(loginView)
        loginView.frame = CGRect(x: containerView.bounds.origin.x, y: containerView.bounds.origin.y, width: containerView.bounds.width, height: containerView.bounds.height / 2 - 72)
                                                                         //下を少し出す
        
        loginView.rightButton.addTarget(self, action: #selector(toggleView), for: .touchUpInside)
        loginView.leftButton.addTarget(self, action: #selector(toggleView), for: .touchUpInside)
        loginView.leftButton.isUserInteractionEnabled = false
        
        view.addSubview(signUpView)
        signUpView.frame = CGRect(x: containerView.bounds.origin.x, y: containerView.bounds.height / 2, width: containerView.bounds.width, height: containerView.bounds.height / 2 + 72)

    }

}
