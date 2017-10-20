// committed 
//  ViewController.swift
//  Advanced Segues
//
//  Created by George Garcia on 6/5/17.
//  Copyright © 2017 George. All rights reserved.
//

import UIKit

let globeVar = "George"

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var activeRow = 0

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 4
        
    }
 
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = "Row \(indexPath.row)"
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        activeRow = indexPath.row
        
        performSegue(withIdentifier: "toSecondViewController", sender: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(globeVar)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toSecondViewController"{
            
            let secondViewController = segue.destination as! SecondViewController
            
            secondViewController.activeRow = activeRow
            
            //secondViewController.username = "Krista"
        }
        
    }


}

