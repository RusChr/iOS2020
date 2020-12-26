//
//  NewsService.swift
//  Architecture
//
//  Created by Rustam Chergizbiev on 25.12.2020.
//

import Foundation

protocol NewsService {
    
    func fetchNews(_ closure: ((News?) -> Void)?)
}
