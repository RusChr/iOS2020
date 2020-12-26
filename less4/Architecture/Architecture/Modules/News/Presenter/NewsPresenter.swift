//
//  NewsPresenter.swift
//  Architecture
//
//  Created by Rustam Chergizbiev on 25.12.2020.
//

import Foundation

class NewsPresenter {
    
    weak var view: NewsViewController?
    var interactor: NewsInteractor?
}
