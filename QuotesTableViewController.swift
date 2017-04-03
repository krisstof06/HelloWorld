//
//  QuotesTableViewController.swift
//  HelloWorld
//
//  Created by Apple on 22/03/2017.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

class QuotesTableViewController: UITableViewController {
    
    // va cherche la structure (struct) dans Quotes.swift
    
    // tableau
    var quotes: [Quote] = []

        
    override func viewDidLoad() {
        super.viewDidLoad()

        // affichage des données du fichier plist
        // la virgule permet un double if
        if let path = Bundle.main.path(forResource: "Quotes", ofType: "plist"),
           let data = NSArray(contentsOfFile: path) as? [Dictionary<String, String>] {
            
                // map [dict] -> [quote] = le for du dessous
                quotes = data.map { Quote(author: $0["author"] ?? "unknown", body: $0["body"] ?? "unknown") }
            
                // transformer data en [Quotes]
                /*
                for dict in (data as! [Dictionary<String, String>]) {
                    quotes.append(Quote(author: dict["author"] ?? "unknown", body: dict["body"] ?? "unknown"))
                }
                */
        }
        
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "ma-cell-type-1") as? QuotesTableViewCell
        
        // le ? permet de l'optionnel, cela ne crash pas si rien dedans
        cell?.quoteLbl.text = quotes[indexPath.row].author
        //cell?.quoteLbl.text = quotes[indexPath.row].body
        
        return cell!
    }
    

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "QuoteDetailSegue"{
            if let quoteDetailController = segue.destination as? QuoteDetailSegueViewController{
                
                // a tester avant si not null (1ere solution)
                quoteDetailController.quote = quotes[tableView.indexPathForSelectedRow!.row]
            
                // 2eme solution (effectue le cast et verifie si not null)
                /*
                 if let cell = sender as? QuotesTableViewCell{
                    tableView.indexPath(for: cell)
                }
                */
            }
        }
    }

}




























