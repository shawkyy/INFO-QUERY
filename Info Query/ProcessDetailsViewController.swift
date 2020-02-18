//
//  ProcessDetailsViewController.swift
//  Info Query
//
//  Created by abdallah shawky  on 2/17/20.
//  Copyright © 2020 abdallah shawky . All rights reserved.
//

import UIKit

class ProcessDetailsViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
  
    @IBOutlet weak var imageCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageCollection.delegate = self
        imageCollection.dataSource = self
        registerCell()
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
          0
      }
      
      func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCollection", for: indexPath)
        return cell
      }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           return CGSize.init(width: 80, height: 60)
       }
    func registerCell(){
        imageCollection.register(UINib(nibName: "collectionCellCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "imageCollection")
    }
}
