//
//  NewsContainer.swift
//  Architecture
//
//  Created by Rustam Chergizbiev on 28.12.2020.
//

import Foundation
import Swinject

class NewsContainer {
    
    private let container = Container()
    
    
    func register() {
        container.register(NewsViewController.self) { (resolver) -> NewsViewController in
            let vc = NewsViewController()
            vc.presenter = resolver.resolve(NewsViewOutConnection.self)
            return vc
        }.implements(NewsViewInConnection.self)
        
        container.register(NewsPresenter.self) { (resolver) -> NewsPresenter in
            let presenter = NewsPresenter()
            presenter.interactor = resolver.resolve(NewsPresenterOutConnection.self)
            return presenter
        }.implements(NewsViewOutConnection.self)
        .implements(NewsPresenterInConnection.self)
        .initCompleted { (resolver, presenter) in
            presenter.view = resolver.resolve(NewsViewInConnection.self)
        }
        
        container.register(NewsInteractor.self) { (resolver) -> NewsInteractor in
            let interactor = NewsInteractor()
            interactor.newsService = resolver.resolve(NewsService.self)
            return interactor
        }.implements(NewsPresenterOutConnection.self)
        .initCompleted { (resolver, interactor) in
            interactor.presenter = resolver.resolve(NewsPresenterInConnection.self)
        }
        
        container.register(NewsService.self) { (resolver) -> NewsService in
            let service = NewsServiceImplementation()
            return service
        }
    }
    
    
    func fetchViewController() -> UIViewController? {
        return container.resolve(NewsViewController.self)
    }
}
