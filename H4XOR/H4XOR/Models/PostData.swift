//
//  PostData.swift
//  H4XOR
//
//  Created by Jahan Miah on 15/09/2020.
//  Copyright © 2020 Jahan Miah. All rights reserved.
//

import Foundation


struct Results: Decodable {
    
    let hits: [post]
    
}

struct post: Decodable, Identifiable{
    var id : String{
        return objectID
    }
    let objectID : String
    let points : Int
    let title : String
    let url : String
}
