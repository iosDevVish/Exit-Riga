//
//  UIButton.swift
//  FindHome
//
//  Created by vishal_singh on 03/03/21.
//
import QuartzCore
import UIKit
import Foundation
@IBDesignable

class CustomButton: UIButton{
    @IBInspectable var cornerRadius: CGFloat{
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
    @IBInspectable var shadow: CGFloat{
        set {
            layer.shadowRadius = newValue
        }
        get {
            return layer.shadowRadius
        }
    }
    @IBInspectable var borderWidth: CGFloat{
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet{
            layer.borderColor = borderColor.cgColor
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
    
}
