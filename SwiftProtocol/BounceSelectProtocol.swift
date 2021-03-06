//
//  BounceSelectProtocol.swift
//  SwiftProtocol
//
//  Created by 季 雲 on 2017/10/14.
//  Copyright © 2017 Ericji. All rights reserved.
//

import UIKit

protocol BounceSelect {
    func selectWithBounce(select:Bool, animated:Bool)
}

extension BounceSelect where Self: UIView {
    func selectWithBounce(select:Bool, animated:Bool = true){
        let bounce = CAKeyframeAnimation(keyPath: "transform")
        
        let origin = CATransform3DIdentity
        let smallest = CATransform3DMakeScale(0.8, 0.8, 1)
        let small = CATransform3DMakeScale(0.9, 0.9, 1)
        
        let originValue = NSValue.init(caTransform3D: origin)
        let smallestValue = NSValue.init(caTransform3D: smallest)
        let smallValue = NSValue.init(caTransform3D: small)
        
        if animated {
            bounce.duration = 0.2
            bounce.isRemovedOnCompletion = false
            if select {
                bounce.values = [originValue, smallestValue, smallValue]
                self.layer.add(bounce, forKey: "bounce")
            }else{
                bounce.values = [smallestValue, originValue]
                self.layer.add(bounce, forKey: "bounce")
            }
        }
        if select {
            self.layer.transform = small
        }else{
            self.layer.transform = origin
        }
    }
    
}
