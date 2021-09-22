//
//  CNGradientView.swift
//  PlatformA
//
//  Created by Copper on 2021/9/22.
//

import UIKit

class CNGradientView: UIView {
    
    override class var layerClass: AnyClass { return CAGradientLayer.self }
    
    private var gradientLayer: CAGradientLayer { return self.layer as! CAGradientLayer }
    
    var colors: [UIColor]? {
        willSet {
            self.gradientLayer.colors = newValue?.map({ return $0.cgColor })
        }
    }
    
    var locations: [NSNumber]? {
        willSet {
            self.gradientLayer.locations = newValue
        }
    }
    
    var startPoint: CGPoint = CGPoint(x: 0.5, y: 0) {
        willSet {
            self.gradientLayer.startPoint = newValue
        }
    }
    
    var endPoint: CGPoint = CGPoint(x: 0.5, y: 1.0) {
        willSet {
            self.gradientLayer.endPoint = newValue
        }
    }
    
    var type: CAGradientLayerType = .axial {
        willSet {
            self.gradientLayer.type = newValue
        }
    }
    
    var radius: CGFloat = 0 {
        willSet {
            self.setNeedsDisplay()
        }
    }
    
    var corners: UIRectCorner = .allCorners {
        willSet {
            self.setNeedsDisplay()
        }
    }
    
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: self.corners, cornerRadii: CGSize(width: self.radius, height: self.radius))
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.frame = CGRect(origin: .zero, size: rect.size)
        shapeLayer.path = path.cgPath
        
        self.gradientLayer.mask = shapeLayer
    }
}

extension CNGradientView {
    
    /// 生成一张图片
    /// - Returns: 图片
    func generateImage() -> UIImage? {
        defer {
            UIGraphicsEndImageContext()
        }
        
        UIGraphicsBeginImageContextWithOptions(self.bounds.size, false, UIScreen.main.scale)
        
        guard let context = UIGraphicsGetCurrentContext() else { return nil }
        self.gradientLayer.render(in: context)
        
        guard let result = UIGraphicsGetImageFromCurrentImageContext() else { return nil }
        return result
    }
    
}
