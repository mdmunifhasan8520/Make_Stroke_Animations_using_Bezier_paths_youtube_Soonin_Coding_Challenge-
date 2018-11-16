//
//  ViewController.swift
//  IOS-Swift-BezierPaths01
//
//  Created by Pooya on 2018-05-26.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    var path : UIBezierPath!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        makeAppleLogo()
        addAnimationPath()
        
        //transformExample()

    }

    func addAnimationPath()  {
        let layer = CAShapeLayer()
        layer.path  = path.cgPath
      
        layer.strokeEnd = 0
        layer.lineWidth = 6
        layer.borderColor = UIColor.red.cgColor
        layer.shadowColor = UIColor.yellow.cgColor
        layer.shadowRadius = 6
        layer.shadowOffset = CGSize(width: 1, height: 1)
        layer.shadowOpacity = 0.8
        layer.strokeColor = UIColor.blue.cgColor
        layer.fillColor = UIColor.white.cgColor
        //layer.lineDashPattern = [47.12]
        
        

        
        
      
        
        myView.layer.addSublayer(layer)
        
        layer.position = CGPoint(x: 50, y: 150)
        
        
        let animation = CABasicAnimation(keyPath: "strokeEnd")
         //animation.fromValue = 0
        animation.toValue = 1
        animation.duration = 0.75 //Second
       animation.fillMode = kCAFillModeForwards
        animation.isRemovedOnCompletion = false
        animation.toValue = UIColor.red.cgColor
        
        
    
        //animation.isAdditive = true
        //animation.speed = 10
        
    
        
        animation.repeatCount = 4
        
        layer.add(animation, forKey: "line")
        
    }
    
   
    func makeAppleLogo()  {
        // Initialize the path.
        path = UIBezierPath()
        
        // Apple
        path.move(to: CGPoint(x: 111, y: 194.5))
        path.addCurve(to: CGPoint(x: 0.5, y: 97.5), controlPoint1: CGPoint(x: 49.99, y: 194.5), controlPoint2: CGPoint(x: 0.5, y: 151.09))
        path.addCurve(to: CGPoint(x: 111, y: 0.5), controlPoint1: CGPoint(x: 0.5, y: 43.91), controlPoint2: CGPoint(x: 49.99, y: 0.5))
        path.addCurve(to: CGPoint(x: 221.5, y: 97.5), controlPoint1: CGPoint(x: 172.01, y: 0.5), controlPoint2: CGPoint(x: 221.5, y: 43.91))
        path.addCurve(to: CGPoint(x: 111, y: 194.5), controlPoint1: CGPoint(x: 221.5, y: 151.09), controlPoint2: CGPoint(x: 172.01, y: 194.5))
        path.close()
        
        let rectanglePath = UIBezierPath()
        rectanglePath.move(to: CGPoint(x: 81.5, y: 7.0))
        rectanglePath.addLine(to: CGPoint(x: 163.0, y: 7.0))
        rectanglePath.addLine(to: CGPoint(x: 163.0, y: 82.0))
        rectanglePath.addLine(to: CGPoint(x: 163.0, y: 157.0))
        rectanglePath.addLine(to: CGPoint(x: 163.0, y: 157.0))
        rectanglePath.addLine(to: CGPoint(x: 82.0, y: 157.0))
        rectanglePath.addLine(to: CGPoint(x: 0.0, y: 157.0))
        rectanglePath.addLine(to: CGPoint(x: 0.0, y: 157.0))
        rectanglePath.addLine(to: CGPoint(x: 0.0, y: 82.0))
        rectanglePath.addLine(to: CGPoint(x: 0.0, y: 7.0))
        rectanglePath.addLine(to: CGPoint(x: 81.5, y: 7.0))
        rectanglePath.close()
        /*
        shape.move(to: CGPoint(x: 111, y: 193.5))
        shape.addCurve(to: CGPoint(x: 220.5, y: 97.5), controlPoint1: CGPoint(x: 171.49, y: 193.5), controlPoint2: CGPoint(x: 220.5, y: 150.5))
        shape.addCurve(to: CGPoint(x: 111, y: 1.5), controlPoint1: CGPoint(x: 220.5, y: 44.5), controlPoint2: CGPoint(x: 171.49, y: 1.5))
        shape.addCurve(to: CGPoint(x: 1.5, y: 97.5), controlPoint1: CGPoint(x: 50.51, y: 1.5), controlPoint2: CGPoint(x: 1.5, y: 44.5))
        shape.addCurve(to: CGPoint(x: 111, y: 193.5), controlPoint1: CGPoint(x: 1.5, y: 150.5), controlPoint2: CGPoint(x: 50.51, y: 193.5))
        
        path.close()
 */
    }


}

