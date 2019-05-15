//
//  ViewController.swift
//  GitLearning
//
//  Created by Bill Tanthowi Jauhari on 15/05/19.
//  Copyright © 2019 Batavia Hack Town. All rights reserved.
//

// Real world Entities => Computer
// whats make this object unique? this object is unique because computer could do complex calculating like human brains do. this object is
// how to describe this object? this object build by much component, like monitor to show what computer do, CPU to calculate and process the input of user, mouse to navigate anything, keyboard to type anything user need
// what does this object do? this object help human to calculating and help human to fix their office work, like typing documents, make presentation, calculate using excel. etc
//
//
//
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var ages: UILabel!
    @IBOutlet weak var gender: UILabel!
    @IBOutlet weak var imageProfile: UILabel!
    @IBOutlet weak var tambahUmur: UIButton!
    
    var learner: LearnerModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        learner = LearnerModel(name: "Bill Tanthowi Jauhari", age: 30, gender: "Pria", imageProfile: "image")
        updateUI()
    }
    
    private func updateUI() {
        if let learn = learner {
            name.text = learn.name
            ages.text = "\(learn.age)"
            gender.text = learn.gender
            imageProfile.text = learn.imageProfile
        }
    }
    
    @IBAction func tambahUmurAction(_ sender: UIButton) {
        learner?.increaseAage()
        updateUI()
    }
    
    public func indonesia() {
        print("hello");
    }
}

