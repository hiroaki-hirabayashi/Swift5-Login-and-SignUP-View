//
//  LoginLabel.swift
//  Swift5 Login and SignUP View
//
//  Created by 平林宏淳 on 2020/09/09.
//  Copyright © 2020 Hiroaki_Hirabayashi. All rights reserved.
//

import UIKit

class AuthenticationLabel: UILabel {
    
    //MARK: - LifeCycle
    
    init(text: String, textColor: UIColor) {
        super.init(frame: .zero)
        self.text = text
        self.textColor = textColor
        self.font = UIFont.systemFont(ofSize: 24)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
