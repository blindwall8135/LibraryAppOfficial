//
//  mediaViewController.swift
//  OfficialLibraryApp
//
//  Created by Izhan Arif on 1/9/18.
//  Copyright © 2018 Karolina Groszewska. All rights reserved.
//

import UIKit
import Firebase

class mediaViewController: UIViewController {
    var docRef : DocumentReference!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        docRef = Firestore.firestore().document("/Media/CuKxYLyT0Uc9aEUgaVh0")
        docRef.getDocument { (flipsterDocSnapshot, error) in
            guard let flipsterDocSnapshot = flipsterDocSnapshot, flipsterDocSnapshot.exists else { return }
            let data = flipsterDocSnapshot.data()
            let flipsterName = data["Name"] as? String ?? ""
            let flipsterLink = data["Link"] as? String ?? ""
            print(flipsterName)
            print(flipsterLink)

        
    }
        
        docRef = Firestore.firestore().document("/Media/NdOkWqKik6sCZVJnFPPz")
        docRef.getDocument { (correspondentLiveDocSnapshot, error) in
            guard let correspondentLiveDocSnapshot = correspondentLiveDocSnapshot, correspondentLiveDocSnapshot.exists else { return }
            let data = correspondentLiveDocSnapshot.data()
            let correspondentLiveName = data["Name"] as? String ?? ""
            let correspondentLiveLink = data["Link"] as? String ?? ""
            print(correspondentLiveName)
            print(correspondentLiveLink)
        }
        
        docRef = Firestore.firestore().document("/Media/ObDcrsuJb8AqjguWVGlk")
        docRef.getDocument { (axis360DocSnapshot, error) in
            guard let axis360DocSnapshot = axis360DocSnapshot, axis360DocSnapshot.exists else { return }
            let data = axis360DocSnapshot.data()
            let axis360Name = data["Name"] as? String ?? ""
            let axis360Link = data["Link"] as? String ?? ""
            print(axis360Name)
            print(axis360Link)
        }
        
        docRef = Firestore.firestore().document("/Media/YDAIv6R06M1TbYpzd06h")
        docRef.getDocument { (overDriveDocSnapshot, error) in
            guard let overDriveDocSnapshot = overDriveDocSnapshot, overDriveDocSnapshot.exists else { return }
            let data = overDriveDocSnapshot.data()
            let overDriveName = data["Name"] as? String ?? ""
            let overDriveLink = data["Link"] as? String ?? ""
            print(overDriveName)
            print(overDriveLink)
        }
        
        docRef = Firestore.firestore().document("/Media/vC8yGgp9YtOFGFPJePsm")
        docRef.getDocument { (CorrespondentDocSnapshot, error) in
            guard let CorrespondentDocSnapshot = CorrespondentDocSnapshot, CorrespondentDocSnapshot.exists else { return }
            let data = CorrespondentDocSnapshot.data()
            let CorrespondentName = data["Name"] as? String ?? ""
            let CorrespondentLink = data["Link"] as? String ?? ""
            print(CorrespondentName)
            print(CorrespondentLink)
        }


    

}
}
