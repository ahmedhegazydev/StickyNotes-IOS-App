//
//  ViewController.swift
//  ToDoList IOS App
//
//  Created by IOS Dev on 6/11/17.
//  Copyright © 2017 IOS DevTest. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    @available(iOS 2.0, *)
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1;
    }


    @IBOutlet var tableView: UITableView!
    
    var items = [String]()
    
    @IBAction func addNewNote(_ sender: UIBarButtonItem) {
        
        
        createAlert()
        
    }
    
    func createAlert(){
        let alert = UIAlertController(title: "", message: "", preferredStyle: .alert)
        let add = UIAlertAction(title: "Add", style: .default){
            (action) in
            
        }
        let cancel = UIAlertAction(title: "Cancel", style: .default){
            (alert) in
            
            
        }
        alert.addAction(add)
        alert.addAction(cancel)
        
        present(alert, animated: true, completion: nil)
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomTableCell
        cell.textView.text = self.items[indexPath.section]
        
        return cell
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.items.count;
    }
    
    
}

