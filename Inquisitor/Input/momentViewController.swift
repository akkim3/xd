//
//  momentViewController.swift
//  Inquisitor
//
//  Created by Akhil on 1/20/18.
//  Copyright © 2018 Carnegie. All rights reserved.
//

import UIKit

class momentViewController: UIViewController {
    //Super jank don't roast pls
    var desiredType = ""
    @IBAction func cancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func sleepIconButton(_ sender: Any) {
        desiredType = "sleep"
    }
    
    @IBAction func sleepTextButton(_ sender: Any) {
        desiredType = "sleep"
    }
    
    @IBAction func moodTextButton(_ sender: Any) {
        desiredType = "mood"
    }
    
    @IBAction func moodIconButton(_ sender: Any) {
        desiredType = "mood"
    }
    
    @IBAction func journalTextButton(_ sender: Any) {
        desiredType = "book"
        print("bookkkkk")
    }
    @IBAction func journalIconButton(_ sender: Any) {
        desiredType = "book"
    }
    
    @IBAction func qIconButton(_ sender: Any) {
        desiredType = "q"
    }
    @IBAction func qTextButton(_ sender: Any) {
        desiredType = "q"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
 
            if let vc = segue.destination as? numInputViewController{
               vc.type = desiredType
            }
            else if let vc = segue.destination as? customInputViewController{
                if desiredType == "book"{
                    vc.mode = "book"
                    
                }
                else{
                    
                    vc.mode = "q"
                }
        }
        
            
            
      
        
        
    }
    

}
