//
//  HelloViewController.swift
//  HelloWorld
//
//  Created by Apple on 21/03/2017.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

class HelloViewController: UIViewController {

    @IBOutlet weak var HelloLB: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        HelloLB.text = "Je crois que ca marche"
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
}
