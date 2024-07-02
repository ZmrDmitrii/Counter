//
//  ViewController.swift
//  Counter
//
//  Created by Дмитрий Замараев on 22/5/24.
//

import UIKit

class ViewController: UIViewController {
    
    private var dateAndTime = Date().formatted(date: .numeric, time: .shortened)
    private var counter = 0
    
    @IBOutlet private weak var counterLabel: UILabel!
    @IBOutlet private weak var plusButton: UIButton!
    @IBOutlet private weak var minusButton: UIButton!
    @IBOutlet private weak var resetButton: UIButton!
    @IBOutlet private weak var historyTextView: UITextView!
    
    @IBAction private func plusDidTap() {
        counter += 1
        counterLabel.text = "Значение счетчика: \n\(counter)"
        historyTextView.text += "\(dateAndTime): значение изменено на +1\n"
    }
    @IBAction private func minusDidTap() {
        if counter > 0 {
            counter -= 1
            historyTextView.text += "\(dateAndTime): значение изменено на -1\n"
        } else {
            historyTextView.text += "\(dateAndTime): попытка уменьшить значение счетчика ниже 0\n"
        }
        counterLabel.text = "Значение счетчика: \n\(counter)"
    }
    @IBAction private func resetDidTap() {
        counter = 0
        historyTextView.text += "\(dateAndTime): значение счетчика сброшено\n"
        counterLabel.text = "Значение счетчика: \n\(counter)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.text = "Значение счетчика:\n\(counter)"
        historyTextView.text = "История изменений:\n"
    }
}

