//
//  RoundButtonData.swift
//  Your Body Workout
//
//  Created by Jean martin Kyssama on 11/04/2020.
//  Copyright © 2020 Jean martin Kyssama. All rights reserved.
//

import UIKit
//
@IBDesignable

class RoundButtonData: UIButton {
    // largeur bouton et marges
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    //largeur marge du boutton
    @IBInspectable var largeurMarge: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = largeurMarge
        }
    }
    
    //couleur marge bouton
    @IBInspectable var couleurBouton: UIColor = UIColor.systemPurple {
        didSet {
            self.layer.borderColor = couleurBouton.cgColor
        }
    }
}

