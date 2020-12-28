//
//  NewsServiceImplementation.swift
//  Architecture
//
//  Created by Rustam Chergizbiev on 25.12.2020.
//

import Foundation

class NewsServiceImplementation: NewsService {
    
    // Test: emulation of server interaction
    func fetchNews(_ closure: ((News?) -> Void)?) {
        let url = "https://swapi.dev/api/people/1/"
        let request = URLRequest(url: URL(string: url)!)
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            do {
                let model = try JSONDecoder().decode(News.self, from: data!)
                DispatchQueue.main.async {
                    closure?(model)
                }
            } catch {
                print(String(data: data!, encoding: .utf8))
                print(error.localizedDescription)
            }
        }.resume()
    }
}
