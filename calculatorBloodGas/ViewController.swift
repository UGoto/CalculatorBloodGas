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
    
    @IBOutlet weak var resultPh: UITextField!
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
            print("数値が入力されていない")}
            let getNa:Double = Double(na.text!)!
            let getK:Double = Double(k.text!)!
            let getCl:Double = Double(cl.text!)!
        
            anionGap.text = String(getNa - ( getK + getCl))
            
            anionGap.textAlignment = NSTextAlignment.center
    
    }
   
    
    
    @IBAction func resultBloodGas(_ sender: UIButton) {
        if ph.text == "" || paco2.text == "" || hco3.text == ""{
        print("数値が入力されていない")
        }else{
            let getPh:Double = Double(ph.text!)!
            let getPaco2:Double = Double(paco2
                .text!)!
            let getHco3:Double = Double(hco3
                .text!)!
            
            //血ガス診断　４種類
            if (getPh < 7.35 && getPaco2 > 45) {
                bloodGas.text = "呼吸性アシドーシス"
            }else if(getPh < 7.35 && getHco3 > 24){
                bloodGas.text = "代謝性アシドーシス"
            }else if(getPh > 7.45 && getPaco2 < 35){
                bloodGas.text = "呼吸性アルカローシス"
            }else if(getPh > 7.45 && getHco3 < 24){
                bloodGas.text = "代謝性アルカローシス"
            }else{
                bloodGas.text = ""
            }
        }
    }
    
    //アシデミアかアルカレミア

    @IBAction func resultPh(_ sender: UIButton) {
        let getPh:Double = Double(ph.text!)!
        
        if (getPh < 7.35){
        resultPh.text = "アシデミア"
        }else if(getPh >= 7.35 && getPh <= 7.45 ){
        resultPh.text = "正常"
        }else{
        resultPh.text = "アルカレミア"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

