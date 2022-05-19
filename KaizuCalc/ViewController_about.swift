//
//  ViewController_calcJRKR.swift
//  KaizuCalc
//
//  Created by asaken1021 on 2018/05/27.
//  Copyright © 2018 asaken1021. All rights reserved.
//

import UIKit

class ViewController_about: UIViewController {

        override func viewDidLoad() {
        //AvoidDarckMode
        if #available(iOS 13.0, *) {
            self.overrideUserInterfaceStyle = .light
        } else {
            // Fallback on earlier versions
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
