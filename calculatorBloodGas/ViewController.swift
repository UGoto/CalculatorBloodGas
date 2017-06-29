//
//  ViewController.swift
//  calculatorBloodGas
//
//  Created by Yuji Yamamoto on 2017/06/28.
//  Copyright © 2017年 Yuji Yamamoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ph: UITextField!
    @IBOutlet weak var paco2: UITextField!
    @IBOutlet weak var pao2: UITextField!
    @IBOutlet weak var hco3: UITextField!
    @IBOutlet weak var na: UITextField!
    @IBOutlet weak var k: UITextField!
    @IBOutlet weak var cl: UITextField!
    @IBOutlet weak var albmin: UITextField!
    
    @IBOutlet weak var bloodGas: UITextField!
    @IBOutlet weak var anionGap: UITextField!

    
    @IBAction func ph(_ sender: UITextField) {
    }
    @IBAction func paco2(_ sender: UITextField) {
    }
    @IBAction func pao2(_ sender: UITextField) {
    }
    @IBAction func hco3(_ sender: UITextField) {
    }
    @IBAction func na(_ sender: UITextField) {
    }
    @IBAction func k(_ sender: UITextField) {
    }
    @IBAction func cl(_ sender: UITextField) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
 
    
    //AnionGapの計算式
    @IBAction func calculateButton(_ sender: Any) {
        
        if na.text == "" || k.text == "" || cl.text == "" {
            print("数値が入力されていない")
            
        }else {
            let getNa:Double = Double(na.text!)!
            let getK:Double = Double(k.text!)!
            let getCl:Double = Double(cl.text!)!
            
            
            anionGap.text = String(getNa - ( getK + getCl))
            
            anionGap.textAlignment = NSTextAlignment.center
        }
    
    }
   
    
    @IBAction func resultBloodGasButton(_ sender: UIButton) {
        if ph.text == "" || paco2.text == "" || pao2.text == "" || hco3.text == "" {
            print("数値が入力されていない")
        }else {
            let getPh:Double = Double(ph.text!)!
            let getPao2:Double = Double(pao2.text!)!
            let getPaco2:Double = Double(paco2
                .text!)!
            let getHco3:Double = Double(hco3
                .text!)!
        
            if (getPh < 7.35 && getPao2 > 60 && getPaco2 > 45 && getHco3 > 20 && getHco3 < 24) {
                print("呼吸性アシドーシス")
                bloodGas.text = "呼吸性アシドーシス"
                
//            }else if getPh >= 7.35 && getPh <= 7.45{
            
            }else{
                print("その他")
            bloodGas.text = "代謝性アシドーシス"
                
            }
//
//            resultOfBloodGas.text = String(getNa - ( getK + getCl))
//            
//            anionGap.textAlignment = NSTextAlignment.center
        }

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

