//
//  Cell.swift
//  SudokuChallenge
//
//  Created by J. Anton Garcia on 06/03/2020.
//  Copyright © 2020 J. Anton Garcia. All rights reserved.
//

import UIKit

class Cell: UIButton {
    
    var id: String?
    
    override func awakeFromNib(){
        super.awakeFromNib()
        
        setTitle("", for: .normal)
        layer.borderWidth = 0.5/UIScreen.main.nativeScale
        layer.borderColor = UIColor.black.cgColor
        id = accessibilityIdentifier
    }
    
    func updateCell(size: CGFloat, color: CGColor){
        layer.borderWidth = size/UIScreen.main.nativeScale
        layer.borderColor = color
    }
}
