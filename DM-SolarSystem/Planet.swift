//
//  Planet.swift
//  DM-SolarSystem
//
//  Created by Chad on 4/6/17.
//  Copyright © 2017 Chad Williams. All rights reserved.
//

import Foundation

class Planet {
  
  init(name: String, diameter: Int, dayLength: Float, millionKMsFromSun: Float) {
    self.name = name
    self.imageName = name.lowercased()
    self.diameter = diameter
    self.dayLength = dayLength
    self.millionKMsFromSun = millionKMsFromSun
  }
  
  let name: String
  let imageName: String
  let diameter: Int
  let dayLength: Float
  let millionKMsFromSun: Float
}
