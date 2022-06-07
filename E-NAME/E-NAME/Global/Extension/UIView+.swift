//
//  UIView+.swift
//  E-NAME
//
//  Created by subinyoon on 2022/06/07.
//

import UIKit

extension UIView {
    
    static var className: String {
        NSStringFromClass(self.classForCoder()).components(separatedBy: ".").last!
    }

    var className: String {
        NSStringFromClass(self.classForCoder).components(separatedBy: ".").last!
    }
}
