//
//  CNGradient+Feature.swift
//  PlatformA
//
//  Created by Copper on 2021/9/22.
//

import UIKit
import QuartzCore

extension CNGradient {
    
    public enum Feature {
        case colors([UIColor]?)
        
        case locations([NSNumber]?)
        
        case startPoint(CGPoint)
        
        case endPoint(CGPoint)
        
        case type(CNGradientType)
        
        case size(CGSize)
        
        case radius(CGFloat)
        
        case corners(UIRectCorner)
    }
    
    public init(_ features: Feature...) {
        self.init(features)
    }
    
    public init(_ features: [Feature]) {
        self.init()
        for feature in features {
            update(feature: feature)
        }
    }
    
    public func byAdding(_ features: Feature...) -> CNGradient {
        return byAdding(features)
    }
    
    func byAdding(_ features: [Feature]) -> CNGradient {
        var gradient = self
        for feature in features {
            gradient.update(feature: feature)
        }
        return gradient
    }
    
    mutating func update(feature: Feature) {
        switch feature {
        case let .colors(colors):
            self.colors = colors
            
        case let .locations(locations):
            self.locations = locations
            
        case let .startPoint(startPoint):
            self.startPoint = startPoint
            
        case let .endPoint(endPoint):
            self.endPoint = endPoint
            
        case let .type(type):
            self.type = type
            
        case let .size(size):
            self.size = size
            
        case let .corners(corners):
            self.corners = corners
            
        case let .radius(radius):
            self.radius = radius
            
        }
    }
    
}
