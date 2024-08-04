//
//  ARViewContainer.swift
//  Electrifun
//
//  Created by Abby Fakhri Choiry on 04/08/24.
//

import Foundation
import ARKit
import RealityKit
import SwiftUI

struct ARViewContainer: UIViewRepresentable {
    func makeUIView(context: Context) -> some ARView {
        let arView = ARView(frame: .zero)
        arView.addCoaching()
        let config = ARWorldTrackingConfiguration()
        config.planeDetection = .horizontal
        config.environmentTexturing = .automatic
        
        arView.session.run(config, options: [])
        
        if ARWorldTrackingConfiguration.supportsSceneReconstruction(.mesh) {
            config.sceneReconstruction = .mesh
        }
        return arView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
