//
//  HomeDatasource.swift
//  TweetyBird
//
//  Created by Michael De La Cruz on 3/14/17.
//  Copyright © 2017 Michael De La Cruz. All rights reserved.
//

import LBTAComponents

class HomeDatasource: Datasource {
  
  let words = ["user1", "user2", "user3"]
  
  override func footerClasses() -> [AnyClass]? {
    return [UserFooter.self]
  }
  
  override func headerClasses() -> [AnyClass]? {
    return [UserHeader.self]
  }
  
  override func cellClasses() -> [DatasourceCell.Type] {
    return [UserCell.self]
  }
  
  override func item(_ indexPath: IndexPath) -> Any? {
    return words[indexPath.item]
  }
  
  override func numberOfItems(_ section: Int) -> Int {
    return words.count
  }
}
