//
//  ViewController.swift
//  KaizuCalc
//
//  Created by asaken1021 on 2018/05/27.
//  Copyright © 2018 asaken1021. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var JRKR :UIButton!
    @IBOutlet var KRJR :UIButton!
    @IBOutlet var ABOUT :UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
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
    
    @IBAction func goJRKR(_ sender:UIButton){
        performSegue(withIdentifier: "goJRKR", sender: nil)
    }
    
    @IBAction func goKRJR(_ sender:UIButton){
        performSegue(withIdentifier: "goKRJR", sender: nil)
    }
    
    @IBAction func goABOUT(_ sender:UIButton){
        performSegue(withIdentifier: "goABOUT", sender: nil)
    }
}
