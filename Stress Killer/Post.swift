//
//  Post.swift
//  Stress Killer
//
//  Created by Rafsan Chowdhury on 11/27/16.
//  Copyright © 2016 Mcraf. All rights reserved.
//

import Foundation

class Post: NSObject, NSCoding {
    
    private var _imagePath: String!
    private var _title: String!
    private var _postDesc: String!
    
    var imagePath: String {
        return _imagePath
    }
    
    var title: String {
        return _title
    }
    
    var postDesc: String {
        return _postDesc
    }
    
    init(imagePath: String, title: String, description: String) {
        _imagePath = imagePath
        _title = title
        _postDesc = description
    }
    
    override init() {
        
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
        _imagePath = aDecoder.decodeObjectForKey("imagePath") as? String
        _title = aDecoder.decodeObjectForKey("title") as? String
        _postDesc = aDecoder.decodeObjectForKey("description") as? String
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(_imagePath, forKey: "imagePath")
        aCoder.encodeObject(_postDesc, forKey: "description")
        aCoder.encodeObject(_title, forKey: "title")
    }
}