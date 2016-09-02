//
//  ViewController.swift
//  DynamicGravity
//
//  Created by 杜杜兴 on 15/10/13.
//  Copyright © 2015年 杜杜兴. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var dynamicAnimator=UIDynamicAnimator()
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        dynamicAnimator=UIDynamicAnimator(referenceView: self.view)
        
        //创建并添加重力行为
        let gravityBehavior=UIGravityBehavior(items: [self.imageView])
        dynamicAnimator.addBehavior(gravityBehavior)
        
        //创建并添加碰撞行为
        let collisionBehavior=UICollisionBehavior(items:[self.imageView])
        collisionBehavior.translatesReferenceBoundsIntoBoundary=true
        dynamicAnimator.addBehavior(collisionBehavior)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

