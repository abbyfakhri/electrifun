//
//  CoachingOverlay.swift
//  Electrifun
//
//  Created by Abby Fakhri Choiry on 04/08/24.
//

import Foundation
import RealityKit
import ARKit

extension ARView: ARCoachingOverlayViewDelegate {
    func addCoaching(){
        let coachingOverlay = ARCoachingOverlayView()
        coachingOverlay.delegate = self
        coachingOverlay.session = self.session
        coachingOverlay.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        coachingOverlay.goal = .horizontalPlane
        self.addSubview(coachingOverlay)
    }
    
    public func coachingOverlayViewDidDeactivate(_ coachingOverlayView: ARCoachingOverlayView) {
        // ready to add entities next
    }
}
