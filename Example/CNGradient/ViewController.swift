//
//  ViewController.swift
//  CNGradient
//
//  Created by CouchNut on 09/22/2021.
//  Copyright (c) 2021 CouchNut. All rights reserved.
//

import UIKit
import SnapKit
import CNGradient

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let size = CGSize(width: self.view.frame.width - 30, height: 100)
        
        let gradient = CNGradient()

//        let gradientView =  CNGradientView()
//        gradientView.colors = [.red, .purple]
//        gradientView.startPoint = CGPoint(x: 0, y: 0)
//        gradientView.endPoint = CGPoint(x: 1, y: 0)
//        self.view.addSubview(gradientView)
//
//        let imageView = UIImageView()
//        imageView.image = .gradient(CNGradient())
//        self.view.addSubview(imageView)
//
//        imageView.snp.makeConstraints { make in
//            make.leading.trailing.height.equalTo(gradientView)
//            make.bottom.equalTo(gradientView.snp.top)
//        }
//        gradientView.snp.makeConstraints { make in
//            make.center.equalTo(self.view)
//            make.size.equalTo(size)
//        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

