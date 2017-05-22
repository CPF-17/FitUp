//
//  FadeExtension.swift
//  SmartFit
//
//  Created by Derrick Wong on 5/21/17.
//  Copyright © 2017 CPF-17. All rights reserved.
//

import Foundation
import UIKit

extension UIView{
    
    func fadeInAndOut(_ duration: TimeInterval = 1.0, delay: TimeInterval = 0.0, completion: @escaping ((Bool) -> Void) = {(finished: Bool) -> Void in}) {
        UIView.animate(withDuration: duration, delay: delay, options: [.curveEaseIn, .repeat, .autoreverse], animations: {
            self.alpha = 0.0
        }, completion: completion)  }
    
//    func fadeOut(_ duration: TimeInterval = 1.0, delay: TimeInterval = 0.0, completion: @escaping (Bool) -> Void = {(finished: Bool) -> Void in}) {
//        UIView.animate(withDuration: duration, delay: delay, options: UIViewAnimationOptions.curveEaseIn, animations: {
//            self.alpha = 0.0
//        }, completion: completion)
//    }
}
