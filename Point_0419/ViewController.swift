//
//  ViewController.swift
//  Point_0419
//
//  Created by s20151104698 on 2017/4/19.
//  Copyright © 2017年 s20151104698. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var scoree2: UITextField!
    @IBOutlet weak var scoree1: UITextField!
    @IBOutlet weak var big1: UITextField!
    @IBOutlet weak var big2: UITextField!
    @IBOutlet weak var winplayer: UITextField!
    var s1:Int!
    var s2:Int!
    var b1:Int!
    var b2:Int!
    var i1:Int! = 0
    var i2:Int! = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back(_ sender: UIButton) {
        var temp1:Int
        if(i1 > i2)
        {
            temp1 = Int(scoree1.text!)!
            temp1 = temp1 - 1
            scoree1.text = "\(temp1)"
        }
        if(i1 < i2)
        {
            temp1 = Int(scoree2.text!)!
            temp1 = temp1 - 1
            scoree2.text = "\(temp1)"
        }
    }
    @IBAction func add1(_ sender: UIButton) {
        var temp:Int
        i1 = i1 + 1
        if(scoree1.text==""){
            temp = 1
            scoree1.text = "\(temp)"
        }else{
            temp = Int(scoree1.text!)! + 1
            scoree1.text = "\(temp)"
            temp = 0
        }
        //判断s1先到21
        s1 = Int(scoree1.text!)
        s2 = Int(scoree2.text!)
        if(s1 == 21 && s2<20){
            if(big1.text=="0"){
                temp = 1
                big1.text = "\(temp)"
                temp = 0
                scoree1.text = "0"
                scoree2.text = "0"
            }else{
                temp = Int(big1.text!)! + 1
                big1.text = "\(temp)"
                temp = 0
                scoree1.text = "0"
                scoree2.text = "0"
            }
        }
        //判断s2先到21
        if(s2 == 21 && s1<20){
            if(big2.text=="0"){
                temp = 1
                big2.text = "\(temp)"
                temp = 0
            }else{
                temp = Int(big2.text!)! + 1
                big2.text = "\(temp)"
                temp = 0
                scoree1.text = "0"
                scoree2.text = "0"
            }
        }
        //判断21以上 相差2分
        if(s1>20 && s2>20){
            if(s1 - 2 >= s2){
                if(big1.text=="0")
                {
                    big1.text = "1"
                    scoree1.text = "0"
                    scoree2.text = "0"
                }else{
                    temp = Int(big1.text!)! + 1
                    big1.text = "\(temp)"
                    temp = 0
                    scoree1.text = "0"
                    scoree2.text = "0"
                }
            }
            if(s2 - 2 >= s1)
            {
                if(big2.text=="0")
                {
                    big2.text = "1"
                    scoree1.text = "0"
                    scoree2.text = "0"
                }else{
                    temp = Int(big2.text!)! + 1
                    big2.text = "\(temp)"
                    temp = 0
                    scoree1.text = "0"
                    scoree2.text = "0"
                }
            }
            //判断谁先到30
                //s1
            if(s1 == 30 && s2==29){
                if(big1.text=="0"){
                    temp = 1
                    big1.text = "\(temp)"
                    temp = 0
                    scoree1.text = "0"
                    scoree2.text = "0"
                }else{
                    temp = Int(big1.text!)! + 1
                    big1.text = "\(temp)"
                    temp = 0
                    scoree1.text = "0"
                    scoree2.text = "0"
                }
            }
                //s2
            if(s2 == 30 && s1 == 29){
                if(big2.text=="0"){
                    temp = 1
                    big2.text = "\(temp)"
                    temp = 0
                    scoree1.text = "0"
                    scoree2.text = "0"
                }else{
                    temp = Int(big2.text!)! + 1
                    big2.text = "\(temp)"
                    temp = 0
                    scoree1.text = "0"
                    scoree2.text = "0"
                }
            }
        }//if(s1>20 && s2>20)
        //获胜条件
        b1 = Int(big1.text!)
        b2 = Int(big2.text!)
        if(b1==2){
            winplayer.text = "获胜者是：一号选手"
            big1.text = "0"
            big2.text = "0"
        }
        if(b2==2){
            winplayer.text = "获胜者是：二号选手"
            big1.text = "0"
            big2.text = "0"
        }
    }
    @IBAction func add2(_ sender: UIButton) {
        var temp:Int
        i2 = i2 + 1
        if(scoree2.text==""){
            temp = 1
            scoree2.text = "\(temp)"
        }else{
            temp = Int(scoree2.text!)! + 1
            scoree2.text = "\(temp)"
        }
        //判断s1先到21
        s1 = Int(scoree1.text!)
        s2 = Int(scoree2.text!)
        if(s1 == 21 && s2<20){
            if(big1.text=="0"){
                temp = 1
                big1.text = "\(temp)"
                scoree1.text = "0"
                scoree2.text = "0"
            }else{
                temp = Int(big1.text!)! + 1
                big1.text = "\(temp)"
                temp = 0
                scoree1.text = "0"
                scoree2.text = "0"
            }
        }
        //判断s2先到21
        s1 = Int(scoree1.text!)!
        s2 = Int(scoree2.text!)!
        if(s2 == 21 && s1<20){
            if(big2.text=="0"){
                temp = 1
                big2.text = "\(temp)"
                scoree1.text = "0"
                scoree2.text = "0"
            }else{
                temp = Int(big2.text!)! + 1
                big2.text = "\(temp)"
                temp = 0
                scoree1.text = "0"
                scoree2.text = "0"
            }
        }
        //判断21以上 相差2分
        if(s1>20 && s2>20){
            if(s1 - 2 >= s2){
                if(big1.text=="0")
                {
                    big1.text = "1"
                    scoree1.text = "0"
                    scoree2.text = "0"
                }else{
                    temp = Int(big1.text!)! + 1
                    big1.text = "\(temp)"
                    temp = 0
                    scoree1.text = "0"
                    scoree2.text = "0"
                }
            }
            if(s2 - 2 >= s1)
            {
                if(big2.text=="0")
                {
                    big2.text = "1"
                    scoree1.text = "0"
                    scoree2.text = "0"
                }else{
                    temp = Int(big2.text!)! + 1
                    big2.text = "\(temp)"
                    temp = 0
                    scoree1.text = "0"
                    scoree2.text = "0"
                }
            }
            //判断谁先到30
            //s1
            if(s1 == 30 && s2==29){
                if(big1.text=="0"){
                    temp = 1
                    big1.text = "\(temp)"
                    temp = 0
                    scoree1.text = "0"
                    scoree2.text = "0"
                }else{
                    temp = Int(big1.text!)! + 1
                    big1.text = "\(temp)"
                    temp = 0
                    scoree1.text = "0"
                    scoree2.text = "0"
                }
            }
            //s2
            if(s2 == 30 && s1 == 29){
                if(big2.text=="0"){
                    temp = 1
                    big2.text = "\(temp)"
                    temp = 0
                    scoree1.text = "0"
                    scoree2.text = "0"
                }else{
                    temp = Int(big2.text!)! + 1
                    big2.text = "\(temp)"
                    temp = 0
                    scoree1.text = "0"
                    scoree2.text = "0"
                }
            }
        }////if(s1>20 && s2>20)
        //获胜条件
        b1 = Int(big1.text!)
        b2 = Int(big2.text!)
        if(b1==2){
            winplayer.text = "获胜者是：一号选手"
            big1.text = "0"
            big2.text = "0"
        }
        if(b2==2){
            winplayer.text = "获胜者是：二号选手"
            big1.text = "0"
            big2.text = "0"
        }
    }
    
}

