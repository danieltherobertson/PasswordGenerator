//
//  PasswordsView.swift
//  PasswordGenerator
//
//  Created by Daniel Robertson on 24/09/2016.
//  Copyright © 2016 Daniel Robertson. All rights reserved.
//

import UIKit

class PasswordsView: UIView {
    
    var passwordsView: UICollectionView!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        passwordsView.frame = self.bounds
        
    }
    
    //-----------------INITIALISING THE COLLECTION VIEW INSIDE THE UIVIEW ----------------------------------------------
    // MARK: Initialization
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 300, height: 100)
        layout.minimumLineSpacing = 20
        
        passwordsView = UICollectionView(frame: self.bounds, collectionViewLayout: layout)
        passwordsView.translatesAutoresizingMaskIntoConstraints = false
        passwordsView.dataSource = self
        passwordsView.delegate = self
        
        let nib = UINib(nibName: "gameCellNib", bundle: nil)
        gamesView.registerNib(nib, forCellWithReuseIdentifier: "gameCell")
        gamesView.backgroundColor = UIColor.clearColor()
        self.addSubview(gamesView)
        
        //Load any existing gameSave types from gameSaves
        loadGame()
        
    }


    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
