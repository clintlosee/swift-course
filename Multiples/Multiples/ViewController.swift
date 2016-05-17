//
//  ViewController.swift
//  Multiples
//
//  Created by Clint Losee on 5/16/16.
//  Copyright © 2016 Clint Losee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Variables
    var multiple: Int = 1
    var currentValue: Int = 0
    var sum: Int = 0
    var maxValue: Int = 50
    
    
    // Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var multiplesTxt: UITextField!
    @IBOutlet weak var resultLbl: UILabel!
    
    @IBAction func onPlayBtnPressed(sender: UIButton!) {
        
        if multiplesTxt.text != nil && multiplesTxt.text != "" {
            logoImg.hidden = true
            playBtn.hidden = true
            multiplesTxt.hidden = true
            
            addBtn.hidden = false
            resultLbl.hidden = false
            
            multiple = Int(multiplesTxt.text!)!
        }
    }

    @IBAction func onAddBtnTapped(sender: UIButton!) {
        sum = currentValue + multiple
        resultLbl.text = "\(currentValue) + \(multiple) = \(sum)"
        currentValue += multiple
        
        if isOver() {
            restartMultiples()
        }
    }
    
    func isOver() -> Bool {
        if sum > maxValue {
            return true
        }
        return false
    }
    
    func restartMultiples() {
        logoImg.hidden = false
        playBtn.hidden = false
        multiplesTxt.hidden = false
        
        addBtn.hidden = true
        resultLbl.hidden = true
        
        multiple = 1
        currentValue = 0
        sum = 0
        multiplesTxt.text = ""
        resultLbl.text = "Press Add to add!"
    }
}

