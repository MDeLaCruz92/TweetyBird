//
//  HomeDatasource.swift
//  TweetyBird
//
//  Created by Michael De La Cruz on 3/14/17.
//  Copyright © 2017 Michael De La Cruz. All rights reserved.
//

import LBTAComponents

class HomeDatasource: Datasource {
  
  let users: [User] = {
    let myUser = User(name: "Michael De La Cruz", username: "@iOS_Developer", bioText: "We fear what we don't know, but once we know it, we no longer fear it.", profileImage: #imageLiteral(resourceName: "profile_image"))
    
    let bobbyUser = User(name: "Bobby", username: "@Bobbyyyy", bioText: "Bobby is a Mobile and Web Developer who likes to take risks and go beyond the expectations for his clients.", profileImage: #imageLiteral(resourceName: "bobbys_profile_image"))
    
    let iOSTenCourse = User(name: "iOS 10 Course", username: "@iOS10Course", bioText: "This recently released course on https://github.com/MDelaCruz92 provides a helping hand and excellent guidance on how to use UITableView and UICollectionView", profileImage: #imageLiteral(resourceName: "profile_image"))
        
    return [myUser, bobbyUser, iOSTenCourse]
  }()
  
//  let words = ["user1", "user2", "user3"]
  
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
    return users[indexPath.item]
  }
  
  override func numberOfItems(_ section: Int) -> Int {
    return users.count
  }
}
