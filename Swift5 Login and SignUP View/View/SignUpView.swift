//
//  SignUpView.swift
//  Swift5 Login and SignUP View
//
//  Created by 平林宏淳 on 2020/09/11.
//  Copyright © 2020 Hiroaki_Hirabayashi. All rights reserved.
//

import UIKit

class SignUpView: UIView {
    
    //MARK: - Properties
    
    let titlelLabel: UILabel = {
        let label = UILabel()
        label.text = "サインアップ画面"
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.textColor = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
        return label
    }()
    
    let userNameLabel = AuthenticationLabel(text: "お名前", textColor: #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1))
    let emailLabel = AuthenticationLabel(text: "emailアドレス", textColor: #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1))
    let passwordLabel = AuthenticationLabel(text: "パスワード", textColor: #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1))
    let userNameTextField = AuthenticationTextField(placeholder: "お名前を入力してください")
    let emailTextField = AuthenticationTextField(placeholder: "emailアドレスを入力してください")
    let passwordTextField = AuthenticationTextField(placeholder: "パスワードを入力してください", isSequredField: true)
    
    let signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("サインアップ", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        button.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.backgroundColor = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
        return button
    }()

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
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
       
        addSubview(titlelLabel)
        //コードでAutoLayout
        titlelLabel.translatesAutoresizingMaskIntoConstraints = false
        titlelLabel.topAnchor.constraint(equalTo: topAnchor, constant: 72).isActive = true
        titlelLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        
        
        let stack = UIStackView(arrangedSubviews: [
            userNameLabel,
            userNameTextField,
            emailLabel,
            emailTextField,
            passwordLabel,
            passwordTextField])
        //stackViewを横()にするか縦(Vertical)にするか
        stack.axis = .vertical
        //Labelたちの隙間の間隔
        stack.spacing = 24
       
        addSubview(stack)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.topAnchor.constraint(equalTo: titlelLabel.bottomAnchor, constant: 30).isActive = true
        stack.leftAnchor.constraint(equalTo: leftAnchor, constant: 24).isActive = true
        stack.rightAnchor.constraint(equalTo: rightAnchor, constant: -24).isActive = true
        
        addSubview(signUpButton)
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        signUpButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
        signUpButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        signUpButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        signUpButton.topAnchor.constraint(equalTo: stack.bottomAnchor, constant: 30).isActive = true
        signUpButton.layer.cornerRadius = 40 / 2
 
    }
}
