//
//  DetailViewController.swift
//  student_test
//
//  Created by stephanie yang on 2016/3/14.
//  Copyright © 2016年 stephanie yang. All rights reserved.
//

import UIKit
//在下面用protocol宣告，這頁不做處理，丟到前頁才處理？？？
//
protocol DetailDelegate {
    func nameChanged(new_name:String)
}

class DetailViewController: UIViewController {

    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var ScoreLabel: UILabel!

    var student: Student?
    var delegate: DetailDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        NameTextField.text = student?.name
        ScoreLabel.text = String(student!.score)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func saveBtn(sender: AnyObject) {
        delegate?.nameChanged(NameTextField.text!)
        self.dismissViewControllerAnimated(true, completion: nil)
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
