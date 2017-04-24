//
//  IngredientViewController.swift
//  Indecisive Chef
//
//  Created by Austin Adams on 4/2/17.
//  Copyright © 2017 Austin Adams. All rights reserved.
//

import UIKit

class IngredientViewController: UIViewController {

    var ingredientData = Ingredients.fetchAllIngredients(in: Store.sharedMainContext())
    var totalIngredients = [String]()
    var measurements = [String]()
    var totalQuantity = [String]()
   // var unique = Array(Set(recipeData))
    
    @IBOutlet weak var ingredientCollectionView : UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var allIngredients = [String]()
        var units = [String]()
        var amounts = [String]()
        
        for ingredient in ingredientData {
            if (!allIngredients.contains((ingredient.name?.lowercased())!)) {
                allIngredients.append((ingredient.name?.lowercased())!)
                units.append(ingredient.measurement!)
                amounts.append(ingredient.amount!) //need to error check for float values
            }
        }
        
        DispatchQueue.main.async {
            self.totalIngredients = allIngredients
            self.measurements = units
            self.totalQuantity = amounts
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
        cell.measurement.text = measurements[indexPath.row]
        cell.quantity.text = String(totalQuantity[indexPath.row])
        return cell
    }
}

extension IngredientViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

    }
}
