//
//  UIImageExtension.swift
//  SmartHealth
//
//  Created by laoniu on 11/23/17.
//  Copyright © 2017 laoniu. All rights reserved.
//

import Foundation
extension UIImage{
    func ResizeUIImage(width : CGFloat, height : CGFloat)-> UIImage!{
        UIGraphicsBeginImageContext(CGSize.init(width: width, height: height))
        self.draw(in: CGRect.init(x: 0, y: 0, width: width, height: height))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage
    }
}
