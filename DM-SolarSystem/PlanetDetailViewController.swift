//
//  PlanetDetailViewController.swift
//  DM-SolarSystem
//
//  Created by Chad on 4/6/17.
//  Copyright © 2017 Chad Williams. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {
  
  @IBOutlet weak var planetDetailImage: UIImageView!
  
  @IBOutlet weak var planetDetailName: UILabel!
  
  @IBOutlet weak var planetDetailDiameter: UILabel!
  

  @IBOutlet weak var planetDetailDayLength: UILabel!
  
  @IBOutlet weak var planetDetailDistance: UILabel!
  
  
  var planet: Planet? {
    didSet {
      updateWithPlanet()
    }
  }
  
  func updateWithPlanet() {
    guard let planet = planet, self.isViewLoaded else { return }
    title = planet.name
    planetDetailName.text = planet.name
    planetDetailImage.image = UIImage(named: planet.imageName)
    planetDetailDiameter.text = "\(planet.diameter) km"
    planetDetailDistance.text = "\(planet.millionKMsFromSun) million km"
    planetDetailDayLength.text = "\(planet.dayLength)"
    
  }
  
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    updateWithPlanet()
    view.backgroundColor = .black
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
