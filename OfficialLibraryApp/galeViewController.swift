//
//  galeViewController.swift
//  OfficialLibraryApp
//
//  Created by Izhan Arif on 1/9/18.
//  Copyright © 2018 Karolina Groszewska. All rights reserved.
//

import UIKit
import Firebase
import SafariServices
class galeViewController: UIViewController {

    @IBOutlet weak var ScienceinContextButton: UIButton!
    @IBOutlet weak var OpposingViewpointsinContextButton: UIButton!
    @IBOutlet weak var GALEPowerSearchButton: UIButton!
    @IBOutlet weak var GlobalIssuesinContextButton: UIButton!
    @IBOutlet weak var GaleVirtualReferenceButton: UIButton!
    @IBOutlet weak var LitFinderButton: UIButton!
    @IBOutlet weak var StudentResourceinContextButton: UIButton!
    @IBOutlet weak var BiographyinContextButton: UIButton!
    var link1 = String()
    var link2 = String()
    var link3 = String()
    var link4 = String()
    var link5 = String()
    var link6 = String()
    var link7 = String()
    var link8 = String()
    var docRef : DocumentReference!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        docRef = Firestore.firestore().document("/Gale/0nJvAJYEO5brS3PWmdE8")
        docRef.getDocument { (ScienceinContextDocSnapshot, error) in
            guard let ScienceinContextDocSnapshot = ScienceinContextDocSnapshot, ScienceinContextDocSnapshot.exists else { return }
            let data = ScienceinContextDocSnapshot.data()
            let ScienceinContextName = data["Name"] as? String ?? ""
            let ScienceinContextLink = data["Link"] as? String ?? ""
            self.ScienceinContextButton.setTitle(ScienceinContextName, for: .normal)
            self.link1 = ScienceinContextLink

        }

        docRef = Firestore.firestore().document("/Gale/57YGAmuHLSKFLfrHC29v")
        docRef.getDocument { (OpposingViewpointsinContextDocSnapshot, error) in
            guard let OpposingViewpointsinContextDocSnapshot = OpposingViewpointsinContextDocSnapshot, OpposingViewpointsinContextDocSnapshot.exists else { return }
            let data = OpposingViewpointsinContextDocSnapshot.data()
            let OpposingViewpointsinContextName = data["Name"] as? String ?? ""
            let OpposingViewpointsinContextLink = data["Link"] as? String ?? ""
            self.OpposingViewpointsinContextButton.setTitle(OpposingViewpointsinContextName, for: .normal)
            self.link2 = OpposingViewpointsinContextLink
        }
        
        docRef = Firestore.firestore().document("/Gale/71QtBku0QGFIFajMi5qm")
        docRef.getDocument { (GALEPowerSearchDocSnapshot, error) in
            guard let GALEPowerSearchDocSnapshot = GALEPowerSearchDocSnapshot, GALEPowerSearchDocSnapshot.exists else { return }
            let data = GALEPowerSearchDocSnapshot.data()
            let GALEPowerSearchName = data["Name"] as? String ?? ""
            let GALEPowerSearchLink = data["Link"] as? String ?? ""
            self.GALEPowerSearchButton.setTitle(GALEPowerSearchName, for: .normal)
            self.link3 = GALEPowerSearchLink
        }
        
        docRef = Firestore.firestore().document("/Gale/Nd16oqynh071MJHNWBoT")
        docRef.getDocument { (GlobalIssuesinContextDocSnapshot, error) in
            guard let GlobalIssuesinContextDocSnapshot = GlobalIssuesinContextDocSnapshot, GlobalIssuesinContextDocSnapshot.exists else { return }
            let data = GlobalIssuesinContextDocSnapshot.data()
            let GlobalIssuesinContextName = data["Name"] as? String ?? ""
            let GlobalIssuesinContextLink = data["Link"] as? String ?? ""
            self.GlobalIssuesinContextButton.setTitle(GlobalIssuesinContextName, for: .normal)
            self.link4 = GlobalIssuesinContextLink
        }
        
        docRef = Firestore.firestore().document("/Gale/cJOmY3Vklp9pBzKy5Ui0")
        docRef.getDocument { (GaleVirtualReferenceDocSnapshot, error) in
            guard let GaleVirtualReferenceDocSnapshot = GaleVirtualReferenceDocSnapshot, GaleVirtualReferenceDocSnapshot.exists else { return }
            let data = GaleVirtualReferenceDocSnapshot.data()
            let GaleVirtualReferenceName = data["Name"] as? String ?? ""
            let GaleVirtualReferenceLink = data["Link"] as? String ?? ""
            self.GaleVirtualReferenceButton.setTitle(GaleVirtualReferenceName, for: .normal)
            self.link5 = GaleVirtualReferenceLink
        }
        
        docRef = Firestore.firestore().document("/Gale/qOIFsAByo8qzmxE6RhLS")
        docRef.getDocument { (LitFinderDocSnapshot, error) in
            guard let LitFinderDocSnapshot = LitFinderDocSnapshot, LitFinderDocSnapshot.exists else { return }
            let data = LitFinderDocSnapshot.data()
            let LitFinderName = data["Name"] as? String ?? ""
            let LitFinderLink = data["Link"] as? String ?? ""
            self.LitFinderButton.setTitle(LitFinderName, for: .normal)
            self.link6 = LitFinderLink
        }
        
        docRef = Firestore.firestore().document("/Gale/yguupcCU5fOpMJGMZStZ")
        docRef.getDocument { (StudentResourceinContextDocSnapshot, error) in
            guard let StudentResourceinContextDocSnapshot = StudentResourceinContextDocSnapshot, StudentResourceinContextDocSnapshot.exists else { return }
            let data = StudentResourceinContextDocSnapshot.data()
            let StudentResourceinContextName = data["Name"] as? String ?? ""
            let StudentResourceinContextLink = data["Link"] as? String ?? ""
            self.StudentResourceinContextButton.setTitle(StudentResourceinContextName, for: .normal)
            self.link7 = StudentResourceinContextLink
        }
        
        docRef = Firestore.firestore().document("/Gale/yxUWyaXu0Z5uAxCsLCGw")
        docRef.getDocument { (BiographyinContextDocSnapshot, error) in
            guard let BiographyinContextDocSnapshot = BiographyinContextDocSnapshot, BiographyinContextDocSnapshot.exists else { return }
            let data = BiographyinContextDocSnapshot.data()
            let BiographyinContextName = data["Name"] as? String ?? ""
            let BiographyinContextLink = data["Link"] as? String ?? ""
            self.BiographyinContextButton.setTitle(BiographyinContextName, for: .normal)
            self.link8 = BiographyinContextLink
        }
}
    @IBAction func ScienceinContextPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link1)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    @IBAction func OpposingViewpointsinContextPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link2)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    @IBAction func GALEPowerSearchPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link3)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    @IBAction func GlobalIssuesinContextPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link4)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    @IBAction func GaleVirtualReferencePressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link5)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    @IBAction func LitFinderPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link6)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    @IBAction func StudentResourceinContextPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link7)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    @IBAction func BiographyinContextPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link8)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
}
