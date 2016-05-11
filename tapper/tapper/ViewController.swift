//
//  ViewController.swift
//  tapper
//
//  Created by Clint Losee on 5/1/16.
//  Copyright © 2016 Clint Losee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Variables
    var maxTaps: Int = 0
    var currentTaps: Int = 0
    
    
    // Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    @IBAction func onCoinTapped(sender: UIButton!) {
        currentTaps += 1
        updateTapsLbl()
        
        if isGameOver() {
            restartGame()
        }
    }
    
    @IBAction func onPlayBtnPressed(sender: UIButton!) {
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            logoImg.hidden = true
            playBtn.hidden = true
            howManyTapsTxt.hidden = true
            
            tapBtn.hidden = false
            tapsLbl.hidden = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updateTapsLbl()
        }
    }
    
    func updateTapsLbl() {
        tapsLbl.text = "\(currentTaps) Taps"
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        }
        
        return false
    }
    
    func restartGame() {
        howManyTapsTxt.text = ""
        maxTaps = 0
        
        logoImg.hidden = false
        playBtn.hidden = false
        howManyTapsTxt.hidden = false
        
        tapBtn.hidden = true
        tapsLbl.hidden = true
    }

}

