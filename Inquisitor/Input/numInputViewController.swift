//
//  numInputViewController.swift
//  Inquisitor
//
//  Created by Akhil on 1/21/18.
//  Copyright © 2018 Carnegie. All rights reserved.
//

import UIKit

class numInputViewController: UIViewController {
    
    @IBAction func cancel(_ sender: Any) {
    self.dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var submitBtn: UIButton!
    @IBAction func submitted(_ sender: Any) {
    }
    @IBOutlet weak var inputLabel: UILabel!
    @IBOutlet weak var increment: UIStepper!
    @IBAction func valueDidChange(_ sender: Any) {
    
        if type == "sleep"{ inputLabel.text = "\(Int(increment.value)) hours"}
        if type == "mood"{
            if Int(increment.value) == 1{
                inputLabel.text = "\(Int(increment.value)) - 😡"
            }
            else if Int(increment.value) == 2{
                inputLabel.text = "\(Int(increment.value)) - 🙁"
            }
            else if Int(increment.value) == 3{
                inputLabel.text = "\(Int(increment.value)) - 😐"
                
            }
            else if Int(increment.value) == 4{
                inputLabel.text = "\(Int(increment.value)) - 🙂"
            }
            else if Int(increment.value) == 5{
                inputLabel.text = "\(Int(increment.value)) - 😃"
            }
        }
    }
    
    var type = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.submitBtn.layer.cornerRadius = 16.0
        // Do any additional setup after loading the view.
        print(self.type)
        if type == "sleep"{
            increment.value = 8.0
            inputLabel.text = "8 hours"
            titleLabel.text = "Sleep"
            subTitleLabel.text = "How many hours of sleep did you get last night?"
        }
        if type == "mood"{
            increment.value = 3.0
            increment.maximumValue = 5.0
            increment.minimumValue = 1.0
            inputLabel.text = "\(Int(increment.value)) - 😐"
            titleLabel.text = "Mood"
            subTitleLabel.text = "How do you feel right now on a scale of 1-5?"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
