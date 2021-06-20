//
//  registerVC4.swift
//  UIElements
//
//  Created by DCS on 20/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class registerVC4: UIViewController {

    private let height_img : UIImageView = {
        let height = UIImageView()
        height.contentMode = .scaleAspectFit
        height.image = UIImage(named: "height")
        return height
    }()
    
    
    
    private let height_lbl : UILabel = {
        let h_lbl = UILabel()
        h_lbl.text = "Height"
        h_lbl.textColor = .white
        h_lbl.textAlignment = .center
        h_lbl.shadowColor = .darkGray
        return h_lbl
        
    }()
    
    private let height_stepper:UIStepper = {
        let stepper = UIStepper()
        
        stepper.minimumValue = 0
        stepper.maximumValue = 10
        stepper.backgroundColor = .white
        
        stepper.addTarget(self, action: #selector(handleStepper), for: .valueChanged)
        return stepper
    }()
    private let height_result:UILabel = {
        let res = UILabel()
        res.text = "0.0"
        res.backgroundColor = .clear
        res.textAlignment = .left
        res.highlightedTextColor = .white
        res.textColor = .white
        res.font = .systemFont(ofSize:20)
        return res
    }()
    
    @objc func handleStepper(){
        print(height_stepper.value)
        height_result.text = height_stepper.value.description
    }
    
    
    private let Continue_btn : UIButton = {
        let con = UIButton()
        con.setTitle("Continue", for: .normal)
        con.addTarget(self, action: #selector(register5), for: .touchUpInside)
        con.backgroundColor = .gray
        con.setTitleColor(.white, for: .normal)
        con.layer.cornerRadius = 25
        return con
    } ()
    
    @objc func register5()
    {
        let rvc5 = registerVC5() 
        navigationController?.pushViewController(rvc5, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(height_img)
        view.addSubview(height_lbl)
        view.addSubview(height_stepper)
        view.addSubview(height_result)
        view.addSubview(Continue_btn)
        title = "Register"
        self.view.backgroundColor = .brown
        
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg1.jpg")
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        height_img.frame = CGRect(x: 20, y: 160, width: view.width - 40, height: 120)
        height_lbl.frame = CGRect(x: 20, y: height_img.bottom + 10, width: view.width - 40, height: 40)
        height_stepper.frame = CGRect(x: 20, y: height_lbl.bottom + 10, width: view.width - 40, height: 40)
        height_result.frame = CGRect(x: 190, y: height_lbl.bottom + 8, width: view.width - 40, height: 40)
        Continue_btn.frame = CGRect(x: 20, y: height_result.bottom + 20, width: view.width - 40, height: 40)
    }
    

}
