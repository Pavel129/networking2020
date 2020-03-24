//
//  Post.swift
//  networking
//
//  Created by Pavel Chekov on 24/03/2020.
//  Copyright © 2020 Pavel Chekov. All rights reserved.
//

import Foundation
/*
 "userId": 1,
 "id": 1,
 "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
 "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
 */
class Post: Codable {
    var userId: Int
    var id: Int
    var title: String
    var body: String
    
    
}
