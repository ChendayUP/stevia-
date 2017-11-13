//
//  ViewController.swift
//  steviaCodeAnalysis
//
//  Created by mac on 2017/11/3.
//  Copyright © 2017年 XMCK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        setupUI()
    }

    let email = UITextField()
    let password = UITextField()
    let login = UIButton()
    let forgot = UILabel()
    
    
    func setupUI() {
        
        view.sv(scrollview)
        scrollview.fillContainer()

        scrollview.sv(contentView)
        contentView.fillContainer()
        //        contentView.width(320)
//        equalWidths(contentView, view)
        contentView.width(UIScreen.main.bounds.size.width)
        
        //        equalHeights(contentView,self)
        
        contentView.sv(
            email.placeholder("Email").style(fieldStyle),
            password.placeholder("Password").style(fieldStyle).style(passwordFieldStyle),
            login.text("Login").style(buttonSytle).tap(loginTapped),
            forgot.text("Forgot ?").style(labelStyle)
        )
        
        contentView.layout(
            100,
            |-email-| ~ 80,
            8,
            |-20-password-20-forgot-| ~ 80,
            10,
            login.size(100).right(10%),
            10
        )
        
        contentView.backgroundColor = .white
        //        password.setContentHuggingPriority(0, for: .horizontal)
        forgot.backgroundColor = .red
    }
    
    lazy var scrollview: UIScrollView = {
        let view = UIScrollView()
        view.backgroundColor = UIColor.blue
        return view
    }()
    
    lazy var contentView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.red
        return view
    }()
    
    func fieldStyle(f:UITextField) {
        f.borderStyle = .roundedRect
        f.font = UIFont(name: "HelveticaNeue-Light", size: 26)
        f.returnKeyType = .next
    }
    
    func passwordFieldStyle(f:UITextField) {
        f.isSecureTextEntry = true
        f.returnKeyType = .done
    }
    
    func buttonSytle(b:UIButton) {
        b.backgroundColor = .lightGray
    }
    
    func labelStyle(l: UILabel) {
        l.textColor = UIColor.blue
    }
    
    func loginTapped() {
        //Do something
    }
    
}

