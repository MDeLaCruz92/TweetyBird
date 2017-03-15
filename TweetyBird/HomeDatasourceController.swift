//
//  HomeDataSourceController.swift
//  TweetyBird
//
//  Created by Michael De La Cruz on 3/14/17.
//  Copyright © 2017 Michael De La Cruz. All rights reserved.
//

import LBTAComponents

class HomeDatasourceController: DatasourceController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let homeDatasource = HomeDatasource()
    self.datasource = homeDatasource
  }
  
  override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: view.frame.width, height: 150)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
    return CGSize(width: view.frame.width, height: 50)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
    return CGSize(width: view.frame.width, height: 100)
  }
  
}
