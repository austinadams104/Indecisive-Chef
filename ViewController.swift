//
//  ViewController.swift
//  Indecisive Chef
//
//  Created by Austin Adams on 3/19/17.
//  Copyright © 2017 Austin Adams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchRecipes: UISearchBar!
    @IBOutlet weak var RecipeTableView: UITableView!
    
    var recipes = [Recipe]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = recipes[indexPath.row].name
        return cell
        
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let recipeVC = storyboard?.instantiateViewController(withIdentifier: "recipeViewController"){
            
        }
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if let noteVC = storyboard?.instantiateViewController(withIdentifier: "noteViewController") as? NoteViewController {
//            noteVC.title = tableData[indexPath.row]
//            noteVC.messageText = messageData[indexPath.row]
//            navigationController?.pushViewController(noteVC, animated: true)
//        }
//    }
}

