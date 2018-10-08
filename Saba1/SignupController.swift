//
//  SignupController.swift
//  Saba1
//
//  Created by yeganeh on 8/21/18.
//  Copyright © 2018 yeganeh. All rights reserved.
//

import Foundation
import UIKit

class signupController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = BLUE_THEME
        setupAddLogo()
        setupHaveAccountButton()
        setupTextFeildComponent()
        setupRegisterButton()
    }
    
    let haveAccountButton: UIButton = {
        let color =  UIColor.RGB(red: 70, green: 130, blue: 180)
        let font = UIFont.systemFont(ofSize: 16)
        let have = UIButton(type: .system)
        have.backgroundColor = BLUE_THEME
        let attributedTitle = NSMutableAttributedString(string: "Already have an account? ", attributes: [NSAttributedStringKey.foregroundColor: color, NSAttributedStringKey.font: font])
        have.setAttributedTitle(attributedTitle, for: .normal)
        
        attributedTitle.append(NSAttributedString(string: " Sing In ", attributes: [NSAttributedStringKey.foregroundColor: UIColor.white, NSAttributedStringKey.font: font]))
        have.addTarget(self, action: #selector(singinAction), for: .touchUpInside)
        return have
    }()
    
    let emailTextFeild: UITextField = {
        let email = UITextField()
        let font = UIFont.systemFont(ofSize: 13)
        let attributedPlaceHolder = NSAttributedString(string: "Email", attributes: [NSAttributedStringKey.foregroundColor: UIColor.white, NSAttributedStringKey.font:font])
        email.textColor = .white
        email.attributedPlaceholder = attributedPlaceHolder
        email.setBottomBorder(backGroundColor: BLUE_THEME, borderColor: .white)
        email.backgroundColor = BLUE_THEME
        return email
    }()
    
    let passwordTextFeild: UITextField = {
        let pass = UITextField()
        let font = UIFont.systemFont(ofSize: 13)
        let attributedPlaceHolder = NSAttributedString(string: "Password", attributes: [NSAttributedStringKey.foregroundColor: UIColor.white , NSAttributedStringKey.font:font])
        pass.textColor = .white
        pass.isSecureTextEntry = true
        pass.attributedPlaceholder = attributedPlaceHolder
        pass.setBottomBorder(backGroundColor: BLUE_THEME, borderColor: .white)
        pass.backgroundColor = BLUE_THEME
        return pass
    }()
    let confirmPasswordTextFeild: UITextField = {
        let confirm = UITextField()
        let font = UIFont.systemFont(ofSize: 13)
        let attributedPlaceHolder = NSAttributedString(string: "Confirm Password", attributes: [NSAttributedStringKey.foregroundColor: UIColor.white , NSAttributedStringKey.font:font])
        confirm.textColor = .white
        confirm.isSecureTextEntry = true
        confirm.attributedPlaceholder = attributedPlaceHolder
        confirm.setBottomBorder(backGroundColor: BLUE_THEME, borderColor: .white)
        confirm.backgroundColor = BLUE_THEME
        return confirm
    }()
    
    let firstNameTextFeild: UITextField = {
        let fName = UITextField()
        let font = UIFont.systemFont(ofSize: 13)
        let attributedPlaceHolder = NSAttributedString(string: "first Name", attributes: [NSAttributedStringKey.foregroundColor: UIColor.white , NSAttributedStringKey.font:font])
        fName.textColor = .white
        fName.attributedPlaceholder = attributedPlaceHolder
        fName.setBottomBorder(backGroundColor: BLUE_THEME, borderColor: .white)
        fName.backgroundColor = BLUE_THEME
        return fName
    }()
    
    let lastNameTextFeild: UITextField = {
        let lName = UITextField()
        let font = UIFont.systemFont(ofSize: 13)
        let attributedPlaceHolder = NSAttributedString(string: "Last Name", attributes: [NSAttributedStringKey.foregroundColor: UIColor.white , NSAttributedStringKey.font:font])
        lName.textColor = .white
        lName.attributedPlaceholder = attributedPlaceHolder
        lName.setBottomBorder(backGroundColor: BLUE_THEME, borderColor: .white)
        lName.backgroundColor = BLUE_THEME
        return lName
    }()
    
    let phoneNumberTextFeild: UITextField = {
        let phone = UITextField()
        let font = UIFont.systemFont(ofSize: 13)
        let attributedPlaceHolder = NSAttributedString(string: "Phone Number", attributes: [NSAttributedStringKey.foregroundColor: UIColor.white , NSAttributedStringKey.font:font])
        phone.textColor = .white
        phone.keyboardType = .numberPad
        phone.attributedPlaceholder = attributedPlaceHolder
        phone.setBottomBorder(backGroundColor: BLUE_THEME, borderColor: .white)
        phone.backgroundColor = BLUE_THEME
        return phone
    }()
    
    let userNameTextFeild: UITextField = {
        let uName = UITextField()
        let font = UIFont.systemFont(ofSize: 13)
        let attributedPlaceHolder = NSAttributedString(string: "User Name", attributes: [NSAttributedStringKey.foregroundColor: UIColor.white , NSAttributedStringKey.font:font])
        uName.textColor = .white
        uName.attributedPlaceholder = attributedPlaceHolder
        uName.setBottomBorder(backGroundColor: BLUE_THEME, borderColor: .white)
        uName.backgroundColor = BLUE_THEME
        return uName
    }()
    
    let RegisterButton: UIButton = {
        let register = UIButton(type: .system)
        register.setTitleColor(.white, for: .normal)
        register.setTitle("Sing Up", for: .normal)
        register.backgroundColor = UIColor.RGB(red: 70, green: 130, blue: 180)
        register.layer.cornerRadius = 10
        return register
    }()
    
    let logo: UIImageView = {
        let logoImage = UIImageView()
        logoImage.image = #imageLiteral(resourceName: "saba_logo")
        logoImage.contentMode = .scaleAspectFill
        logoImage.layer.masksToBounds = true
        logoImage.layer.cornerRadius = 20
        logoImage.layer.cornerRadius = logoImage.frame.height / 2
        return logoImage
    }()
    
    @objc func singinAction(){
        navigationController?.popViewController(animated: true)
    }
    
    fileprivate func setupHaveAccountButton(){
        view.addSubview(haveAccountButton)
        
        haveAccountButton.translatesAutoresizingMaskIntoConstraints = false
        haveAccountButton.anchors(top: nil, topPad: 0, bottom: view.safeAreaLayoutGuide.bottomAnchor, buttomPad: 8, left: view.leftAnchor, leftPad: 12, right: view.rightAnchor, rightPad: 12, hight: 30, width: 0)
        haveAccountButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    fileprivate func setupTextFeildComponent(){
        setupEmailFeild()
        setupPasswordFeild()
        setupConfirmPasswordFeild()
        setupFNameFeild()
        setupLNameFeild()
        setupPhoneNumberFeild()
        setupUserNameFeild()
    }
    
    fileprivate func setupEmailFeild(){
        view.addSubview(emailTextFeild)
        
        emailTextFeild.anchors(top: nil, topPad: 0, bottom: nil, buttomPad: 0, left: view.leftAnchor, leftPad: 24, right: view.rightAnchor, rightPad: 24, hight: 30, width: 0)
        emailTextFeild.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    fileprivate func setupPasswordFeild(){
        view.addSubview(passwordTextFeild)
        
        passwordTextFeild.anchors(top: emailTextFeild.bottomAnchor, topPad: 8, bottom: nil, buttomPad: 0, left: emailTextFeild.leftAnchor, leftPad: 0, right: emailTextFeild.rightAnchor, rightPad: 0, hight: 30, width: 0)
        
        passwordTextFeild.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    fileprivate func setupConfirmPasswordFeild(){
        view.addSubview(confirmPasswordTextFeild)
        
        confirmPasswordTextFeild.anchors(top: passwordTextFeild.bottomAnchor, topPad: 8, bottom: nil, buttomPad: 0, left: passwordTextFeild.leftAnchor, leftPad: 0, right: passwordTextFeild.rightAnchor, rightPad: 0, hight: 30, width: 0)
        
        confirmPasswordTextFeild.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    fileprivate func setupFNameFeild(){
        view.addSubview(firstNameTextFeild)
        firstNameTextFeild.anchors(top: confirmPasswordTextFeild.bottomAnchor, topPad: 8, bottom: nil, buttomPad: 0, left: confirmPasswordTextFeild.leftAnchor, leftPad: 0, right: confirmPasswordTextFeild.rightAnchor, rightPad: 0, hight: 30, width: 0)
        
        firstNameTextFeild.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    fileprivate func setupLNameFeild(){
        view.addSubview(lastNameTextFeild)
        lastNameTextFeild.anchors(top: firstNameTextFeild.bottomAnchor, topPad: 8, bottom: nil, buttomPad: 0, left: firstNameTextFeild.leftAnchor, leftPad: 0, right: firstNameTextFeild.rightAnchor, rightPad: 0, hight: 30, width: 0)
        
        lastNameTextFeild.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    fileprivate func setupPhoneNumberFeild(){
        view.addSubview(phoneNumberTextFeild)
        phoneNumberTextFeild.anchors(top: lastNameTextFeild.bottomAnchor, topPad: 8, bottom: nil, buttomPad: 0, left: lastNameTextFeild.leftAnchor, leftPad: 0, right: lastNameTextFeild.rightAnchor, rightPad: 0, hight: 30, width: 0)
        
        phoneNumberTextFeild.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    fileprivate func setupUserNameFeild(){
        view.addSubview(userNameTextFeild)
        userNameTextFeild.anchors(top: phoneNumberTextFeild.bottomAnchor, topPad: 8, bottom: nil, buttomPad: 0, left: phoneNumberTextFeild.leftAnchor, leftPad: 0, right: phoneNumberTextFeild.rightAnchor, rightPad: 0, hight: 30, width: 0)
        
        userNameTextFeild.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    fileprivate func setupRegisterButton(){
        view.addSubview(RegisterButton)
        
        RegisterButton.translatesAutoresizingMaskIntoConstraints = false
        RegisterButton.anchors(top: userNameTextFeild.bottomAnchor, topPad: 8, bottom: nil, buttomPad: 0, left: userNameTextFeild.leftAnchor, leftPad: 0, right: userNameTextFeild.rightAnchor, rightPad: 0, hight: 50, width: 0)
        RegisterButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    fileprivate func setupAddLogo() {
        view.addSubview(logo)
        logo.anchors(top: view.safeAreaLayoutGuide.topAnchor, topPad: 64, bottom: nil,
                     buttomPad: 0, left: nil, leftPad: 0, right: nil, rightPad: 0,
                     hight: 150, width: 150)
        logo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}
