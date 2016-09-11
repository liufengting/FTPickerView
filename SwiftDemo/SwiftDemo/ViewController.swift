//
//  ViewController.swift
//  SwiftDemo
//
//  Created by liufengting on 16/9/11.
//  Copyright © 2016年 liufengting. All rights reserved.
//

import UIKit
import FTPickerView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func buttonTapped(sender: UIButton) {
        
        FTPickerView.showWithTitle("", nameArray: ["",""], doneBlock: { (selectedIndex) in
            
            print("Done! selectedIndex is \(selectedIndex)")
            
        }) {
            print("Canceled")
        }
        
    }



}

