//
//  NewRecipeViewController.swift
//  Indecisive Chef
//
//  Created by Austin Adams on 4/4/17.
//  Copyright © 2017 Austin Adams. All rights reserved.
//

import UIKit

class NewRecipeViewController: UIViewController {
    
    @IBOutlet weak var recipeNameField: UITextField!
    @IBOutlet weak var recipeInstructionField: UITextView!
    @IBOutlet weak var cookTime: UITextField!
    @IBOutlet weak var ingredientTableView: UITableView!
    
    var ingredients = [[Ingredients]]()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        recipeInstructionField.layer.cornerRadius = 5
        recipeInstructionField.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        recipeInstructionField.layer.borderWidth = 0.5
        recipeInstructionField.clipsToBounds = true
        
        DispatchQueue.main.async {
            self.ingredientTableView.reloadData()
        }
    
        ingredientTableView.register(UINib(nibName: "NewRecipeTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: "recipeCell")
        
        ingredients.append([Ingredients()])
        
        for i in ingredients {
            print(i)
        }
    }
}

extension NewRecipeViewController: UpdateDataDelegate {
    func updateIngredient(index: Int, ingredient: [Ingredients]) {
        ingredients[index] = ingredient
        ingredients.append(ingredient)
        
        ingredientTableView.reloadData()
    }
    
    func deleteIngredient(atIndex index: Int) {
        print(index)
        print(ingredients[index])
        print(ingredients)
        ingredients.remove(at: index)
        ingredientTableView.reloadData()
        print(ingredients)
        
    }
}

extension NewRecipeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ingredients.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "recipeCell", for: indexPath) as! NewRecipeTableViewCell
        
        let ingredient = ingredients[indexPath.row]
        cell.ingredient = ingredient
        cell.index = indexPath.row
        cell.update = self
        
        return cell
    }
}

extension NewRecipeViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        return
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        return
    }
}


public protocol UpdateDataDelegate {
    func updateIngredient(index: Int, ingredient: [Ingredients])
    func deleteIngredient(atIndex: Int)
}



















