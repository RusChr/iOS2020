//
//  NewsPresenter.swift
//  Architecture
//
//  Created by Rustam Chergizbiev on 25.12.2020.
//

import Foundation

class NewsPresenter: NewsViewOutConnection, NewsPresenterInConnection {
    
    weak var view: NewsViewInConnection?
    var interactor: NewsPresenterOutConnection?
    
    private var news: News?
    
    
    func newsFetched(_ news: News?) {
        self.news = news
        
        let name = news?.name ?? "Name is empty"
        let height = news?.height ?? "Height is empty"
        let mass = news?.mass ?? "Mass is empty"
        
        view?.setNameLabel(text: name)
        view?.setHeightLabel(text: height)
        view?.setMassLabel(text: mass)
    }
    
    
    func viewDidLoad() {
        interactor?.startFetchingNews()
    }
}
