//
//  SubtitleTableViewController.swift
//  Apprentissage
//
//  Created by Apple on 23/03/2017.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

class SubtitleTableViewController: UITableViewController {

    // va cherche la structure (struct) dans Quotes.swift
    
    // tableau
    var quotes: [Quote] = [
        Quote(author:"Thomas", body:"iOS c'est génial"),
        Quote(author:"Steve Jobs", body:"Le meilleur")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    
    
    // nombre de section
    override func numberOfSections(in tableView: UITableView) -> Int {
        // 1 section
        return 1
    }
    
    // nombre de ligne
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // nombre de ligne dynamique (donc 3 pour l'exemple)
        return quotes.count
    }
    
    // surcharge de la class Tableview (afficahege du tableau)
    //IndexPath (0,0) nb section, nb colonne
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Cretion d'une cellule (UITableView)
        let cell = tableView.dequeueReusableCell(withIdentifier: "ma-cell-type-2") as? SubtitleTableViewCell
        
        cell?.Title.text = quotes[indexPath.row].author
        cell?.Subtitle.text = quotes[indexPath.row].body
        
        return cell!
    }
    
        
   
}
