//
//  ViewController.swift
//  PasswordGenerator
//
//  Created by Daniel Robertson on 10/09/2016.
//  Copyright © 2016 Daniel Robertson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passwordDisplay: UILabel!
    @IBOutlet weak var passwordButton: NSLayoutConstraint!
    @IBOutlet weak var lengthSlider: UISlider!
    @IBOutlet weak var sliderDisplay: UILabel!
    
    var charLength = Int()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    func charSelector (activeCharSet: Array<String>) -> String {
        var shuffled = activeCharSet
        shuffled.shuffle()
        let char = shuffled[0]
        let letters = NSCharacterSet.letterCharacterSet()
        let letterCheck = char.rangeOfCharacterFromSet(letters)
        if let letterTrue = letterCheck {
            let random = Int(arc4random_uniform(2))
            if random == 1 {
                return char.capitalizedString
            }
        }
        return char
    }
    
    @IBAction func sliderValueChanged(sender: UISlider) {
        var currentValue = Int(sender.value)
        charLength = currentValue
        
        sliderDisplay.text = "\(currentValue)"
    }
    
    
    @IBAction func generatePassword(sender: AnyObject) {
        let password = generatePassword(charLength, punctuation: 2, numbers: 5, seperator: "", sepFreq: 0)

    }
    
    
    func generatePassword (length: Int, punctuation: Int, numbers: Int, seperator: String, sepFreq: Int) -> String {
        let setA = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","1","2","3","4","5","6","7","8","9","10","!","?"]
        let setB = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","1","2","3","4","5","6","7","8","9","10"]
        let setC = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
        var charSet = [String]()
        if punctuation == 0 && numbers == 0 { charSet = setC }
        else if punctuation == 0 && numbers != 0 { charSet = setB }
        else { charSet = setA }
        
        
        var currentCharacter = 0
        var password = ""
        while currentCharacter < length {
            currentCharacter = currentCharacter + 1
            password = password + charSelector(charSet)
        }
        print(password)
        passwordDisplay.text = password
        return password
    }
}