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
    
    let emailLabel = AuthenticationLabel(text: "emailアドレス", textColor: .white)
    let passwordLabel = AuthenticationLabel(text: "パスワード", textColor: .white)
    let emailTextField = AuthenticationTextField(placeholder: "emailアドレスを入力してください")
    let passwordTextField = AuthenticationTextField(placeholder: "パスワードを入力してください", isSequredField: true)
    
    let loginBotton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("ログイン", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        button.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.backgroundColor = #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)
        return button
    }()
    
    let leftButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "iconfinder_user_4172315").withRenderingMode(.alwaysTemplate), for: .normal)
        button.tintColor = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.contentEdgeInsets = UIEdgeInsets(top: 12, left: 12, bottom: 12, right: 12) //bottonのサイズ
        return button
    }()
    
    let rightButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "iconfinder_time_1_6095860").withRenderingMode(.alwaysTemplate), for: .normal)
        button.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.backgroundColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
        button.contentEdgeInsets = UIEdgeInsets(top: 12, left: 12, bottom: 12, right: 12) //bottonのサイズ
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
        backgroundColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
       
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
        
        addSubview(loginBotton)
        loginBotton.translatesAutoresizingMaskIntoConstraints = false
        loginBotton.heightAnchor.constraint(equalToConstant: 48).isActive = true
        loginBotton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        loginBotton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        loginBotton.topAnchor.constraint(equalTo: stack.bottomAnchor, constant: 30).isActive = true
        loginBotton.layer.cornerRadius = 40 / 2
        
        addSubview(rightButton)
        rightButton.translatesAutoresizingMaskIntoConstraints = false
        rightButton.heightAnchor.constraint(equalToConstant: 64).isActive = true
        rightButton.widthAnchor.constraint(equalToConstant: 64).isActive = true
        rightButton.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        rightButton.topAnchor.constraint(equalTo: bottomAnchor, constant: -32).isActive = true
        rightButton.layer.cornerRadius = 64 / 2

        addSubview(leftButton)
        leftButton.translatesAutoresizingMaskIntoConstraints = false
        leftButton.heightAnchor.constraint(equalToConstant: 64).isActive = true
        leftButton.widthAnchor.constraint(equalToConstant: 64).isActive = true
        leftButton.rightAnchor.constraint(equalTo: rightButton.leftAnchor).isActive = true
        leftButton.topAnchor.constraint(equalTo: bottomAnchor, constant: -32).isActive = true
        leftButton.layer.cornerRadius = 64 / 2

    }
}
