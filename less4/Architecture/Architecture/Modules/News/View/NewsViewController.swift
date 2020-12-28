//
//  NewsViewController.swift
//  Architecture
//
//  Created by Rustam Chergizbiev on 25.12.2020.
//

import UIKit

class NewsViewController: UIViewController, NewsViewInConnection {
    
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var heightLabel: UILabel!
    @IBOutlet private weak var massLabel: UILabel!
    
    var presenter: NewsViewOutConnection?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
    
    
    func setNameLabel(text: String) {
        nameLabel.text = text
    }
    
    
    func setHeightLabel(text: String) {
        heightLabel.text = text
    }
    
    
    func setMassLabel(text: String) {
        massLabel.text = text
    }
}
