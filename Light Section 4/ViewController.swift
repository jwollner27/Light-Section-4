//
//  ViewController.swift
//  Light Section 4
//
//  Created by Student on 3/16/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var lightButton: UIButton!
    
    var lightOn = true
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    fileprivate func updateUI() {
        if lightOn {
            view.backgroundColor = .white
            lightButton.setTitle("Off", for: .normal)
        } else {
            view.backgroundColor = .black
            lightButton.setTitle("On", for: .normal)
        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }
    
}

