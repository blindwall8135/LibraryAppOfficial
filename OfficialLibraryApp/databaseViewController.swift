//
//  databaseViewController.swift
//  OfficialLibraryApp
//
//  Created by Izhan Arif on 1/9/18.
//  Copyright © 2018 Karolina Groszewska. All rights reserved.
//

import UIKit
import Firebase


class databaseViewController: UIViewController {
    var docRef : DocumentReference!

    override func viewDidLoad() {
        super.viewDidLoad()
        docRef = Firestore.firestore().document("/DatabaseMagazines/25xaitH6e1Ems2QTDpYw")
        docRef.getDocument { (globalIssuesInContextDocSnapshot, error) in
            guard let globalIssuesInContextDocSnapshot = globalIssuesInContextDocSnapshot, globalIssuesInContextDocSnapshot.exists else { return }
            let data = globalIssuesInContextDocSnapshot.data()
            let globalIssuesInContextName = data["Name"] as? String ?? ""
            let globalIssuesInContextLink = data["Link"] as? String ?? ""
            print(globalIssuesInContextName)
            print(globalIssuesInContextLink)
        }
        docRef = Firestore.firestore().document("/DatabaseMagazines/5Djg4gQgr9XYWCtMPC5f")
        docRef.getDocument { (cQResearcherDocSnapshot, error) in
            guard let cQResearcherDocSnapshot = cQResearcherDocSnapshot, cQResearcherDocSnapshot.exists else { return }
            let data = cQResearcherDocSnapshot.data()
            let cQResearcherName = data["Name"] as? String ?? ""
            let cQResearcherLink = data["Link"] as? String ?? ""
            print(cQResearcherName)
            print(cQResearcherLink)
        }
        docRef = Firestore.firestore().document("/DatabaseMagazines/EtXxmNBTGRitap68dMRJ")
        docRef.getDocument { (consumerResourcesDocSnapshot, error) in
            guard let consumerResourcesDocSnapshot = consumerResourcesDocSnapshot, consumerResourcesDocSnapshot.exists else { return }
            let data = consumerResourcesDocSnapshot.data()
            let consumerResourcesName = data["Name"] as? String ?? ""
            let consumerResourcesLink = data["Link"] as? String ?? ""
            print(consumerResourcesName)
            print(consumerResourcesLink)
        }
        docRef = Firestore.firestore().document("/DatabaseMagazines/ HiYSe7o2Z3JRF8MA2CmJ")
        docRef.getDocument { (opposingViewpointsDocSnapshot, error) in
            guard let opposingViewpointsDocSnapshot = opposingViewpointsDocSnapshot, opposingViewpointsDocSnapshot.exists else { return }
            let data = opposingViewpointsDocSnapshot.data()
            let opposingViewpointsName = data["Name"] as? String ?? ""
            let opposingViewpointsLink = data["Link"] as? String ?? ""
            print(opposingViewpointsName)
            print(opposingViewpointsLink)
        }
        docRef = Firestore.firestore().document("/DatabaseMagazines/ LJZf1pibVEbRPYc5VFpr")
        docRef.getDocument { (studentResourcesDocSnapshot, error) in
            guard let studentResourcesDocSnapshot = studentResourcesDocSnapshot, studentResourcesDocSnapshot.exists else { return }
            let data = studentResourcesDocSnapshot.data()
            let studentResourcesName = data["Name"] as? String ?? ""
            let studentResourcesLink = data["Link"] as? String ?? ""
            print(studentResourcesName)
            print(studentResourcesLink)
        }
    docRef = Firestore.firestore().document("/DatabaseMagazines/ LtQJGteo4udXn1MY5Pf8")
    docRef.getDocument { (infotracDocSnapshot, error) in
    guard let infotracDocSnapshot = infotracDocSnapshot, infotracDocSnapshot.exists else { return }
    let data = infotracDocSnapshot.data()
    let infotracName = data["Name"] as? String ?? ""
    let infotracLink = data["Link"] as? String ?? ""
    print(infotracName)
    print(infotracLink)
    }
        docRef = Firestore.firestore().document("/DatabaseMagazines/ Ot3s5BgNhSICbaejRE0C")
        docRef.getDocument { (wilsonOmnimfileDocSnapshot, error) in
            guard let wilsonOmnimfileDocSnapshot = wilsonOmnimfileDocSnapshot, wilsonOmnimfileDocSnapshot.exists else { return }
            let data = wilsonOmnimfileDocSnapshot.data()
            let wilsonOmnimfileName = data["Name"] as? String ?? ""
            let wilsonOmnimfileLink = data["Link"] as? String ?? ""
            print(wilsonOmnimfileName)
            print(wilsonOmnimfileLink)
        }
        docRef = Firestore.firestore().document("/DatabaseMagazines/ PVH6MXJU5uD34qrCV0ho")
        docRef.getDocument { (tOPICSearchDocSnapshot, error) in
            guard let tOPICSearchDocSnapshot = tOPICSearchDocSnapshot, tOPICSearchDocSnapshot.exists else { return }
            let data = tOPICSearchDocSnapshot.data()
            let tOPICSearchName = data["Name"] as? String ?? ""
            let tOPICSearchLink = data["Link"] as? String ?? ""
            print(tOPICSearchName)
            print(tOPICSearchLink)
        }
        docRef = Firestore.firestore().document("/DatabaseMagazines/TKlyN7GgqQr6VSlZ2v21")
        docRef.getDocument { (sIRSDocSnapshot, error) in
            guard let sIRSDocSnapshot = sIRSDocSnapshot, sIRSDocSnapshot.exists else { return }
            let data = sIRSDocSnapshot.data()
            let sIRSName = data["Name"] as? String ?? ""
            let sIRSLink = data["Link"] as? String ?? ""
            print(sIRSName)
            print(sIRSLink)
        }
        docRef = Firestore.firestore().document("/DatabaseMagazines/TuRfX3nBSYnIxEa0TxpH")
        docRef.getDocument { (firstSearchDocSnapshot, error) in
            guard let firstSearchDocSnapshot = firstSearchDocSnapshot, firstSearchDocSnapshot.exists else { return }
            let data = firstSearchDocSnapshot.data()
            let firstSearchName = data["Name"] as? String ?? ""
            let firstSearchLink = data["Link"] as? String ?? ""
            print(firstSearchName)
            print(firstSearchLink)
        }
        docRef = Firestore.firestore().document("/DatabaseMagazines/hbBKwpQsnqLHzl85lkVn")
        docRef.getDocument { (mASUltraDocSnapshot, error) in
            guard let mASUltraDocSnapshot = mASUltraDocSnapshot, mASUltraDocSnapshot.exists else { return }
            let data = mASUltraDocSnapshot.data()
            let mASUltraName = data["Name"] as? String ?? ""
            let mASUltraLink = data["Link"] as? String ?? ""
            print(mASUltraName)
            print(mASUltraLink)
        }
        docRef = Firestore.firestore().document("/DatabaseMagazines/z1ImAc0iAdIufD4WQQ3R")
        docRef.getDocument { (eBSCODocSnapshot, error) in
            guard let eBSCODocSnapshot = eBSCODocSnapshot, eBSCODocSnapshot.exists else { return }
            let data = eBSCODocSnapshot.data()
            let eBSCOName = data["Name"] as? String ?? ""
            let eBSCOLink = data["Link"] as? String ?? ""
            print(eBSCOName)
            print(eBSCOLink)

    }
    }

}
