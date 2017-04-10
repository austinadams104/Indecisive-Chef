//
//  IngredientViewController.swift
//  Indecisive Chef
//
//  Created by Austin Adams on 4/2/17.
//  Copyright © 2017 Austin Adams. All rights reserved.
//

import UIKit

class IngredientViewController: UIViewController {

    var recipeData = Recipe.ingredients
    var totalIngredients = [String]()
   // var unique = Array(Set(recipeData))
    
    @IBOutlet weak var ingredientCollectionView : UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var allIngredients = [String]()
        
        for recipe in recipeData {
            for ingredient in recipe.ingredients {
                if (!allIngredients.contains(ingredient.lowercased())) {
                    allIngredients.append(ingredient.lowercased())
                }
                
            }
        }
        
        DispatchQueue.main.async {
            self.totalIngredients = allIngredients
            self.ingredientCollectionView.reloadData()
        }
        
        ingredientCollectionView.register( UINib(nibName: "IngredientCollectionViewCell", bundle: Bundle.main), forCellWithReuseIdentifier: "cell")
    }
}

extension IngredientViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return totalIngredients.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! IngredientCollectionViewCell
        
        cell.ingredientName.text = totalIngredients[indexPath.row].capitalized
        cell.quantity.text = "1"
        return cell
    }
}

extension IngredientViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        if let imageVC = storyboard?.instantiateViewController(withIdentifier: "ingredientViewController") as? IngredientViewController {
//            
//            imageVC.imageLabel = photos[indexPath.row].title
//            imageVC.photoData = photos[indexPath.row]
//            //imageVC.imageViewer.image = nil
//            navigationController?.pushViewController(imageVC, animated: true)
//        }
    }
}
