//
//  ViewController.swift
//  DynamicSnap
//
//  Created by Terry on 1/21/16.
//  Copyright © 2016 Terry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var dynamicAnamitor: UIDynamicAnimator?
    var snap: UISnapBehavior?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dynamicAnamitor = UIDynamicAnimator(referenceView: self.view)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func taped(sender: AnyObject) {
        let tap = sender as! UITapGestureRecognizer
        let point = tap.locationInView(self.view)
        self.dynamicAnamitor?.removeAllBehaviors()
        self.snap = UISnapBehavior(item: self.imageView, snapToPoint: point)
        self.dynamicAnamitor?.addBehavior(self.snap!)
    }

}

