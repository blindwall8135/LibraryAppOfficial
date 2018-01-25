//
//  databaseViewController.swift
//  OfficialLibraryApp
//
//  Created by Izhan Arif on 1/9/18.
//  Copyright © 2018 Karolina Groszewska. All rights reserved.
//

import UIKit
import Firebase
import SafariServices

class databaseViewController: UIViewController {
    var docRef : DocumentReference!
    var link1 = String()
    var link2 = String()
    var link3 = String()
    var link4 = String()
    var link5 = String()
    var link6 = String()
    var link7 = String()
    var link8 = String()
    var link9 = String()
    var link10 = String()
    var link11 = String()
    var link12 = String()

    @IBOutlet weak var globalIssuesInContextButton: UIButton!
    @IBOutlet weak var cQResearcherButton: UIButton!
    @IBOutlet weak var consumerResourcesButton: UIButton!
    @IBOutlet weak var opposingViewpointsButton: UIButton!
    @IBOutlet weak var studentResourcesButton: UIButton!
    @IBOutlet weak var infotracDocButton: UIButton!
    @IBOutlet weak var wilsonOmnimfileButton: UIButton!
    @IBOutlet weak var tOPICSearchButton: UIButton!
    @IBOutlet weak var sIRSButton: UIButton!
    @IBOutlet weak var firstSearchButton: UIButton!
    @IBOutlet weak var mASUltraButton: UIButton!
    @IBOutlet weak var eBSCOButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        docRef = Firestore.firestore().document("/Database Magazines/25xaitH6e1Ems2QTDpYw")
        docRef.getDocument { (globalIssuesInContextDocSnapshot, error) in
            guard let globalIssuesInContextDocSnapshot = globalIssuesInContextDocSnapshot, globalIssuesInContextDocSnapshot.exists else { return }
            let data = globalIssuesInContextDocSnapshot.data()
            let globalIssuesInContextName = data["Name"] as? String ?? ""
            let globalIssuesInContextLink = data["Link"] as? String ?? ""
            self.globalIssuesInContextButton.setTitle(globalIssuesInContextName, for: .normal)
            self.link1 = globalIssuesInContextLink

        }
        docRef = Firestore.firestore().document("/Database Magazines/5Djg4gQgr9XYWCtMPC5f")
        docRef.getDocument { (cQResearcherDocSnapshot, error) in
            guard let cQResearcherDocSnapshot = cQResearcherDocSnapshot, cQResearcherDocSnapshot.exists else { return }
            let data = cQResearcherDocSnapshot.data()
            let cQResearcherName = data["Name"] as? String ?? ""
            let cQResearcherLink = data["Link"] as? String ?? ""
            self.cQResearcherButton.setTitle(cQResearcherName, for: .normal)
            self.link2 = cQResearcherLink

        }
        docRef = Firestore.firestore().document("/Database Magazines/EtXxmNBTGRitap68dMRJ")
        docRef.getDocument { (consumerResourcesDocSnapshot, error) in
            guard let consumerResourcesDocSnapshot = consumerResourcesDocSnapshot, consumerResourcesDocSnapshot.exists else { return }
            let data = consumerResourcesDocSnapshot.data()
            let consumerResourcesName = data["Name"] as? String ?? ""
            let consumerResourcesLink = data["Link"] as? String ?? ""
            self.consumerResourcesButton.setTitle(consumerResourcesName, for: .normal)
            self.link3 = consumerResourcesLink

        }
        docRef = Firestore.firestore().document("/Database Magazines/HiYSe7o2Z3JRF8MA2CmJ")
        docRef.getDocument { (opposingViewpointsDocSnapshot, error) in
            guard let opposingViewpointsDocSnapshot = opposingViewpointsDocSnapshot, opposingViewpointsDocSnapshot.exists else { return }
            let data = opposingViewpointsDocSnapshot.data()
            let opposingViewpointsName = data["Name"] as? String ?? ""
            let opposingViewpointsLink = data["Link"] as? String ?? ""
            self.opposingViewpointsButton.setTitle(opposingViewpointsName, for: .normal)
            self.link4 = opposingViewpointsLink
        }
        docRef = Firestore.firestore().document("/Database Magazines/LJZf1pibVEbRPYc5VFpr")
        docRef.getDocument { (studentResourcesDocSnapshot, error) in
            guard let studentResourcesDocSnapshot = studentResourcesDocSnapshot, studentResourcesDocSnapshot.exists else { return }
            let data = studentResourcesDocSnapshot.data()
            let studentResourcesName = data["Name"] as? String ?? ""
            let studentResourcesLink = data["Link"] as? String ?? ""
            self.studentResourcesButton.setTitle(studentResourcesName, for: .normal)
            self.link5 = studentResourcesLink
        }
    docRef = Firestore.firestore().document("/Database Magazines/LtQJGteo4udXn1MY5Pf8")
    docRef.getDocument { (infotracDocSnapshot, error) in
    guard let infotracDocSnapshot = infotracDocSnapshot, infotracDocSnapshot.exists else { return }
    let data = infotracDocSnapshot.data()
    let infotracName = data["Name"] as? String ?? ""
    let infotracLink = data["Link"] as? String ?? ""
        self.infotracDocButton.setTitle(infotracName, for: .normal)
        self.link6 = infotracLink
    }
        docRef = Firestore.firestore().document("/Database Magazines/Ot3s5BgNhSICbaejRE0C")
        docRef.getDocument { (wilsonOmnimfileDocSnapshot, error) in
            guard let wilsonOmnimfileDocSnapshot = wilsonOmnimfileDocSnapshot, wilsonOmnimfileDocSnapshot.exists else { return }
            let data = wilsonOmnimfileDocSnapshot.data()
            let wilsonOmnimfileName = data["Name"] as? String ?? ""
            let wilsonOmnimfileLink = data["Link"] as? String ?? ""
            self.wilsonOmnimfileButton.setTitle(wilsonOmnimfileName, for: .normal)
            self.link7 = wilsonOmnimfileLink
        }
        docRef = Firestore.firestore().document("/Database Magazines/PVH6MXJU5uD34qrCV0ho")
        docRef.getDocument { (tOPICSearchDocSnapshot, error) in
            guard let tOPICSearchDocSnapshot = tOPICSearchDocSnapshot, tOPICSearchDocSnapshot.exists else { return }
            let data = tOPICSearchDocSnapshot.data()
            let tOPICSearchName = data["Name"] as? String ?? ""
            let tOPICSearchLink = data["Link"] as? String ?? ""
            self.tOPICSearchButton.setTitle(tOPICSearchName, for: .normal)
            self.link8 = tOPICSearchLink
        }
        docRef = Firestore.firestore().document("/Database Magazines/TKlyN7GgqQr6VSlZ2v21")
        docRef.getDocument { (sIRSDocSnapshot, error) in
            guard let sIRSDocSnapshot = sIRSDocSnapshot, sIRSDocSnapshot.exists else { return }
            let data = sIRSDocSnapshot.data()
            let sIRSName = data["Name"] as? String ?? ""
            let sIRSLink = data["Link"] as? String ?? ""
            self.sIRSButton.setTitle(sIRSName, for: .normal)
            self.link9 = sIRSLink
        }
        docRef = Firestore.firestore().document("/Database Magazines/TuRfX3nBSYnIxEa0TxpH")
        docRef.getDocument { (firstSearchDocSnapshot, error) in
            guard let firstSearchDocSnapshot = firstSearchDocSnapshot, firstSearchDocSnapshot.exists else { return }
            let data = firstSearchDocSnapshot.data()
            let firstSearchName = data["Name"] as? String ?? ""
            let firstSearchLink = data["Link"] as? String ?? ""
            self.firstSearchButton.setTitle(firstSearchName, for: .normal)
            self.link10 = firstSearchLink
        }
        docRef = Firestore.firestore().document("/Database Magazines/hbBKwpQsnqLHzl85lkVn")
        docRef.getDocument { (mASUltraDocSnapshot, error) in
            guard let mASUltraDocSnapshot = mASUltraDocSnapshot, mASUltraDocSnapshot.exists else { return }
            let data = mASUltraDocSnapshot.data()
            let mASUltraName = data["Name"] as? String ?? ""
            let mASUltraLink = data["Link"] as? String ?? ""
            self.mASUltraButton.setTitle(mASUltraName, for: .normal)
            self.link11 = mASUltraLink
        }
        docRef = Firestore.firestore().document("/Database Magazines/z1ImAc0iAdIufD4WQQ3R")
        docRef.getDocument { (eBSCODocSnapshot, error) in
            guard let eBSCODocSnapshot = eBSCODocSnapshot, eBSCODocSnapshot.exists else { return }
            let data = eBSCODocSnapshot.data()
            let eBSCOName = data["Name"] as? String ?? ""
            let eBSCOLink = data["Link"] as? String ?? ""
            self.eBSCOButton.setTitle(eBSCOName, for: .normal)
            self.link12 = eBSCOLink
    }
    }

    @IBAction func globalIssuesInContextPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link1)! as URL)
        self.present(svc, animated: true, completion: nil)

    }
    @IBAction func cQResearcherPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link2)! as URL)
        self.present(svc, animated: true, completion: nil)

    }
    @IBAction func consumerResourcesPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link3)! as URL)
        self.present(svc, animated: true, completion: nil)

    }
    @IBAction func opposingViewpointsPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link4)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    @IBAction func studentResourcesPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link5)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    @IBAction func infotracPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link6)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    @IBAction func wilsonOmnimfilePressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link7)! as URL)
        self.present(svc, animated: true, completion: nil)

    }
    @IBAction func tOPICSearchPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link8)! as URL)
        self.present(svc, animated: true, completion: nil)

    }
    @IBAction func sIRSPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link9)! as URL)
        self.present(svc, animated: true, completion: nil)

    }
    @IBAction func firstSearchPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link10)! as URL)
        self.present(svc, animated: true, completion: nil)

    }

    @IBAction func mASUltraPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link11)! as URL)
        self.present(svc, animated: true, completion: nil)

    }
    @IBAction func eBSCOPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link12)! as URL)
        self.present(svc, animated: true, completion: nil)


    }
}
