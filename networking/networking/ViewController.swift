//
//  ViewController.swift
//  networking
//
//  Created by Pavel Chekov on 24/03/2020.
//  Copyright © 2020 Pavel Chekov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    var networkManager = NetworkManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //dsfsd
    //eww
    
    
    @IBAction func dowloadPostsDidTap(_ sender: UIButton) {
        networkManager.getAllPosts { [weak self] (posts) in
            DispatchQueue.main.async {
                self?.titleLabel.text = "Загрузка завершена!!"
            }
            
        }
    }
    
    //    @IBAction func dowloadPostsDidTap(_ sender: UIButton) {
    //
    //        if let url = URL(string: "https://jsonplaceholder.typicode.com/posts") {
    //            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
    //
    //                if error != nil {
    //                    print("error in request") } else {
    //                    print(response)
    //                }
    //
    //            }
    //
    //            task.resume()
    //
    //        }
    
    
    
}



/*
 import UIKit

 class ViewController: UIViewController {
     
     @IBOutlet weak var titleLabel: UILabel!
     
     var dataTask: URLSessionDataTask?
     
     override func viewDidLoad() {
         super.viewDidLoad()
         // Do any additional setup after loading the view.
     }
     //dsfsd
     //eww
     
     
     @IBAction func dowloadPostsDidTap(_ sender: UIButton) {
         
         if let url = URL(string: "https://jsonplaceholder.typicode.com/posts") {
            dataTask =  URLSession.shared.dataTask(with: url) { [weak self] (data, response, error) in
                 
                 if error != nil {
                     print("error in request") } else {
                     if let resp = response as? HTTPURLResponse,
                         resp.statusCode == 200, let responseData = data  {
                          print(responseData)
                         let posts = try? JSONDecoder().decode([Post].self, from: responseData)
                         DispatchQueue.main.async { [ weak self] in
                             self?.titleLabel.text = "Загрузка прошла успешно"
                         }
                         
                         
                         print(posts)
                     }
                         
                         
                     }
 //                    print(response)
                 
                 
             }
             dataTask?.resume()
         }
         
     }
     
     //    @IBAction func dowloadPostsDidTap(_ sender: UIButton) {
     //
     //        if let url = URL(string: "https://jsonplaceholder.typicode.com/posts") {
     //            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
     //
     //                if error != nil {
     //                    print("error in request") } else {
     //                    print(response)
     //                }
     //
     //            }
     //
     //            task.resume()
     //
     //        }
     
     
     
 }

 
 
 */

