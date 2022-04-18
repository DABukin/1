//
//  PhotosFrendCollectionViewController.swift
//  1
//
//  Created by Дмитрий Алексеевич on 17.04.2022.
//

import UIKit

class PhotosFrendCollectionViewController: UICollectionViewController {
    
    var collectionPhotos: [UIImage?] = []
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionPhotos.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotosFrendCell", for: indexPath) as! PhotosFrendCollectionViewCell
        
        let photo = collectionPhotos[indexPath.row]
        cell.photosFrendImage.image = photo
        
        return cell
    }
    
    // MARK: - segue
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showUserPhoto"{
       
            guard let photosFrend = segue.destination as? FrendsPhotosViewController else { return }
            
       
            if let indexPath = collectionView.indexPathsForSelectedItems?.first {
                photosFrend.allPhotos = collectionPhotos //фотки
                photosFrend.countCurentPhoto = indexPath.row
            }
        }
    }
    
    
    
}
