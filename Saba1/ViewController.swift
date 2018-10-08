//
//  ViewController.swift
//  Saba1
//
//  Created by yeganeh on 8/16/18.
//  Copyright © 2018 yeganeh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let UserNameTextFeild: UITextField = {
        let uName = UITextField()
        let font = UIFont.systemFont(ofSize: 13)
        let attributedPlaceHolder = NSAttributedString(string: "User Name", attributes: [NSAttributedStringKey.foregroundColor: UIColor.white, NSAttributedStringKey.font:font])
        uName.textColor = .white
        uName.attributedPlaceholder = attributedPlaceHolder
        uName.setBottomBorder(backGroundColor: BLUE_THEME, borderColor: .white)
        uName.backgroundColor = BLUE_THEME
        return uName
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
    
    let loginButton: UIButton = {
        let login = UIButton(type: .system)
            login.setTitleColor(.white, for: .normal)
            login.setTitle("Log In", for: .normal)
            login.backgroundColor = UIColor.RGB(red: 70, green: 130, blue: 180)
            login.layer.cornerRadius = 10
        return login
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
    
    let forgotPassword: UIButton = {
        let forgot = UIButton(type: .system)
        forgot.setTitleColor(.white, for: .normal)
        forgot.setTitle("forgot Password?", for: .normal)
        forgot.backgroundColor = BLUE_THEME
        return forgot
    }()
    
    let haveAccountButton: UIButton = {
        let color =  UIColor.RGB(red: 70, green: 130, blue: 180)
        let font = UIFont.systemFont(ofSize: 16)
        let have = UIButton(type: .system)
            have.backgroundColor = BLUE_THEME
        let attributedTitle = NSMutableAttributedString(string: "Don't have an account?", attributes: [NSAttributedStringKey.foregroundColor: color, NSAttributedStringKey.font: font])
            have.setAttributedTitle(attributedTitle, for: .normal)
        
        attributedTitle.append(NSAttributedString(string: "  Sing Up", attributes: [NSAttributedStringKey.foregroundColor: UIColor.white, NSAttributedStringKey.font: font]))
        have.addTarget(self, action: #selector(signupAction), for: .touchUpInside)
        return have
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        view.backgroundColor = BLUE_THEME
        
        setupAddLogo()
        setupTextFeildComponent()
        setupLoginButton()
        setupForgotPasswordButton()
        setupHaveAccountButton()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    fileprivate func setupAddLogo() {
        view.addSubview(logo)
        logo.anchors(top: view.safeAreaLayoutGuide.topAnchor, topPad: 64, bottom: nil,
                     buttomPad: 0, left: nil, leftPad: 0, right: nil, rightPad: 0,
                     hight: 150, width: 150)
        logo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @objc func signupAction(){
    
        print("SIGN UP")
        
        let signup = signupController()
        navigationController?.pushViewController(signup, animated: true)
    }
    
    fileprivate func setupTextFeildComponent(){
        setupUserNameFeild()
        setupPasswordFeild()
    }

    fileprivate func setupUserNameFeild(){
        view.addSubview(UserNameTextFeild)
        
        UserNameTextFeild.anchors(top: nil, topPad: 0, bottom: nil, buttomPad: 0, left: view.leftAnchor, leftPad: 24, right: view.rightAnchor, rightPad: 24, hight: 30, width: 0)
        UserNameTextFeild.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    fileprivate func setupPasswordFeild(){
        view.addSubview(passwordTextFeild)
        
        passwordTextFeild.anchors(top: UserNameTextFeild.bottomAnchor, topPad: 8, bottom: nil, buttomPad: 0, left: UserNameTextFeild.leftAnchor, leftPad: 0, right: UserNameTextFeild.rightAnchor, rightPad: 0, hight: 30, width: 0)
        
        passwordTextFeild.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    fileprivate func setupLoginButton(){
        view.addSubview(loginButton)
        
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.anchors(top: passwordTextFeild.bottomAnchor, topPad: 8, bottom: nil, buttomPad: 0, left: passwordTextFeild.leftAnchor, leftPad: 0, right: passwordTextFeild.rightAnchor, rightPad: 0, hight: 50, width: 0)
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    fileprivate func setupForgotPasswordButton(){
        view.addSubview(forgotPassword)
        
        forgotPassword.translatesAutoresizingMaskIntoConstraints = false
        forgotPassword.anchors(top: loginButton.bottomAnchor, topPad: 8, bottom: nil, buttomPad: 0, left: loginButton.leftAnchor, leftPad: 0, right: loginButton.rightAnchor, rightPad: 0, hight: 30, width: 0)
        forgotPassword.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    fileprivate func setupHaveAccountButton(){
        view.addSubview(haveAccountButton)
        
        haveAccountButton.translatesAutoresizingMaskIntoConstraints = false
        haveAccountButton.anchors(top: nil, topPad: 0, bottom: view.safeAreaLayoutGuide.bottomAnchor, buttomPad: 8, left: view.leftAnchor, leftPad: 12, right: view.rightAnchor, rightPad: 12, hight: 30, width: 0)
        haveAccountButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
   

}

