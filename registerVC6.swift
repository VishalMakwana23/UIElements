
//
//  registerVC6.swift
//  UIElements
//
//  Created by DCS on 20/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class registerVC6: UIViewController {
    
    private let toolBar:UIToolbar = {
        let toolBar = UIToolbar()
        let cancel = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(handleCancel))
        let gallery = UIBarButtonItem(barButtonSystemItem: .organize, target: self, action: #selector(handleGallery))
        let camera = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(handleCamera))
        toolBar.items = [cancel, gallery, camera]

        return toolBar
    }()

  
   
   
    @objc private func handleCancel() {
        print("cancel called")
        self.dismiss(animated: true)
    }
   
    @objc private func handleGallery() {
        print("gallery called")
        imagePicker.sourceType = .photoLibrary
        DispatchQueue.main.async {
            self.present(self.imagePicker, animated: true)
        }
    }

    @objc private func handleCamera() {
        print("camera called")
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            imagePicker.sourceType = .camera
            DispatchQueue.main.async {
                self.present(self.imagePicker, animated: true)
            }
        } else {
            let alert = UIAlertController(title: "Oops!", message: "Camera not found. Try picking an image from your gallery.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel))
            DispatchQueue.main.async {
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    
    
    private let userlogo_img : UIImageView = {
        let user = UIImageView()
        user.contentMode = .scaleAspectFit
        user.image = UIImage(named: "man")
        return user
    }()
    
    private let imagePicker:UIImagePickerController = {
        let imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = false
        return imagePicker
    }()
    
    private let pick_lbl : UILabel = {
        let pick = UILabel()
        pick.text = "Upload Profile Picture"
        pick.textColor = .white
        pick.textAlignment = .center
        pick.font = UIFont(name: "HelveticaNeue-Bold", size: 16.0)
        return pick
        
    }()
    
    private let myImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let tc_lbl:UILabel = {
        let label = UILabel()
        label.text = "Show Public "
        label.backgroundColor = .clear
        label.textAlignment = .left
        label.highlightedTextColor = .white
        label.textColor = .white
        label.font = .systemFont(ofSize:20)
        return label
    }()
    
    
    private let mySwitch:UISwitch = {
        let switcher = UISwitch()
        switcher.addTarget(self, action: #selector(handleSwitch), for: .valueChanged)
        return switcher
    }()
    
    @objc func handleSwitch() {
        print(mySwitch.isOn)
    }
    
    
    private let Continue_btn : UIButton = {
        let con = UIButton()
        con.setTitle("Continue", for: .normal)
        con.addTarget(self, action: #selector(register7), for: .touchUpInside)
        con.backgroundColor = .gray
        con.setTitleColor(.white, for: .normal)
        con.layer.cornerRadius = 25
        return con
    } ()
    
    @objc func register7(){
        let rvc7 = registerVC7()
        navigationController?.pushViewController(rvc7, animated: false)
    }
    
//    private let myActivityIndicatorView:UIActivityIndicatorView = {
//        let activity = UIActivityIndicatorView()
//        activity.color = .white
//        return activity
//    }()
    
    
//    @objc func handleActivity() {
//        DispatchQueue.main.async {
//            self.myActivityIndicatorView.isHidden = !self.myActivityIndicatorView.isHidden
//            self.myActivityIndicatorView.isHidden ? self.myActivityIndicatorView.stopAnimating() : self.myActivityIndicatorView.startAnimating()
//        }
//    }
    
    
    private let tabBar:UITabBar = {
        let tabBar = UITabBar()
        let history = UITabBarItem(tabBarSystemItem: .history, tag: 1)
        let downloads = UITabBarItem(tabBarSystemItem: .downloads, tag: 2)
        tabBar.items = [history, downloads]
        return tabBar
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(toolBar)
        view.addSubview(tabBar)
        view.addSubview(userlogo_img)
        view.addSubview(pick_lbl)
        view.addSubview(tc_lbl)
        view.addSubview(mySwitch)
        view.addSubview(Continue_btn)
        //view.addSubview(myActivityIndicatorView)
      
        tabBar.delegate = self
        
        view.addSubview(myImageView)
        imagePicker.delegate = self
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg13.jpg")
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        //let toolBarHeight:CGFloat = view.safeAreaInsets.top + 40
        toolBar.frame = CGRect(x: 0, y: 60, width: view.width, height: 40)
        
        let tabBarHeight:CGFloat = view.safeAreaInsets.bottom + 49
        tabBar.frame = CGRect(x: 0, y: view.height - tabBarHeight, width: view.width, height: tabBarHeight)
        userlogo_img.frame = CGRect(x: 20, y: 120, width: view.width - 40, height: 120)
        pick_lbl.frame = CGRect(x: 20, y: userlogo_img.bottom + 1, width: view.width - 40, height: 40)
        myImageView.frame = CGRect(x: 20, y: pick_lbl.bottom + 5, width: view.width - 40, height: 150)
        tc_lbl.frame = CGRect(x: 40, y: myImageView.bottom + 5, width: view.width - 20, height: 30)
        mySwitch.frame = CGRect(x: 170, y: myImageView.bottom + 5, width: view.width - 20, height: 30)
        Continue_btn.frame = CGRect(x: 20, y: mySwitch.bottom + 20, width: view.width - 40, height: 40)
        //myActivityIndicatorView.frame = CGRect(x: 40, y: Continue_btn.bottom + 20, width: view.width-80, height: 60)
        
        

    }
}

extension registerVC6: UITabBarDelegate {
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        print(item.tag)
    }
}

extension registerVC6:UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let selectedImage = info[.originalImage] as? UIImage {
            myImageView.image = selectedImage
        }
        picker.dismiss(animated: true)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true)
    }
}
