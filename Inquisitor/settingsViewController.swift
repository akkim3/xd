//
//  settingsViewController.swift
//  Inquisitor
//
//  Created by Akhil on 1/2/18.
//  Copyright © 2018 Carnegie. All rights reserved.
//

import UIKit

class settingsViewController: UIViewController {

    @IBOutlet weak var exportButton: UIButton!
    @IBOutlet weak var logOutBtn: UIButton!
    @IBAction func export(_ sender: Any) {
    
    }
    @IBAction func cancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.logOutBtn.layer.cornerRadius = 16.0
        self.exportButton.layer.cornerRadius = 16.0
        print("Settings")
        // Do any additional setup after loading the view.
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
