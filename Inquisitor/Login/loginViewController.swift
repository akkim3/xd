//
//  loginViewController.swift
//  Inquisitor
//
//  Created by Akhil on 1/3/18.
//  Copyright © 2018 Carnegie. All rights reserved.
//

import UIKit
import AVFoundation
import FirebaseAuth

class loginViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var gradientView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    
    
    override func viewDidLayoutSubviews() {
        
        let lineColor = UIColor.white
        self.loginTextField.setBottomLine(borderColor: lineColor)
        loginTextField.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedStringKey.foregroundColor: UIColor.white])
        self.passwordTextField.setBottomLine(borderColor: UIColor.white)
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedStringKey.foregroundColor: UIColor.white])
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Gradient Set Up
        let startingColor = UIColor(red:0.34, green:0.80, blue:0.95, alpha:1.0)
        let endingColor = UIColor(red:0.18, green:0.50, blue:0.93, alpha:1.0)
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [startingColor.cgColor, endingColor.cgColor]
        gradientView.layer.insertSublayer(gradient, at: 0)
        
    //Setting up TTS
        let speechSynthesizer = AVSpeechSynthesizer()
        let speechUtterance = AVSpeechUtterance(string: "Welcome to Inquisitor, enter your email and password to login.")
        
        //speechSynthesizer.speak(speechUtterance)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override var prefersStatusBarHidden: Bool {return true}
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
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
