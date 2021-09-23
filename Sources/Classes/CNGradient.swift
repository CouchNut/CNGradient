//
//  CNGradient.swift
//  PlatformA
//
//  Created by Copper on 2021/9/22.
//

import UIKit

public struct CNGradient {
    
    public var colors: [UIColor]?
    
    /// locations 数组并不是强求的，但是如果要给它赋值，一定要确定该数组大小和 colors 的数组大小一样
    /// 否则可能会得到一个空白的渐变
    public var locations: [NSNumber]?
    
    public var startPoint: CGPoint = CGPoint(x: 0.5, y: 0)
    
    public var endPoint: CGPoint = CGPoint(x: 0.5, y: 1.0)
    
    public var type: CNGradientType = .axial
    
    public var size: CGSize = .zero
    
    public var radius: CGFloat = 0
    
    public var corners: UIRectCorner = .allCorners
    
    public init() {}
    
}

extension CNGradient {
    
    private func gradientView() -> CNGradientView {
        let result = CNGradientView()
        result.frame      = CGRect(origin: .zero, size: self.size)
        result.type       = self.type
        result.colors     = self.colors
        result.locations  = self.locations
        result.startPoint = self.startPoint
        result.endPoint   = self.endPoint
        result.radius     = self.radius
        result.corners    = self.corners

        return result
    }
    
    public func asColor() -> UIColor {
        let image = self.asImage()
        return UIColor(patternImage: image)
    }
    
    public func asImage() -> UIImage {
        return self.gradientView().asImage()
    }
    
}

// MARK: - UIImage
extension UIImage {
    public static func gradient(_ gradient: CNGradient) -> UIImage {
        return gradient.asImage()
    }
}

// MARK: - UIColor
extension UIColor {
    public static func gradient(_ gradient: CNGradient) -> UIColor {
        return gradient.asColor()
    }
}
