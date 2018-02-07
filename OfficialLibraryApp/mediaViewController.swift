//
//  mediaViewController.swift
//  OfficialLibraryApp
//
//  Created by Izhan Arif on 1/9/18.
//  Copyright © 2018 Karolina Groszewska. All rights reserved.
//

import UIKit
import Firebase
import SafariServices
class mediaViewController: UIViewController {
    var docRef : DocumentReference!
    var link1 =  String()
    var link2 =  String()
    var link3 =  String()
    var link4 =  String()
    var link5 =  String()
    @IBOutlet weak var flipsterButton: UIButton!
    @IBOutlet weak var correspondentLiveButton: UIButton!
    @IBOutlet weak var axis360Button: UIButton!
    @IBOutlet weak var overDriveButton: UIButton!
    @IBOutlet weak var CorrespondentButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        docRef = Firestore.firestore().document("/Media/CuKxYLyT0Uc9aEUgaVh0")
        docRef.getDocument { (flipsterDocSnapshot, error) in
            guard let flipsterDocSnapshot = flipsterDocSnapshot, flipsterDocSnapshot.exists else {
                self.flipsterButton.isEnabled = false
                self.flipsterButton.isHidden = true
                return }
            let data = flipsterDocSnapshot.data()
            let flipsterName = data["Name"] as? String ?? ""
            let flipsterLink = data["Link"] as? String ?? ""
            self.flipsterButton.setTitle(flipsterName, for: .normal)
            self.link1 = flipsterLink
        
    }
        
        docRef = Firestore.firestore().document("/Media/NdOkWqKik6sCZVJnFPPz")
        docRef.getDocument { (correspondentLiveDocSnapshot, error) in
            guard let correspondentLiveDocSnapshot = correspondentLiveDocSnapshot, correspondentLiveDocSnapshot.exists else {
                self.correspondentLiveButton.isEnabled = false
                self.correspondentLiveButton.isHidden = true
                return }
            let data = correspondentLiveDocSnapshot.data()
            let correspondentLiveName = data["Name"] as? String ?? ""
            let correspondentLiveLink = data["Link"] as? String ?? ""
            self.correspondentLiveButton.setTitle(correspondentLiveName, for: .normal)
            self.link2 = correspondentLiveLink
        }
        
        docRef = Firestore.firestore().document("/Media/ObDcrsuJb8AqjguWVGlk")
        docRef.getDocument { (axis360DocSnapshot, error) in
            guard let axis360DocSnapshot = axis360DocSnapshot, axis360DocSnapshot.exists else {
                self.axis360Button.isEnabled = false
                self.axis360Button.isHidden = true
                return }
            let data = axis360DocSnapshot.data()
            let axis360Name = data["Name"] as? String ?? ""
            let axis360Link = data["Link"] as? String ?? ""
            self.axis360Button.setTitle(axis360Name, for: .normal)
            self.link3 = axis360Link
        }
        
        docRef = Firestore.firestore().document("/Media/YDAIv6R06M1TbYpzd06h")
        docRef.getDocument { (overDriveDocSnapshot, error) in
            guard let overDriveDocSnapshot = overDriveDocSnapshot, overDriveDocSnapshot.exists else {
                self.overDriveButton.isEnabled = false
                self.overDriveButton.isHidden = true
                return }
            let data = overDriveDocSnapshot.data()
            let overDriveName = data["Name"] as? String ?? ""
            let overDriveLink = data["Link"] as? String ?? ""
            self.overDriveButton.setTitle(overDriveName, for: .normal)
            self.link4 = overDriveLink
        }
        
        docRef = Firestore.firestore().document("/Media/vC8yGgp9YtOFGFPJePsm")
        docRef.getDocument { (CorrespondentDocSnapshot, error) in
            guard let CorrespondentDocSnapshot = CorrespondentDocSnapshot, CorrespondentDocSnapshot.exists else {
                self.CorrespondentButton.isEnabled = false
                self.CorrespondentButton.isHidden = true
                return }
            let data = CorrespondentDocSnapshot.data()
            let CorrespondentName = data["Name"] as? String ?? ""
            let CorrespondentLink = data["Link"] as? String ?? ""
            self.CorrespondentButton.setTitle(CorrespondentName, for: .normal)
            self.link5 = CorrespondentLink
        }


    

}
    @IBAction func flipsterPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link1)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    @IBAction func correspondentLivePressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link2)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    @IBAction func axis360Pressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link3)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    @IBAction func overDrivePressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link4)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    @IBAction func CorrespondentPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link5)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
}
