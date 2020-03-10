//
//  ViewController.swift
//  SudokuChallenge
//
//  Created by J. Anton Garcia on 06/03/2020.
//  Copyright © 2020 J. Anton Garcia. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var selectedNumber = ""
    var cell_clicked = false
    var cellNumber = 0
        
    @IBAction func touchCell(_ sender: Cell) {
        if cell_clicked == false{
            sender.updateCell(size: 4.5, color: UIColor.red.cgColor)
            cellNumber = cellCollection.index(of: sender)!
            cell_clicked = true
        } else {
            
        }
    }
    
    @IBOutlet var cellCollection: [Cell]!
    
    @IBAction func touchNumber(_ sender: UIButton) {
        if cell_clicked == true{
            selectedNumber = String(sender.currentTitle ?? "")
            changeCell(withValue: String(selectedNumber), on: cellCollection[cellNumber])
        }
        
    }
    
    @IBAction func touchAnswer(_ sender: UIButton) {
        if cell_clicked == true {
            cellCollection[cellNumber].updateCell(size: 0.5, color: UIColor.black.cgColor)
            cell_clicked = false
            print(String(cellCollection[cellNumber].id ?? ""))
        }
    }
    
    @IBAction func touchDraft(_ sender: UIButton) {
    }
    
    func changeCell(withValue value: String, on button: UIButton){
        button.setTitle(value, for: UIControl.State.normal)
    }
}


