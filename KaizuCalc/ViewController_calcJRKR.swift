//
//  ViewController_calcJRKR.swift
//  KaizuCalc
//
//  Created by asaken1021 on 2018/05/27.
//  Copyright © 2018 asaken1021. All rights reserved.
//

import UIKit

class ViewController_calcJRKR: UIViewController {
    
    @IBOutlet var textField :UITextField!
    @IBOutlet var calc :UIButton!
    @IBOutlet var textView :UITextView!

    var jpy :Double! = 0.0
    var kzy :Double! = 0.0
    var kzyText :String! = ""

    
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
    
    @IBAction func calc_JRKR(_ sender:UIButton){
        if(textField.text == ""){
            //何もしない
        }
        else if(textField.text != ""){
            jpy = atof(textField.text)
            kzy = jpy * 35
            makeAlert()
        }
    }
    
    func makeAlert(){
        kzyText = String(kzy)
            let alert = UIAlertController(title: "警告", message: kzyText + "貝塚円", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default) { (action) in
                self.dismiss(animated: true, completion: nil)
            }
            alert.addAction(ok)
        
            present(alert, animated: true, completion: nil)
    }
}
