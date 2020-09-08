//
//  LoginView.swift
//  Swift5 Login and SignUP View
//
//  Created by 平林宏淳 on 2020/09/08.
//  Copyright © 2020 Hiroaki_Hirabayashi. All rights reserved.
//

import UIKit

class LoginView: UIView {
    //MARK: - Properties
    
    let titlelLabel: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return label
    }()
    
    let emailLabel = AuthenticationLabel(text: "email", textColor: .white)
    let passwordLabel = AuthenticationLabel(text: "password", textColor: .white)
    let emailTextField = AuthenticationTextField(placeholder: "アドレスを入力してください")
    let passwordTextField = AuthenticationTextField(placeholder: "パスワードを入力してください", isSequredField: true)

    
    //MARK: - LifeCycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    //MARK: - Helpers
    
    func configureUI() {
        backgroundColor = #colorLiteral(red: 0.5738074183, green: 0.5655357838, blue: 0, alpha: 1)
       
        addSubview(titlelLabel)
        //コードでAutoLayout
        titlelLabel.translatesAutoresizingMaskIntoConstraints = false
        titlelLabel.topAnchor.constraint(equalTo: topAnchor, constant: 72).isActive = true
        titlelLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        
        
        let stack = UIStackView(arrangedSubviews: [emailLabel, emailTextField, passwordLabel, passwordTextField])
        //stackViewを横()にするか縦(Vertical)にするか
        stack.axis = .vertical
        //Labelたちの隙間の間隔
        stack.spacing = 24
       
        addSubview(stack)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.topAnchor.constraint(equalTo: titlelLabel.bottomAnchor, constant: 30).isActive = true
        stack.leftAnchor.constraint(equalTo: leftAnchor, constant: 24).isActive = true
        stack.rightAnchor.constraint(equalTo: rightAnchor, constant: -24).isActive = true
    }
}
