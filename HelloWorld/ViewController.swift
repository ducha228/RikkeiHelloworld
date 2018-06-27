//
//  ViewController.swift
//  HelloWorld
//
//  Created by Ha Nguyen Duc on 6/27/18.
//  Copyright © 2018 Ha Nguyen Duc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstLabel: UILabel!
    
    var newLabel: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        newLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
        newLabel?.text = "New Label"
        newLabel?.adjustsFontSizeToFitWidth = true
        newLabel?.minimumScaleFactor = 0.5
        newLabel?.center = CGPoint(x: 100, y: 100)
        print(newLabel?.frame)
        print(newLabel?.bounds)
        if let newLabel = newLabel {
            view.addSubview(newLabel)
        }
        if let button = view.viewWithTag(1) as? UIButton {
            button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        }
        
    }

//    @IBAction func buttonAction(_ sender: UIButton) {
//    }

    @objc func buttonAction() {
        print("Touch up inside")
    }
}

