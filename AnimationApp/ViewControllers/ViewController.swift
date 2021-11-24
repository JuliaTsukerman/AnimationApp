//
//  ViewController.swift
//  AnimationApp
//
//  Created by Test on 11/23/21.
//


import Spring
import Foundation
class ViewController: UIViewController {
    
    @IBOutlet var springAnimationView: SpringImageView!
    @IBOutlet var springParametersLabel: SpringLabel!
   
    
    let springAnimations = SpringAnimation.getSpringAnimations()
    var animationIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        springAnimationView.layer.cornerRadius = 15
    }
    
    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        
        springAnimationView.animation = springAnimations[animationIndex].preset
        springAnimationView.curve = springAnimations[animationIndex].curve
        springAnimationView.force = springAnimations[animationIndex].force
        springAnimationView.duration = springAnimations[animationIndex].duration
        springAnimationView.delay = springAnimations[animationIndex].delay
        
        springAnimationView.animate()
        springAnimationView.animateNext {
            if self.animationIndex < self.springAnimations.count-1{
                self.animationIndex += 1
            } else {
                self.animationIndex = 0
            }
        }
        (sender as SpringButton).setTitle("\(springAnimations[animationIndex+1].preset)", for: .normal)
        updateLabel()
    }
    private func updateLabel() {
        let labelDescription = """
            Preset: \(springAnimations[animationIndex].preset)
            Curve:\(springAnimations[animationIndex].curve)
            Force:\(springAnimations[animationIndex].force)
            Duration:\(springAnimations[animationIndex].duration)
            Delay:\(springAnimations[animationIndex].delay)
"""
        
        springParametersLabel.text = labelDescription
    }
    
}


