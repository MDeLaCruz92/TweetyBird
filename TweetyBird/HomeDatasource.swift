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
  
  let tweets: [Tweet] = {
    let myUser = User(name: "Michael De La Cruz", username: "@iOS_Developer", bioText: "We fear what we don't know, but once we know it, we no longer fear it.", profileImage: #imageLiteral(resourceName: "profile_image"))
    let tweet = Tweet(user: myUser, message: "More life, more time to get it done right. Patience is key!")
    
    let tweet2 = Tweet(user: myUser, message: "Now this a story all about how my life got flipped-turned upside down, And I like to take a minute. Just sit right there, I'll tell you how I became the prince of a town called Bel Air")

    return [tweet, tweet2]
  }()
  
  override func footerClasses() -> [AnyClass]? {
    return [UserFooter.self]
  }
  
  override func headerClasses() -> [AnyClass]? {
    return [UserHeader.self]
  }
  
  override func cellClasses() -> [DatasourceCell.Type] {
    return [UserCell.self, TweetCell.self]
  }
  
  override func item(_ indexPath: IndexPath) -> Any? {
    if indexPath.section == 1 {
      return tweets[indexPath.item]
    }
    return users[indexPath.item]
  }
  
  override func numberOfSections() -> Int {
    return 2
  }
  
  override func numberOfItems(_ section: Int) -> Int {
    if section == 1 {
      return tweets.count
    }
    return users.count
  }
  

}
