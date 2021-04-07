//
//  UIView.swift
//  FindHome
//
//  Created by vishal_singh on 03/03/21.
//

import Foundation
import UIKit

@IBDesignable
final class CustomUIView: UIView {
    
    @IBInspectable var cornerRadius: CGFloat{
        set {
            layer.cornerRadius = newValue
        }
        get{
            return layer.cornerRadius
        }
    }
    @IBInspectable var shadowRadius: CGFloat{
        set {
            layer.shadowRadius = newValue
        }
        get{
            return layer.shadowRadius
        }
    }
    @IBInspectable var shadowOffset: CGSize{
        set {
            layer.shadowOffset = newValue
        }
        get{
            return layer.shadowOffset
        }
    }
    @IBInspectable var shadowOpacity: Float{
        set{
            layer.shadowOpacity = newValue
        }
        get{
            return layer.shadowOpacity
        }
        
    }
    @IBInspectable var shadowpath: CGPath{
        set {
            layer.shadowPath = newValue
        }
        get{
            return layer.shadowPath!
        }
    }
    @IBInspectable var shadowColor: UIColor = UIColor.clear {
        didSet{
            layer.shadowColor = shadowColor.cgColor
        }
       
    }
}
