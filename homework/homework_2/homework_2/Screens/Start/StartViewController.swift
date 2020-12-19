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
        
        signInButton.addTarget(self, action: #selector(buttonAction(sender:)), for: .touchUpInside)
        signUpButton.addTarget(self, action: #selector(buttonAction(sender:)), for: .touchUpInside)
    }
    
    
    @objc func buttonAction(sender: UIButton) {
        if let buttonTitle = sender.currentTitle {
            print("The button \"\(buttonTitle)\" has been clicked")
        }
    }

}
