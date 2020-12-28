//
//  NewsInteractor.swift
//  Architecture
//
//  Created by Rustam Chergizbiev on 25.12.2020.
//

import Foundation

class NewsInteractor: NewsPresenterOutConnection {
    
    weak var presenter: NewsPresenterInConnection?
    var newsService: NewsService?
    
    
    func startFetchingNews() {
        newsService?.fetchNews({ [weak self] (news) in
            self?.presenter?.newsFetched(news)
        })
    }
}
