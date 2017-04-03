//
//  ViewController.swift
//  HelloWorld
//
//  Created by Apple on 20/03/2017.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var HelloLabel: UILabel!
    
    @IBOutlet weak var HelloField: UITextField!
    
    @IBOutlet weak var HelloButton: UIButton!
    
    @IBAction func TapButton(_ sender: Any) {
        
        if(HelloField.text == "poire"){
            HelloField.resignFirstResponder();
            HelloLabel.text = "J'aime ta poire "
        }else{
            HelloLabel.text = "Hello \(HelloField.text!)"
        }
        

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

