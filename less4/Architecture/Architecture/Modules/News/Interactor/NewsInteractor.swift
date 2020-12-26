//
//  NewsInteractor.swift
//  Architecture
//
//  Created by Rustam Chergizbiev on 25.12.2020.
//

import Foundation

class NewsInteractor {
    
    weak var presenter: NewsPresenter?
    var newsService: NewsService?
}
