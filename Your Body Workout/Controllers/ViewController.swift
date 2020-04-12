//
//  ViewController.swift
//  Your Body Workout
//
//  Created by Jean martin Kyssama on 11/04/2020.
//  Copyright © 2020 Jean martin Kyssama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //a variable that stores the id of the segue
    var segueIdentifier: String = "toWorkout"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tapToWorkoutButton(_ sender: UIButton) {
        performSegue(withIdentifier: segueIdentifier, sender: self)
    }
}

