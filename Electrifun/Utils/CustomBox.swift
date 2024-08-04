//
//  CustomBox.swift
//  Electrifun
//
//  Created by Abby Fakhri Choiry on 04/08/24.
//

import Foundation
import ARKit
import RealityKit

class CustomBox: Entity, HasModel, HasAnchoring, HasCollision {
    required init(color: UIColor) {
        super.init()
        self.components[ModelComponent] = ModelComponent(mesh: .generateBox(size: 0.2), materials: [SimpleMaterial(color: color, isMetallic: false)])
    }
    
    convenience init(color: UIColor, position: SIMD3<Float>) {
        self.init(color: color)
        self.position = position
    }
    
    required init() {
        fatalError("init() has not been implemented")
    }
}
