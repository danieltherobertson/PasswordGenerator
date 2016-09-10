//
//  ArrayExtension.swift
//  PasswordGenerator
//
//  Created by Daniel Robertson on 10/09/2016.
//  Copyright © 2016 Daniel Robertson. All rights reserved.
//

import Foundation

extension Array
{
    /** Randomizes the order of an array's elements. */
    mutating func shuffle()
    {
        for _ in 0..<10
        {
            sortInPlace { (_,_) in arc4random() < arc4random() }
        }
    }
}