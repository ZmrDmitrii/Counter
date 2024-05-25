//
//  ViewController.swift
//  Counter
//
//  Created by Дмитрий Замараев on 22/5/24.
//

import UIKit

class ViewController: UIViewController {
    
    var dateAndTime = Date().formatted(date: .numeric, time: .shortened)
    
    var counter = 0
    
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBOutlet weak var plusButton: UIButton!
    
    @IBOutlet weak var minusButton: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var changeHistory: UITextView!
    
    @IBAction func plusDidTap() {
        counter += 1
        counterLabel.text = "Значение счетчика: \n\(counter)"
        changeHistory.text += "\(dateAndTime): значение изменено на +1\n"
    }
    
    @IBAction func minusDidTap() {
        if counter > 0 {
            counter -= 1
            changeHistory.text += "\(dateAndTime): значение изменено на -1\n"
        } else {
            changeHistory.text += "\(dateAndTime): попытка уменьшить значение счетчика ниже 0\n"
        }
        counterLabel.text = "Значение счетчика: \n\(counter)"
    }
    
    @IBAction func resetDidTap() {
        counter = 0
        changeHistory.text += "\(dateAndTime): значение счетчика сброшено\n"
        counterLabel.text = "Значение счетчика: \n\(counter)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.text = "Значение счетчика:\n\(counter)"
        changeHistory.text = "История изменений:\n"
    }


}

