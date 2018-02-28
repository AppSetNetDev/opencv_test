//
//  ViewController.swift
//  opencv_test
//
//  Created by AppSetNetDev on 2018/02/28.
//  Copyright © 2018年 AppSetNetDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet var _ImageView : UIImageView!
    @IBOutlet var _Switch : UISwitch!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func myAction()
    {
        var img =  UIImage.init(named: "lena")
        
        if (self._Switch.isOn == false) {
            img = OpenCVManager.test(img)
        }
        
        self._ImageView.image = img
    }
}

