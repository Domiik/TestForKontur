//
//  NetworkManager.swift
//  TestForKontur
//
//  Created by Domiik on 18.03.2022.
//

import UIKit


class NetworkManager {
    
    static let shared           = NetworkManager()
    
    private let baseURL          = "https://api.spacexdata.com/v4/rockets"
    
    private let baseURLForStart  = "https://api.spacexdata.com/v4/launches"
   
    func getRockets(completed: @escaping (Result<[SpaceRocket], APError>) -> Void) {
        guard let url = URL(string: baseURL) else {
            completed(.failure(.invalidURL))
            return
        }
               
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            
            if let _ =  error {
                completed(.failure(.unableToComplete))
                return
            }
                        
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(SpaceRockets.self, from: data)
                completed(.success(decodedResponse))
            } catch {
                completed(.failure(.invalidData))
            }
        }
        
        task.resume()
    }
    
    func getStarts(completed: @escaping (Result<[ListOfRocketLaunch], APError>) -> Void) {
        guard let url = URL(string: baseURLForStart) else {
            completed(.failure(.invalidURL))
            return
        }
               
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            
            if let _ =  error {
                completed(.failure(.unableToComplete))
                return
            }
                        
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
        
            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(ListOfRocketLaunchs.self, from: data)
                completed(.success(decodedResponse))
            } catch {
                completed(.failure(.invalidData))
            }
        }
        
        task.resume()
    }
}
