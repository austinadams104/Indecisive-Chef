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
    
    var tableData = [Recipes]()
    var collectionData = [Ingredients]()
    var recipeInstructionData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableData =  Recipes.fetchAllRecipes(in: Store.sharedMainContext())
        collectionData = Ingredients.fetchAllIngredients(in: Store.sharedMainContext())
    }

    @IBAction func unwindToMainManu(_ sender: UIStoryboardSegue){
        if sender.identifier == "saveSegue",
            let addRecipeVC = sender.source as? NewRecipeViewController,
            let newRecipeName = addRecipeVC.recipeNameField.text,
            //let newIngredient = addRecipeVC.ingredientCollectionView.,
            //let newRecipeIngredients = addRecipeVC.recipeIngredientField.text,
            let newRecipeInstruction = addRecipeVC.recipeInstructionField.text,
            let newCookTime = Int(addRecipeVC.cookTime.text!) {
            
            Recipes.save(newRecipe: Recipe(name: newRecipeName, ingredients: [], instructions: newRecipeInstruction, time: newCookTime), context: Store.sharedMainContext())
            //this is wrong, collectionData won't hold one recipes ingredients...
        }
        RecipeTableView.reloadData()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = tableData[indexPath.row].name
        return cell
        
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let recipeVC = storyboard?.instantiateViewController(withIdentifier: "recipeViewController") as? RecipeViewController {
            recipeVC.title = tableData[indexPath.row].name
            var ingredientString = ""
            for index in 0..<tableData[indexPath.row].ingredients.count {
                ingredientString += "\(tableData[indexPath.row].ingredients[index].amount) \(tableData[indexPath.row].ingredients[index].measurement) \(tableData[indexPath.row].ingredients[index].name)\n"
            }
            recipeVC.ingredientText = ingredientString
            recipeVC.instructionText = tableData[indexPath.row].directions!
            navigationController?.pushViewController(recipeVC, animated: true)
        }
        

    }
}


