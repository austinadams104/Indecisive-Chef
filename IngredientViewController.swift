//
//  IngredientViewController.swift
//  Indecisive Chef
//
//  Created by Austin Adams on 4/2/17.
//  Copyright © 2017 Austin Adams. All rights reserved.
//

import UIKit

class IngredientViewController: UIViewController {

    @IBOutlet weak var ingredientCollectionView : UICollectionView!
    
//    var ingredientData =
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ingredientCollectionView.register( UINib(nibName: "IngredientCollectionViewCell", bundle: Bundle.main), forCellWithReuseIdentifier: "cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as!IngredientCollectionViewCell
        
//        cell.imageView.image = nil
//        cell.photoData = photos[indexPath.row]
        return cell
    }
}

extension ViewController: UICollectionViewDelegate {
    
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
