//
//  ViewController.swift
//  BullsEye
//
//  Created by Athira Paul on 2019-06-01.
//  Copyright © 2019 Athira Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentValue: Int = 0
    var targetValue:Int = 0
    @IBOutlet weak var slider:UISlider!
    @IBOutlet weak var label:UILabel!
    @IBOutlet weak var scoreLabel:UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let roundedvalue = slider.value.rounded()
        // print("rounded value of slider\(roundedvalue)")
        currentValue = Int( roundedvalue )
        targetValue = Int.random(in: 1...100)
        
        newRound()
    }

    @IBAction func ShowAlert(){
        let difference :Int = abs(currentValue - targetValue)
        let points: Int = 100 - difference
        
       
        
        let score = "You have scored \(points) Points."
        let alert = UIAlertController(title: "BULL'S EYE", message: score, preferredStyle:.actionSheet)
        let action = UIAlertAction(title: "Okay", style: .default, handler: nil)
        alert.addAction(action)
        present(alert,animated: true,completion: nil)
        newLabel()
        newRound()
    }
    @IBAction func SliderMoved(_ slider:UISlider){
       // print("value of slider\(slider.value)")
        let roundedvalue = slider.value.rounded()
       // print("rounded value of slider\(roundedvalue)")
        currentValue = Int( roundedvalue )
       
    }
    
    func newRound(){
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        newLabel()
    }
    
    func newLabel(){
        label.text = String(targetValue)
    }
    
    
}

