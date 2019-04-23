//
//  PhotoViewController.swift
//  newcollectionview
//
//  Created by Dania A & Waad Alkatheri on 28/11/2018.

import UIKit

class PhotoViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    
    
    
    // TODO: access your shared model in AppDelegate
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    // NOT
    // var products = (UIApplication.shared.delegate as! AppDelegate).products
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.demoData()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func demoData() {
        
        //TODO: Fill photos array with UIImages
        
        appDelegate.photos.append(#imageLiteral(resourceName: "bridge"))
        appDelegate.photos.append(#imageLiteral(resourceName: "eiffel"))
        appDelegate.photos.append(UIImage(named: "road")!)
        appDelegate.photos.append(UIImage(named: "standing on the mountain")!)
        appDelegate.photos.append(UIImage(named: "winter")!)
        appDelegate.photos.append(UIImage(named: "waterfall")!)
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //TODO: Return the number of items
        return appDelegate.photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        //TODO: Dequeue each cell, fill it with a photo, and return it
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCell", for: indexPath) as! PhotoCollectionViewCell
        
        
        cell.Photo.image = appDelegate.photos[indexPath.row]
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        //TODO: Set the left and right spacing of a cell to be 2
        return UIEdgeInsets (top: 0, left: 2, bottom: 0, right: 2)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        //TODO: Set the columns to 2 and the rows to 2 in a rectangle area of the collection view (ususally the area visible on the secreen).
        
        let bounds = collectionView.bounds
        
        return CGSize(width: (bounds.width/2)-4 , height: bounds.height/2)
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        //TODO: Set minimumLineSpacing to 0
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
        //TODO: Set minimumInteritemSpacing to 0
        return 0
    }
    
    //EXTRA: After you complete all tasks and see the app runing, you can start changing some values and observe the change, eg., changing the number of columns, minimumLineSpacing, etc.
    
    
}

