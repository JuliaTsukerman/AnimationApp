//
//  DataManager.swift
//  AnimationApp
//
//  Created by Test on 11/24/21.
//

import Foundation
import Spring

class DataManager {
    static let shared = DataManager()
    
    let preset:[Spring.AnimationPreset] = [.fadeIn,.flipX,.squeezeLeft,.flipY,.fadeInLeft,.fadeInDown]
    
    let curve:[Spring.AnimationCurve] = [.easeIn,.easeOut,.easeOutBack,
                                         .easeInBack, .easeInOut, .easeInSine]
    
    let force:[CGFloat] = [0.33, 1.2, 0.5, 0.75, 0.4, 0.9]
    
    let duration:[CGFloat] = [ 1.0, 1.5, 2, 3, 0.75, 0.8]
    
    let delay:[CGFloat] = [0.1, 0.2, 0.75, 1, 0.3,0.25]
}
