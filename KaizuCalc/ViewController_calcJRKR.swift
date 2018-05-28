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
    
    var jpy :Double! = 0.0
    var kzy :Double! = 0.0
    var kzyText :String! = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
        let alert :UIAlertController = UIAlertController(title: "警告", message: kzyText + "貝塚円", preferredStyle: UIAlertControllerStyle.alert)
        
        let defaultAction :UIAlertAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler:{
            (action: UIAlertAction!) -> Void in
            print("OK")
        })
        
        alert.addAction(defaultAction)
        
        present(alert, animated: true, completion: nil)
    }
}
