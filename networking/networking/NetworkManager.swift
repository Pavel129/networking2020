//
//  NetworkManager.swift
//  networking
//
//  Created by Pavel Chekov on 24/03/2020.
//  Copyright © 2020 Pavel Chekov. All rights reserved.
//

import Foundation

class NetworkManager {
    
    
    func getAllPosts(_ completionHandler: @escaping ([Post]) -> Void ) {
        
        if let url = URL(string: "http://jsonplaceholder.typicode.com/posts") {
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                
                if error != nil {
                    print("error in request") } else {
                    if let resp = response as? HTTPURLResponse,
                        resp.statusCode == 200, let responseData = data  {
                        print(responseData)
                        let posts = try? JSONDecoder().decode([Post].self, from: responseData)
                        
                        completionHandler(posts ?? [] )
                        
                    }
                }
                
            }.resume()
        }
        
    }
}

