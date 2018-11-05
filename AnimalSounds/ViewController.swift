//
//  ViewController.swift
//  AnimalSounds
//
//  Created by Mark Meretzky on 11/5/18.
//  Copyright © 2018 New York University School of Professional Studies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animalSoundLabel: UILabel!;
    let meowSound: SimpleSound = SimpleSound(named:"meow");
    let woofSound: SimpleSound = SimpleSound(named:"woof");
    let mooSound: SimpleSound = SimpleSound(named:"moo");
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func catButtonTapped(_ sender: UIButton) {
        animalSoundLabel.text = "Meow!";
        meowSound.play();
    }
    
    @IBAction func dogButtonTapped(_ sender: UIButton) {
        animalSoundLabel.text = "Woof!";
        woofSound.play();
    }
    
    @IBAction func cowButtonTapped(_ sender: UIButton) {
        animalSoundLabel.text = "Moo!";
        mooSound.play();
    }
}

