//
//  ViewController.swift
//  BengaliApp
//
//  Created by Ramakrishna on 21/11/14.
//  Copyright (c) 2014 Ramakrishna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var textLabel: UILabel!
    
    
    
    @IBOutlet weak var numberLabel: UILabel!
    
    
    
    @IBOutlet weak var currencyLabel: UILabel!
    
    
    
    @IBOutlet weak var dateLabel: UILabel!
    
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    var numberFormatter: NSNumberFormatter{
        let formatter = NSNumberFormatter()
        formatter.numberStyle = .DecimalStyle
        return formatter
    }
    
    var currencyFormatter: NSNumberFormatter{
        let formatter = NSNumberFormatter()
        formatter.numberStyle = .CurrencyStyle
        return formatter
    }
    
    var dateFormatter:NSDateFormatter{
        let formatter = NSDateFormatter()
        formatter.dateStyle = .MediumStyle
        formatter.timeStyle = .MediumStyle
        return formatter
    }
    
    
func PopuLateValue(){
    textLabel.text = NSLocalizedString("GOOD_MORNING",  comment: "Good Morning")
        numberLabel.text = numberFormatter.stringFromNumber(90000)
        currencyLabel.text = currencyFormatter.stringFromNumber(5000)
        dateLabel.text = dateFormatter.stringFromDate(NSDate())
        imageView.image = UIImage(named:"Hello")
    }
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        PopuLateValue()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

