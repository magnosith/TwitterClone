//
//  LoginController.swift
//  TwitterClone
//
//  Created by Student on 07/08/23.
//

import UIKit

class LoginController: UIViewController {
    
    //MARK: - PROPERTIES
    private let logoImageView: UIImageView = {
        let logoImage = UIImageView()
        logoImage.contentMode = .scaleAspectFit
        logoImage.clipsToBounds = true
        logoImage.image =  #imageLiteral(resourceName: "TwitterLogo")
        return logoImage
    }()
    
    private lazy var emailContainerView: UIView = {
        let image = #imageLiteral(resourceName: "ic_mail")
        let view = Utilities().inputContainerView(withImage: image, textField: emailTextField)
        view.backgroundColor = .systemRed
    
        return view
    }()
    
    private lazy var passwordContainerView: UIView = {
        let image = #imageLiteral(resourceName: "ic_lock_outline_white_2x")
        let view = Utilities().inputContainerView(withImage: image, textField: passwordTextField)
        view.backgroundColor = .systemPurple
    
        return view
    }()
    
    private var emailTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Email"
        tf.textColor = .white
        tf.tintColor = .white
        return tf
    }()
    
    private var passwordTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Password"
        tf.textColor = .white
        return tf
    }()
    
    
    
    //MARK: - LIFECICLE
    override func viewDidLoad() {
        super.viewDidLoad()
    configureUI()
        
    }
    
    
    //MARK: - SELECTORS
    
    //MARK: HELPERS
    func configureUI(){
        view.backgroundColor = .twitterBlue
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.isHidden = true

        view.addSubview(logoImageView)
        logoImageView.centerX(inView: view, topAnchor: view.safeAreaLayoutGuide.topAnchor)
        logoImageView.setDimensions(width: 150, height: 150)
        
        let stack = UIStackView (arrangedSubviews: [emailContainerView, passwordContainerView])
        stack.axis = .vertical
        stack.spacing = 8
        view.addSubview(stack)
        stack.anchor(top: logoImageView.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor)
        
    }
    
    
    
    
}
