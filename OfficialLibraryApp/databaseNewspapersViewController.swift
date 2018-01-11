//
//  databaseNewspapersViewController.swift
//  OfficialLibraryApp
//
//  Created by Izhan Arif on 1/9/18.
//  Copyright © 2018 Karolina Groszewska. All rights reserved.
//

import UIKit
import Firebase

class databaseNewspapersViewController: UIViewController {
   var docRef : DocumentReference!
    override func viewDidLoad() {
        super.viewDidLoad()
        docRef = Firestore.firestore().document("/Database Newspapers/98Aie9050IZFwkQ4XhnQ")
        docRef.getDocument { (newspaperSourcePlusDocSnapshot, error) in
            guard let newspaperSourcePlusDocSnapshot = newspaperSourcePlusDocSnapshot, newspaperSourcePlusDocSnapshot.exists else { return }
            let data = newspaperSourcePlusDocSnapshot.data()
            let newspaperSourcePlusName = data["Name"] as? String ?? ""
            let newspaperSourcePlusLink = data["Link"] as? String ?? ""
            print(newspaperSourcePlusName)
            print(newspaperSourcePlusLink)
        }

    }

}
