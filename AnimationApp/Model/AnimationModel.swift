//
//  AnimationModel.swift
//  AnimationApp
//
//  Created by Test on 11/23/21.
//

import Foundation
import Spring
struct SpringAnimation {
    
    let preset:String
    let curve:String
    let force:CGFloat
    let duration:CGFloat
    let delay:CGFloat
    
    static func getSpringAnimations() -> [SpringAnimation] {
        var springAnimations: [SpringAnimation] = []
        
        let preset = DataManager.shared.preset.shuffled()
        let curve = DataManager.shared.curve.shuffled()
        let force = DataManager.shared.force.shuffled()
        let duration = DataManager.shared.duration.shuffled()
        let delay = DataManager.shared.delay.shuffled()
        
        for index in 0 ..< preset.count {
            let springAnimation = SpringAnimation (preset: preset[index].rawValue,
                                                   curve: curve[index].rawValue,
                                                   force: force[index],
                                                   duration: duration[index],
                                                   delay: delay[index])
            springAnimations.append(springAnimation)
        }
        return springAnimations
    }
}
 
