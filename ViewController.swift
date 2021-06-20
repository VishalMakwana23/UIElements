//
//  ViewController.swift
//  UIElements
//
//  Created by DCS on 19/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let logo_img:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "logo.jpg")
        return imageView
    }()
    
    private let login_btn:UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.addTarget(self, action: #selector(loginClick), for: .touchUpInside)
        button.backgroundColor = .gray
        button.layer.cornerRadius = 25
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    private let register_btn:UIButton = {
        let button = UIButton()
        button.setTitle("Register", for: .normal)
        button.addTarget(self, action: #selector(RegisterClick), for: .touchUpInside)
        button.backgroundColor = .gray
        button.layer.cornerRadius = 25
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("run")
        //view.addSubview(logo_img)
        view.addSubview(login_btn)
        view.addSubview(register_btn)
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg4.jpg")
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        logo_img.frame = CGRect(x: 20, y: 110, width: view.width - 40, height: 200)
        login_btn.frame = CGRect(x: 20, y: logo_img.bottom + 170, width: (view.width-40), height: 40)
        register_btn.frame = CGRect(x: 20, y: login_btn.bottom + 20, width: (view.width-40), height: 40)
    }
    
    @objc func loginClick(){
        
        let lv = loginVC()
        navigationController?.pushViewController(lv, animated: true)
    }
    @objc func RegisterClick(){
        
        let rv = registerVC()
        navigationController?.pushViewController(rv, animated: true)
    }


}

