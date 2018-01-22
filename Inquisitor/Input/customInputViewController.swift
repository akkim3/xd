//
//  customInputViewController.swift
//  Inquisitor
//
//  Created by Akhil on 1/21/18.
//  Copyright © 2018 Carnegie. All rights reserved.
//

import UIKit

class customInputViewController: UIViewController {
    var mode = ""
    @IBAction func cancel(_ sender: Any) {
    self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func submit(_ sender: Any) {
    }
    @IBOutlet weak var subTitle: UILabel!
    
    @IBOutlet weak var titleText: UILabel!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var detailTextField: UITextField!
    
    @IBOutlet weak var subBtn: UIButton!
    @IBOutlet weak var detailText: UILabel!
    @IBOutlet weak var dateTextField: UITextField!
    let formatter = DateFormatter()
    override func viewDidLayoutSubviews() {
        
        let lineColor = self.titleText.textColor
        self.titleTextField.setBottomLine(borderColor: lineColor!)
        self.detailTextField.setBottomLine(borderColor: lineColor!)
        self.dateTextField.setBottomLine(borderColor: lineColor!)
        self.titleTextField.tintColor = lineColor
        self.detailTextField.tintColor = lineColor
        self.dateTextField.tintColor = lineColor
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        formatter.dateStyle = DateFormatter.Style.medium
        formatter.timeStyle = DateFormatter.Style.short
        // Do any additional setup after loading the view.
        if mode == "q"{
            titleText.text = "Question"
            detailText.text = "Response"}
        else if mode == "book" {
            titleText.text = "New Entry - Title"
            detailText.text = "Details"}
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = UIDatePickerMode.dateAndTime
        datePicker.addTarget(self, action: #selector(customInputViewController.datePickerValueChanged), for: UIControlEvents.valueChanged)
        dateTextField.text = formatter.string(from: Date())
        dateTextField.inputView = datePicker
        subBtn.layer.cornerRadius = 16.0
        
    }
    @objc func datePickerValueChanged(sender:UIDatePicker){
       
        dateTextField.text = formatter.string(from: sender.date)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
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
