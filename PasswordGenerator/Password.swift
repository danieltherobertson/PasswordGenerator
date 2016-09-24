//
//  PassWord.swift
//  PasswordGenerator
//
//  Created by Daniel Robertson on 24/09/2016.
//  Copyright © 2016 Daniel Robertson. All rights reserved.
//

import UIKit

class Password: NSObject {
    var name: String!
    var password: String!
    
    init(name: String, password: String) {
        self.name = name
        self.password = password
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self.name, forKey: "name")
        aCoder.encodeObject(self.password, forKey: "password")
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.name = aDecoder.decodeObjectForKey("name") as? String
        self.password = aDecoder.decodeObjectForKey("password") as? String
    }


}
