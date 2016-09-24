//
//  ViewController.swift
//  student_test
//
//  Created by stephanie yang on 2016/3/14.
//  Copyright © 2016年 stephanie yang. All rights reserved.
//

import UIKit
//因為在45行有實際用到DetailDelegate的運算，所以在13行要把DetailDelegate繼承在class下面的屬性）
//14.15行是將viewcontroller上的兩個按鍵放swift檔案上做相關聯，之後才能對這些按鈕呼叫做事情
//
class ViewController: UIViewController,DetailDelegate {

    @IBOutlet weak var studentBtn0: UIButton!
    @IBOutlet weak var studentBtn1: UIButton!
    
    var class1 = Class()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//將這頁的兩個按鍵上顯示資料庫裡面的名字
        studentBtn0.setTitle(class1.students[0].name, forState: .Normal)
        studentBtn1.setTitle(class1.students[1].name, forState: .Normal)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//if segue.identifier == "showdetail"定義名稱是showdetail的segue
//let desViewcontroller = segue.destinationViewController as! DetailViewController讓這頁viewcontroller可以控制DetailViewController上的變數
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showdetail" {
            let desViewcontroller = segue.destinationViewController as! DetailViewController
            desViewcontroller.student = class1.students[0]
            desViewcontroller.delegate = self
        }
    }
    
    
    
    
    func nameChanged(new_name:String){
        class1.students[0].name = new_name
        studentBtn0.setTitle(new_name, forState: .Normal)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
