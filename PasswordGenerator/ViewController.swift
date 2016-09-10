//
//  ViewController.swift
//  PasswordGenerator
//
//  Created by Daniel Robertson on 10/09/2016.
//  Copyright © 2016 Daniel Robertson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var a = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","1","2","3","4","5","6","7","8","9","10","!","?"]
    let char = 10
    let letters = NSCharacterSet.letterCharacterSet()
    
    var password = [String]()


    override func viewDidLoad() {
        super.viewDidLoad()
        generatePassword(15)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func charSelector () -> String {
        a.shuffle()
        var char = a[0]
        let letterCheck = char.rangeOfCharacterFromSet(letters)
        if let letterTrue = letterCheck {
            let random = Int(arc4random_uniform(2))
            if random == 1 {
                return char.capitalizedString
            }
        }
        return char
    }
    
    func generatePassword (length: Int) -> String {
        var currentCharacter = 0
        var password = ""
        while currentCharacter < length {
            currentCharacter = currentCharacter + 1
            password = password + charSelector()
        }
        print(password)
        return password
    }
    
    
    
    
    



}

