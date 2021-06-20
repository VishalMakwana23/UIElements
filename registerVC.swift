//
//  registerVC.swift
//  UIElements
//
//  Created by DCS on 19/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class registerVC: UIViewController {

    private let userlogo_img : UIImageView = {
        let user = UIImageView()
        user.contentMode = .scaleAspectFit
        user.image = UIImage(named: "man")
        return user
    }()
    
    private let register_lbl : UILabel = {
        let reg = UILabel()
        reg.text = "Register!!"
        reg.textColor = .white
        reg.textAlignment = .center
        reg.font = UIFont(name: "HelveticaNeue-Bold", size: 16.0)
        return reg
        
    }()
    
    private let username_lbl : UILabel = {
        let welcome = UILabel()
        welcome.text = "Username:"
        welcome.textColor = .white
        welcome.textAlignment = .center
        welcome.shadowColor = .darkGray
        return welcome
    }()
    
    private let username_txt: UITextField = {
        let psw = UITextField()
        psw.borderStyle = .roundedRect
        //text.backgroundColor = .systemFill
        psw.textAlignment = .center
        psw.textColor = .black
        psw.placeholder = "Enter Username"
        return psw
        
    } ()
    
    
    private let password_lbl : UILabel = {
        let welcome = UILabel()
        welcome.text = "Password:"
        welcome.textColor = .white
        welcome.textAlignment = .center
        welcome.shadowColor = .darkGray
        return welcome
        
    }()

    
    private let password_txt: UITextField = {
        let psw = UITextField()
        psw.borderStyle = .roundedRect
        //text.backgroundColor = .systemFill
        psw.textAlignment = .center
        psw.textColor = .black
        psw.placeholder = "Enter Password"
        return psw
        
    } ()
    
   
    
    private let Continue_btn : UIButton = {
        let con = UIButton()
        con.setTitle("Continue", for: .normal)
        con.addTarget(self, action: #selector(register2), for: .touchUpInside)
        con.backgroundColor = .gray
        con.setTitleColor(.white, for: .normal)
        con.layer.cornerRadius = 25
        return con
    } ()
    
    @objc func register2()
    {
        let rvc2 = registerVC2() 
        navigationController?.pushViewController(rvc2, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(userlogo_img)
        view.addSubview(register_lbl)
        view.addSubview(username_lbl)
        view.addSubview(username_txt)
        view.addSubview(password_lbl)
        view.addSubview(password_txt)
        view.addSubview(Continue_btn)
            
        title = "Register"
//        self.view.backgroundColor = .brown
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg6.jpg")
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        userlogo_img.frame = CGRect(x: 20, y: 160, width: view.width - 40, height: 120)
        register_lbl.frame = CGRect(x: 20, y: userlogo_img.bottom + 10, width: view.width - 40, height: 40)
        username_lbl.frame = CGRect(x: 20, y: register_lbl.bottom + 5, width: view.width - 40, height: 30)
        username_txt.frame = CGRect(x: 20, y: username_lbl.bottom + 5, width: view.width - 40, height: 30)
        password_lbl.frame = CGRect(x: 20, y: username_txt.bottom + 5, width: view.width - 40, height: 30)
        password_txt.frame = CGRect(x: 20, y: password_lbl.bottom + 5, width: view.width - 40, height: 30)
        Continue_btn.frame = CGRect(x: 20, y: password_txt.bottom + 20, width: view.width - 40, height: 40)
    }
    

    

   

}
