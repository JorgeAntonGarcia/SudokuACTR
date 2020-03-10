//
//  SupportCell.swift
//  SudokuChallenge
//
//  Created by J. Anton Garcia on 10/03/2020.
//  Copyright © 2020 J. Anton Garcia. All rights reserved.
//

import UIKit

class SupportCell: UIButton {
    override func awakeFromNib(){
        super.awakeFromNib()
        setTitle("", for: .normal)
        isUserInteractionEnabled = false
    }
}
