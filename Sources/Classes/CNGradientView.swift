//
//  CNGradientView.swift
//  PlatformA
//
//  Created by Copper on 2021/9/22.
//

import UIKit

public enum CNGradientType: Int {
    case axial   = 1
    case radial  = 2
    case conic   = 3
}

open class CNGradientView: UIView {

    open override class var layerClass: AnyClass { return CAGradientLayer.self }
    
    private var gradientLayer: CAGradientLayer { return self.layer as! CAGradientLayer }
    
    open var colors: [UIColor]? {
        willSet {
            self.gradientLayer.colors = newValue?.map({ return $0.cgColor })
        }
    }
    
    open var locations: [NSNumber]? {
        willSet {
            self.gradientLayer.locations = newValue
        }
    }
    
    open var startPoint: CGPoint = CGPoint(x: 0.5, y: 0) {
        willSet {
            self.gradientLayer.startPoint = newValue
        }
    }
    
    open var endPoint: CGPoint = CGPoint(x: 0.5, y: 1.0) {
        willSet {
            self.gradientLayer.endPoint = newValue
        }
    }
    
    open var type: CNGradientType = .axial {
        willSet {
            var type: CAGradientLayerType
            switch newValue {
            case .axial:
                type = .axial
            case .conic:
                type = .conic
            case .radial:
                type = .radial
            }
            self.gradientLayer.type = type
        }
    }
    
    open var radius: CGFloat = 0 {
        willSet {
            self.setNeedsDisplay()
        }
    }
    
    open var corners: UIRectCorner = .allCorners {
        willSet {
            self.setNeedsDisplay()
        }
    }
    
    open override func draw(_ rect: CGRect) {
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
    open func asImage() -> UIImage {
        let format = UIGraphicsImageRendererFormat()
        format.scale = UIScreen.main.scale
        let render = UIGraphicsImageRenderer(bounds: self.bounds, format: format)
        let image = render.image { context in
            self.gradientLayer.render(in: context.cgContext)
        }
        return image
    }
    
}
