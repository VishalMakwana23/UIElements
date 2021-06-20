//
//  registerVC2.swift
//  UIElements
//
//  Created by DCS on 19/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class registerVC2: UIViewController {

    private let age_img : UIImageView = {
        let age = UIImageView()
        age.contentMode = .scaleAspectFit
        age.image = UIImage(named: "age")
        return age
    }()
    
   
    
    private let bdate_lbl : UILabel = {
        let bdate = UILabel()
        bdate.text = "Birthdate:"
        bdate.textColor = .white
        bdate.textAlignment = .center
        bdate.shadowColor = .darkGray
        return bdate

    }()
  
    private let bdate_dp :UIDatePicker = {
        let dp = UIDatePicker()
        dp.datePickerMode = .date
        dp.timeZone = TimeZone(secondsFromGMT: 0)
        dp.setValue(UIColor.white, forKey: "textColor")
        return dp
    }()
    
    private let or_btn : UIButton = {
        let or = UIButton()
        or.setTitle("or", for: .normal)
        or.backgroundColor = .gray
        //or.addTarget(self, action: #selector(register3), for: .touchUpInside)
        or.layer.cornerRadius = 20
        return or
    } ()
    private let age_lbl : UILabel = {
        let age = UILabel()
        age.text = "Age:"
        age.textColor = .white
        age.textAlignment = .center
        age.shadowColor = .darkGray
        return age
        
    }()
    
    private let age_slider : UISlider = {
        let slider = UISlider()
        slider.maximumValue = 100
        slider.minimumValue = 18
        slider.addTarget(self, action: #selector(age_rate), for: .valueChanged)
        return slider
    }()
    
    @objc func age_rate() {
        let rate = Int(age_slider.value)
        age_res.text = String(rate)
    }
    
    private let age_res : UITextView = {
        let age_txt = UITextView()
        age_txt.isEditable = false
        age_txt.font = UIFont.systemFont(ofSize: 17.0)
       // txtview.backgroundColor = .systemFill
        age_txt.textColor = .black
        age_txt.textAlignment = .center
        return age_txt
    } ()
    
    
    private let Continue_btn : UIButton = {
        let con = UIButton()
        con.setTitle("Continue", for: .normal)
        con.addTarget(self, action: #selector(register3), for: .touchUpInside)
        con.backgroundColor = .gray
        con.setTitleColor(.white, for: .normal)
        con.layer.cornerRadius = 25
        return con
    } ()
    
    @objc func register3()
    {
        let rvc3 = registerVC3()
        navigationController?.pushViewController(rvc3, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(age_img)
        view.addSubview(bdate_lbl)
        view.addSubview(bdate_dp)
        view.addSubview(or_btn)
        view.addSubview(age_lbl)
        view.addSubview(age_slider)
        view.addSubview(age_res)
        view.addSubview(Continue_btn)
        title = "Register"
        
         self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg1.jpg")!)
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg10.jpg")
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        age_img.frame = CGRect(x: 20, y: 160, width: view.width - 40, height: 120)
        bdate_lbl.frame = CGRect(x: 20, y: age_img.bottom + 10, width: view.width - 40, height: 40)
        bdate_dp.frame = CGRect(x: 20, y: bdate_lbl.bottom + 5, width: view.width - 40, height: 40)
        or_btn.frame = CGRect(x: 10, y: bdate_dp.bottom + 10, width: view.width - 20, height: 20)
        age_lbl.frame = CGRect(x: 20, y: or_btn.bottom + 5, width: view.width - 40, height: 40)
        age_slider.frame = CGRect(x: 20, y: age_lbl.bottom + 1, width: view.width - 40, height: 40)
        age_res.frame = CGRect(x: 20, y: age_slider.bottom + 5, width: view.width - 40, height: 40)
        Continue_btn.frame = CGRect(x: 20, y: age_res.bottom + 20, width: view.width - 40, height: 40)
    }
    

}
