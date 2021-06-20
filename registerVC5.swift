//
//  registerVC5.swift
//  UIElements
//
//  Created by DCS on 20/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class registerVC5: UIViewController {
    
    private let pickerview = UIPickerView()
    private let country = ["India","USA","CANADA","Germony","Dubai"]


    private let region_img : UIImageView = {
        let region = UIImageView()
        region.contentMode = .scaleAspectFit
        region.image = UIImage(named: "region")
        return region
    }()
    
    
    
    private let region_lbl : UILabel = {
        let reg = UILabel()
        reg.text = "Region"
        reg.textColor = .white
        reg.textAlignment = .center
        reg.shadowColor = .darkGray
        return reg
        
    }()
    
    private let progress : UIProgressView = {
        let progress = UIProgressView()
        progress.setProgress(0.0, animated: true)
        progress.progressTintColor = .white
        return progress
    } ()
    
   
    
    
    private let Continue_btn : UIButton = {
        let con = UIButton()
        con.setTitle("Continue", for: .normal)
        con.addTarget(self, action: #selector(register6), for: .touchUpInside)
        con.backgroundColor = .gray
        con.setTitleColor(.white, for: .normal)
        con.layer.cornerRadius = 25
        return con
    } ()
    
    @objc func register6()
    {
        let rvc6 = registerVC6()
        navigationController?.pushViewController(rvc6, animated: true)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 10.0)
        {
            self.progress.setProgress(1.0, animated: true)
            
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(region_img)
        view.addSubview(region_lbl)
        view.addSubview(pickerview)
        view.addSubview(progress)
        view.addSubview(Continue_btn)
        title = "Register"
        self.view.backgroundColor = .brown
        
        pickerview.dataSource = self
        pickerview.delegate = self
        
    
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg11.jpg")
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        region_img.frame = CGRect(x: 20, y: 160, width: view.width - 40, height: 120)
        region_lbl.frame = CGRect(x: 20, y: region_img.bottom + 10, width: view.width - 40, height: 40)
        pickerview.frame = CGRect(x: 20, y: region_lbl.bottom + 1, width: view.width - 40, height: 80)
        progress.frame = CGRect(x: 20, y: pickerview.bottom + 10, width: view.width - 40, height: 50)
        Continue_btn.frame = CGRect(x: 20, y: progress.bottom + 20, width: view.width - 40, height: 50)
    }
    

}


extension registerVC5: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return country.count 
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return country[row]
    }
    
    
    
    
}
