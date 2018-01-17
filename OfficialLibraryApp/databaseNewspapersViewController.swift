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
        docRef = Firestore.firestore().document("/Database Newspapers/Dyfmrqa27CSYBTbgntge")
        docRef.getDocument { (aPNewsDocSnapshot, error) in
            guard let aPNewsDocSnapshot = aPNewsDocSnapshot, aPNewsDocSnapshot.exists else { return }
            let data = aPNewsDocSnapshot.data()
            let aPNewsName = data["Name"] as? String ?? ""
            let aPNewsLink = data["Link"] as? String ?? ""
            print(aPNewsName)
            print(aPNewsLink)
        }
        docRef = Firestore.firestore().document("/Database Newspapers/DzdwJG5SaKHKaOjtORfm")
        docRef.getDocument { (newspaperSourceDocSnapshot, error) in
            guard let newspaperSourceDocSnapshot = newspaperSourceDocSnapshot, newspaperSourceDocSnapshot.exists else { return }
            let data = newspaperSourceDocSnapshot.data()
            let newspaperSourceName = data["Name"] as? String ?? ""
            let newspaperSourceLink = data["Link"] as? String ?? ""
            print(newspaperSourceName)
            print(newspaperSourceLink)
        }
        docRef = Firestore.firestore().document("/Database Newspapers/ob6HlcVj5QUhcghwoCq8")
        docRef.getDocument { (webNewsDocSnapshot, error) in
            guard let webNewsDocSnapshot = webNewsDocSnapshot, webNewsDocSnapshot.exists else { return }
            let data = webNewsDocSnapshot.data()
            let webNewsName = data["Name"] as? String ?? ""
            let webNewsLink = data["Link"] as? String ?? ""
            print(webNewsName)
            print(webNewsLink)
        }
    }

}
