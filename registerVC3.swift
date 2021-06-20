//
//  registerVC3.swift
//  UIElements
//
//  Created by DCS on 19/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class registerVC3: UIViewController {

    private let gender_img : UIImageView = {
        let gender = UIImageView()
        gender.contentMode = .scaleAspectFit
        gender.image = UIImage(named: "gender")
        return gender
    }()
    
    
    
    private let gender_lbl : UILabel = {
        let gen_lbl = UILabel()
        gen_lbl.text = "Gender"
        gen_lbl.textColor = .white
        gen_lbl.textAlignment = .center
        gen_lbl.shadowColor = .darkGray
        return gen_lbl
        
    }()
    
    private let gender_segment:UISegmentedControl = {
        let gen_seg = UISegmentedControl()
        gen_seg.insertSegment(withTitle: "Male", at: 0, animated: true)
        gen_seg.insertSegment(withTitle: "Female", at: 1, animated: true)
        return gen_seg
    }()
    
    private let Continue_btn : UIButton = {
        let con = UIButton()
        con.setTitle("Continue", for: .normal)
        con.addTarget(self, action: #selector(register4), for: .touchUpInside)
        con.backgroundColor = .gray
        con.setTitleColor(.white, for: .normal)
        con.layer.cornerRadius = 25
        return con
    } ()
    
    @objc func register4()
    {
        let rvc4 = registerVC4() //change it
        navigationController?.pushViewController(rvc4, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(gender_img)
        view.addSubview(gender_lbl)
        view.addSubview(gender_segment)
        view.addSubview(Continue_btn)
        title = "Register"
        self.view.backgroundColor = .brown
        
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg9.jpg")
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        gender_img.frame = CGRect(x: 20, y: 160, width: view.width - 40, height: 120)
        gender_lbl.frame = CGRect(x: 20, y: gender_img.bottom + 10, width: view.width - 40, height: 40)
        gender_segment.frame = CGRect(x: 20, y: gender_lbl.bottom + 5, width: view.width - 40, height: 40)
        Continue_btn.frame = CGRect(x: 20, y: gender_segment.bottom + 20, width: view.width - 40, height: 40)
    }
    

    

}
