//
//  autosViewController.swift
//  OfficialLibraryApp
//
//  Created by Izhan Arif on 1/9/18.
//  Copyright © 2018 Karolina Groszewska. All rights reserved.
//

import UIKit
import Firebase

class autosViewController: UIViewController {
    
    var docRef : DocumentReference!
    @IBOutlet weak var allDataProButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        docRef = Firestore.firestore().document("/All Data Pro/w8Fw5cE6iPUgpDuG8Kcm")
        docRef.getDocument { (allDataProDocSnapshot, error) in
            guard let allDataProDocSnapshot = allDataProDocSnapshot, allDataProDocSnapshot.exists else { return }
            let data = allDataProDocSnapshot.data()
            let allDataProName = data["Name"] as? String ?? ""
            let allDataProLink = data["Link"] as? String ?? ""
            print(allDataProName)
            print(allDataProLink)
        }
        
    }
    @IBAction func allDataProPressed(_ sender: Any) {
    }
    


}
