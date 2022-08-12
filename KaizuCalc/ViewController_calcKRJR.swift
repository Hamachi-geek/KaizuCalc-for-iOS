//
//  ViewController_calcKRJR.swift
//  KaizuCalc
//
//  Created by asaken1021 on 2018/05/27.
//  Copyright © 2018 asaken1021. All rights reserved.
//

import UIKit

class ViewController_calcKRJR: UIViewController {
    
    @IBOutlet var textField :UITextField!
    @IBOutlet var calc :UIButton!
    
    var jpy :Double! = 0.0
    var kzy :Double! = 0.0
    var jpyText :String! = ""
    
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
    
    @IBAction func calc_KRJR(_ sender:UIButton){
        if(textField.text == ""){
            //何もしない
        }
        else if(textField.text != ""){
            kzy = atof(textField.text)
            jpy = kzy / 35
            jpy = round(jpy * 1000) / 1000
            makeAlert()
        }
    }
    
    func makeAlert(){
        jpyText = String(jpy)
        let alert = UIAlertController(title: "警告", message: jpyText + "円", preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default) { (action) in
            self.dismiss(animated: true, completion: nil)
        }
        alert.addAction(ok)
    
        present(alert, animated: true, completion: nil)
    }
}
