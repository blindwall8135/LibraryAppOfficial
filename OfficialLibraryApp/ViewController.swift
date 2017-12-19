//
//  ViewController.swift
//  OfficialLibraryApp
//
//  Created by KarolinaGroszewska on 12/5/17.
//  Copyright © 2017 Karolina Groszewska. All rights reserved.
//
import UIKit
import Firebase

var ref:DatabaseReference?

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}

