//
//  TestViewController.swift
//  SlideViewDemo
//
//  Created by Nishchita on 12/1/17.
//  Copyright © 2017 Nishchita. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    @IBOutlet weak var sampletxtf: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

       sampletxtf.returnKeyType = UIReturnKeyType.done
       
        //sampletxtf.isEnabled = false
       sampletxtf.enablesReturnKeyAutomatically = true
        
        
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        // Do any additional setup after loading the view.
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        if textField.text == "working" {
            sampletxtf.enablesReturnKeyAutomatically = true
        }
        else
        {
            sampletxtf.enablesReturnKeyAutomatically = false
        }
        
        return true
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
