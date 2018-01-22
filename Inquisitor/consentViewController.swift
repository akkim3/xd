//
//  consentViewController.swift
//  Inquisitor
//
//  Created by Akhil on 1/16/18.
//  Copyright © 2018 Carnegie. All rights reserved.
//

import UIKit

class consentViewController: UIViewController {
    
    
    @IBOutlet weak var mainTitle: UILabel!
   //"button" is the fancy one
    @IBOutlet weak var button: UIButton!
    
   
    @IBOutlet weak var subTitle: UILabel!
    @IBOutlet weak var textView: UITextView!
    let mainHeadings = ["Overview", "Data Collection", "Privacy Policy", "Data Usage"]
    let subTitles = ["Inquisitor allows you to gain insight into your lives simply and quickly", "We only collect any data you provide to us", "Only you and the people you choose can see your data","In the future, your data may be anonoymously sent to researchers for research purposes"]
    var index = -1
    @IBAction func declined(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func consentPushed(_ sender: Any) {
       /* let taskViewController = ORKTaskViewController(task: ConsentTask, taskRun: nil)
        taskViewController.delegate = self
        present(taskViewController, animated: true, completion: nil)
         */
       
        if index == -1 {
            animateText(indexInput: -1)
            button.titleLabel?.text = "I agree"
            
        }
        else if index == 0 {animateText(indexInput: 0)}
        else if index == 1 {animateText(indexInput: 1)}
        else if index == 2 {animateText(indexInput: 2)}
        else if index == 3 {performSegue(withIdentifier:"signUp", sender: self)}
    }
    func animateText(indexInput:Int){
        UIView.animate(withDuration: 2, animations: {
            self.mainTitle.alpha = 0.0
            self.subTitle.alpha = 0.0
            self.mainTitle.text = self.mainHeadings[indexInput + 1]
            self.subTitle.text = self.subTitles[indexInput + 1]
            self.mainTitle.alpha = 1.0
            self.subTitle.alpha = 1.0
        }, completion: nil)
        
        index = index + 1
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.index = -1
        print(self.index)
        self.button.titleLabel?.textColor = UIColor.white
        let startingColor = UIColor(red:0.34, green:0.80, blue:0.95, alpha:1.0)
        let endingColor = UIColor(red:0.18, green:0.50, blue:0.93, alpha:1.0)
         let colors = [startingColor, endingColor]
        self.button.applyGradient(colours: colors)
        self.button.layer.cornerRadius = 16.0
      
    

    }
    override func viewWillAppear(_ animated: Bool) {
        
 
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
    

