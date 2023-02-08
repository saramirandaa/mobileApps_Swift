//
//  ViewController.swift
//  Dice
//
//  Created by Sara Miranda on 07/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dice1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onButtonPress(_ sender: UIButton) {
        let dice : Array =
        [UIImage(imageLiteralResourceName: "uno"), UIImage(imageLiteralResourceName: "dos"),UIImage(imageLiteralResourceName: "tres"),UIImage(imageLiteralResourceName: "cuatro"),UIImage(imageLiteralResourceName: "cinco"),UIImage(imageLiteralResourceName: "seis")]
        dice1.image=dice.randomElement()
    }
    
}

