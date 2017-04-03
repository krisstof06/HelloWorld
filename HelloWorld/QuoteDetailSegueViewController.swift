//
//  QuoteDetailSegueViewController.swift
//  Apprentissage
//
//  Created by Apple on 22/03/2017.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

class QuoteDetailSegueViewController: UIViewController {

  
    @IBOutlet weak var authorLbl: UILabel!
    @IBOutlet weak var bodyLbl: UILabel!
    
    var quote: Quote?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        authorLbl.text = quote?.author
        bodyLbl.text = quote?.body
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
