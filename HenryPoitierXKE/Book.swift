//
//  Book.swift
//  HenryPoitierXKE
//
//  Created by Maxime Eglem on 15/06/2017.
//  Copyright © 2017 Xebia IT Architects. All rights reserved.
//

import Foundation
import Unbox

struct Book: Unboxable {
    let isbn,title,cover,synopsis: String
    let price: Float
    
    //From Readme - Deserialisation
    init(unboxer: Unboxer) throws {
        self.isbn = try unboxer.unbox(key: "isbn")
        self.title = try unboxer.unbox(key: "title")
        self.cover = try unboxer.unbox(key: "cover")
        self.synopsis = try unboxer.unbox(key: "synopsis")
        self.price = try unboxer.unbox(key: "price")
    }
}
