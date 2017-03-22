//
//  Service.swift
//  TweetyBird
//
//  Created by Michael De La Cruz on 3/21/17.
//  Copyright © 2017 Michael De La Cruz. All rights reserved.
//

import Foundation
import TRON
import SwiftyJSON

struct Service {
  
  let tron = TRON(baseURL: "https://api.letsbuildthatapp.com")
  
  static let sharedInstance = Service()
  
  func fetchHomeFeed(completion: @escaping (HomeDatasource?, Error?) -> ()) {
    
    let request: APIRequest<HomeDatasource, JSONError> = tron.request("/twitter/home1")
    
    request.perform(withSuccess: { (homeDatasource) in
      print("Successfully fetched our json objects")
      completion(homeDatasource, nil)
    }) { (err) in
      
      completion(nil, err)
    }
  }
  
  class JSONError: JSONDecodable {
    required init(json: JSON) throws {
      print("JSON ERROR")
    }
  }
  
}
