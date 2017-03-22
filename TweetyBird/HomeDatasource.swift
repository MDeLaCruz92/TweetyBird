//
//  HomeDatasource.swift
//  TweetyBird
//
//  Created by Michael De La Cruz on 3/14/17.
//  Copyright © 2017 Michael De La Cruz. All rights reserved.
//

import LBTAComponents
import TRON
import SwiftyJSON

class HomeDatasource: Datasource, JSONDecodable {
  
  let users: [User]
  
  required init(json: JSON) throws {
    guard let usersJsonArray = json["users"].array, let tweetsJsonArray = json["tweets"].array else { throw NSError(domain: "com.letsbuildthatapp", code: 1, userInfo: [NSLocalizedDescriptionKey: "Parsing JSON was not valid."])
    }
    
    self.users = usersJsonArray.map{User(json: $0)}
    self.tweets = tweetsJsonArray.map{Tweet(json: $0)}
  }
  
  let tweets: [Tweet]
  
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
