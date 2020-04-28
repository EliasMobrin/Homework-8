//
//  ViewController.swift
//  Homework 8
//
//  Created by Elias Mobrin on 4/28/20.
//  Copyright © 2020 Elias Mobrin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var outputLabel: UILabel!
    var originalRect: CGRect!
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBAction func foundTap(_ sender: Any) {
        outputLabel.text = "Door 1 Unlocked!"
    }
    
    @IBAction func slideMe(_ sender: Any) {
        outputLabel.text = "Door 2 Unlocked!"
    }
    
    
    @IBAction func rotation(_ sender: Any) {
        var recognizer: UIRotationGestureRecognizer
        var feedback: String //temporary
        var rotation: CGFloat
        
        recognizer=sender as! UIRotationGestureRecognizer
        rotation=recognizer.rotation
        imageView.transform = CGAffineTransform(rotationAngle: 0.0)
        outputLabel.text = "Door 3 Opened, you can leave now!"
        feedback=String(format: "Rotated, Redians: %1.2f, Velocity: %1.2f",
        
        Float(recognizer.rotation),Float(recognizer.velocity))
        imageView.transform = CGAffineTransform(rotationAngle: rotation)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        becomeFirstResponder()
        
        originalRect=imageView.frame;
        var tempImageView: UIImageView
        tempImageView=UIImageView(image:UIImage(named: "images.png"))
        tempImageView.frame=originalRect
        view.addSubview(tempImageView)
        self.imageView=tempImageView
        
        
    }


}

