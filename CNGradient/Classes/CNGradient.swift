//
//  CNGradient.swift
//  PlatformA
//
//  Created by Copper on 2021/9/22.
//

import UIKit

struct CNGradient {
    
    var colors: [UIColor]?
    
    /// locations 数组并不是强求的，但是如果要给它赋值，一定要确定该数组大小和 colors 的数组大小一样
    /// 否则可能会得到一个空白的渐变
    var locations: [NSNumber]?
    
    var startPoint: CGPoint = CGPoint(x: 0.5, y: 0)
    
    var endPoint: CGPoint = CGPoint(x: 0.5, y: 1.0)
    
    var type: CAGradientLayerType = .axial
    
    var size: CGSize = .zero
    
    var radius: CGFloat = 0
    
    var corners: UIRectCorner = .allCorners
    
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
    
    func generateColor() -> UIColor {
        let image = self.generateImage()
        return UIColor(patternImage: image)
    }
    
    func generateImage() -> UIImage {
        return self.gradientView().generateImage()
    }
    
}

// MARK: - UIImage
extension UIImage {
    static func gradient(_ gradient: PLFGradient) -> UIImage {
        return gradient.generateImage()
    }
}

// MARK: - UIColor
extension UIColor {
    static func gradient(_ gradient: PLFGradient) -> UIColor {
        return gradient.generateColor()
    }
}

