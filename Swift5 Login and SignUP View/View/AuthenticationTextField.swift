//
//  LoginTextField.swift
//  Swift5 Login and SignUP View
//
//  Created by 平林宏淳 on 2020/09/09.
//  Copyright © 2020 Hiroaki_Hirabayashi. All rights reserved.
//

import UIKit

class AuthenticationTextField: UITextField {
    
    //MARK: - LifeCycle
                              //パスワードを隠すか隠さないか
    init(placeholder: String, isSequredField: Bool? = false) {
        super.init(frame: .zero)
        self.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [.foregroundColor: UIColor.lightGray])
        self.isSecureTextEntry = isSequredField!
        self.textColor = .lightGray
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Helpers
    
    //TextFildにアンダーラインを追加する     
    override func draw(_ rect: CGRect) {
        let border = CALayer()
        border.frame = CGRect(x: rect.origin.x, y: rect.height - 0.75, width: rect.width, height: 0.75)
        border.backgroundColor = UIColor.lightGray.cgColor
        layer.addSublayer(border)
    }
}
