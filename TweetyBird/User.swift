//
//  User.swift
//  TweetyBird
//
//  Created by Michael De La Cruz on 3/15/17.
//  Copyright © 2017 Michael De La Cruz. All rights reserved.
//

import UIKit
import SwiftyJSON

struct User {
  let name: String
  let username: String
  let bioText: String
  let profileImage: UIImage
  
  init(json: JSON) {
    self.name = json["name"].stringValue
    self.username = json["username"].stringValue
    self.bioText = json["bio"].stringValue
    self.profileImage = UIImage()
  }
}
