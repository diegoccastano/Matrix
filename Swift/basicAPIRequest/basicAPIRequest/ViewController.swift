//
//  ViewController.swift
//  basicAPIRequest
//
//  Created by Diego Castaño on 09/09/19.
//  Copyright © 2019 Diego Castaño. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageContainer : UIImageView!
    
    override func viewDidLoad() {
        
        let imageURL = URL(string: "https://www.jpl.nasa.gov/spaceimages/images/largesize/PIA05982_hires.jpg")!
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

