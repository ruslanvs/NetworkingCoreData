//
//  JSONTrip.swift
//  NetworkingCoreData
//
//  Created by Benjamin Encz on 10/30/15.
//  Copyright © 2015 Make School. All rights reserved.
//

import Foundation
import Gloss

struct JSONTrip: Decodable {
  let tripName: String?
  let waypoints: [JSONWaypoint]?
  
  init?(json: JSON) {
    self.tripName = "trip" <~~ json
    self.waypoints = "waypoints" <~~ json
  }
}