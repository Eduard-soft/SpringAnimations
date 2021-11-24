//
//  SpringModel.swift
//  SpringAnimations
//
//  Created by Эдуард on 24.11.2021.
//

import Spring

struct Ring {
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    }

extension Ring {
    static func getAnimation() -> [Ring] {
        let animate: [Ring] = []
        
        let presents = Spring.AnimationPreset(rawValue: "present")
        let curves = Spring.AnimationCurve.self
        
        
        
        
        return animate
    }
    
}
