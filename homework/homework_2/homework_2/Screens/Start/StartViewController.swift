//
//  StartViewController.swift
//  homework_2
//
//  Created by Rustam Chergizbiev on 19.12.2020.
//

import UIKit

class StartViewController: UIViewController {
    
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        configure(button: signInButton, backgroundColor: .systemGreen)
        configure(button: signUpButton, backgroundColor: .systemBlue)
        
        signInButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        signUpButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    }
    
    
    @objc func buttonAction(_ sender: UIButton) {
        if let buttonTitle = sender.currentTitle {
            print("The button \"\(buttonTitle)\" has been clicked")
        }
    }
    
    
    private func configure(button: UIButton, backgroundColor: UIColor) {
        button.backgroundColor = backgroundColor
        button.layer.cornerRadius = 10
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
    }

}
