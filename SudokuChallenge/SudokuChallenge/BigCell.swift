//
//  3plus3Cell.swift
//  SudokuChallenge
//
//  Created by J. Anton Garcia on 06/03/2020.
//  Copyright © 2020 J. Anton Garcia. All rights reserved.
//

import UIKit

class BigCell: UIButton {
    override func awakeFromNib(){
        super.awakeFromNib()
        
        layer.borderWidth = 2.5/UIScreen.main.nativeScale
        layer.borderColor = UIColor.black.cgColor
    }
}