//
//  Tweet.swift
//  TweetyBird
//
//  Created by Michael De La Cruz on 3/19/17.
//  Copyright © 2017 Michael De La Cruz. All rights reserved.
//

import UIKit
import SwiftyJSON

struct Tweet {
  let user: User
  let message: String
  
  init(json: JSON) {
    let userJson = json["user"]
    self.user = User(json: userJson)
    self.message = json["message"].stringValue
  }
}
