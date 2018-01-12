//
//  socialScienceViewController.swift
//  OfficialLibraryApp
//
//  Created by Izhan Arif on 1/9/18.
//  Copyright © 2018 Karolina Groszewska. All rights reserved.
//

import UIKit
import Firebase

class socialScienceViewController: UIViewController {
   var docRef : DocumentReference!
    override func viewDidLoad() {
        super.viewDidLoad()
        docRef = Firestore.firestore().document("/Social Science/544Ba9ux7xcwD3xpJ7qH")
        docRef.getDocument { (geoWorldDocSnapshot, error) in
            guard let geoWorldDocSnapshot = geoWorldDocSnapshot, geoWorldDocSnapshot.exists else { return }
            let data = geoWorldDocSnapshot.data()
            let geoWorldName = data["Name"] as? String ?? ""
            let geoWorldLink = data["Link"] as? String ?? ""
            print(geoWorldName)
            print(geoWorldLink)
        }
        docRef = Firestore.firestore().document("/Social Science/AlW66gajTYYwiFXTdmVK")
        docRef.getDocument { (geoUSDocSnapshot, error) in
            guard let geoUSDocSnapshot = geoUSDocSnapshot, geoUSDocSnapshot.exists else { return }
            let data = geoUSDocSnapshot.data()
            let geoUSName = data["Name"] as? String ?? ""
            let geoUSLink = data["Link"] as? String ?? ""
            print(geoUSName)
            print(geoUSLink)
        }
        docRef = Firestore.firestore().document("/Social Science/QWDK6szLNdsQ82QloMpx")
        docRef.getDocument { (americanGovernmentDocSnapshot, error) in
            guard let americanGovernmentDocSnapshot = americanGovernmentDocSnapshot, americanGovernmentDocSnapshot.exists else { return }
            let data = americanGovernmentDocSnapshot.data()
            let americanGovernmentName = data["Name"] as? String ?? ""
            let americanGovernmentLink = data["Link"] as? String ?? ""
            print(americanGovernmentName)
            print(americanGovernmentLink)
        }
        docRef = Firestore.firestore().document("/Social Science/RXS1Fz4bPqG9Gdb29tcn")
        docRef.getDocument { (aBCCICLODocSnapshot, error) in
            guard let aBCCICLODocSnapshot = aBCCICLODocSnapshot, aBCCICLODocSnapshot.exists else { return }
            let data = aBCCICLODocSnapshot.data()
            let aBCCICLOName = data["Name"] as? String ?? ""
            let aBCCICLOLink = data["Link"] as? String ?? ""
            print(aBCCICLOName)
            print(aBCCICLOLink)
        }
        docRef = Firestore.firestore().document("/Social Science/SBsmmTcPCwx4moSGlBW4")
        docRef.getDocument { (wHModernDocSnapshot, error) in
            guard let wHModernDocSnapshot = wHModernDocSnapshot, wHModernDocSnapshot.exists else { return }
            let data = wHModernDocSnapshot.data()
            let wHModernName = data["Name"] as? String ?? ""
            let wHModernLink = data["Link"] as? String ?? ""
            print(wHModernName)
            print(wHModernLink)
        }
        docRef = Firestore.firestore().document("/Social Science/SxNGZ03khMhhZQRZwCF1")
        docRef.getDocument { (dailyLifeDocSnapshot, error) in
            guard let dailyLifeDocSnapshot = dailyLifeDocSnapshot, dailyLifeDocSnapshot.exists else { return }
            let data = dailyLifeDocSnapshot.data()
            let dailyLifeName = data["Name"] as? String ?? ""
            let dailyLifeLink = data["Link"] as? String ?? ""
            print(dailyLifeName)
            print(dailyLifeLink)
        }
        docRef = Firestore.firestore().document("/Social Science/U0QbF8d36yhmlybJYofK")
        docRef.getDocument { (wHAncientDocSnapshot, error) in
            guard let wHAncientDocSnapshot = wHAncientDocSnapshot, wHAncientDocSnapshot.exists else { return }
            let data = wHAncientDocSnapshot.data()
            let wHAncientName = data["Name"] as? String ?? ""
            let wHAncientLink = data["Link"] as? String ?? ""
            print(wHAncientName)
            print(wHAncientLink)
        }
        docRef = Firestore.firestore().document("/Social Science/WbH6VhJMbU7jJaUsA6pQ")
        docRef.getDocument { (countryReportsDocSnapshot, error) in
            guard let countryReportsDocSnapshot = countryReportsDocSnapshot, countryReportsDocSnapshot.exists else { return }
            let data = countryReportsDocSnapshot.data()
            let countryReportsName = data["Name"] as? String ?? ""
            let countryReportsLink = data["Link"] as? String ?? ""
            print(countryReportsName)
            print(countryReportsLink)
        }
        docRef = Firestore.firestore().document("/Social Science/wFio4nRkY9PCfFLsyeXp")
        docRef.getDocument { (americanHistoryDocSnapshot, error) in
            guard let americanHistoryDocSnapshot = americanHistoryDocSnapshot, americanHistoryDocSnapshot.exists else { return }
            let data = americanHistoryDocSnapshot.data()
            let americanHistoryName = data["Name"] as? String ?? ""
            let americanHistoryLink = data["Link"] as? String ?? ""
            print(americanHistoryName)
            print(americanHistoryLink)
        }
        docRef = Firestore.firestore().document("/Social Science/y5JeK6ym78sV55rluXS0")
        docRef.getDocument { (studentResourceinContextDocSnapshot, error) in
            guard let studentResourceinContextDocSnapshot = studentResourceinContextDocSnapshot, studentResourceinContextDocSnapshot.exists else { return }
            let data = studentResourceinContextDocSnapshot.data()
            let studentResourceinContextName = data["Name"] as? String ?? ""
            let studentResourceinContextLink = data["Link"] as? String ?? ""
            print(studentResourceinContextName)
            print(studentResourceinContextLink)
        }
        docRef = Firestore.firestore().document("/Social Science/z3WyBQ4ojeWipCyfzYAm")
        docRef.getDocument { (globalIssuesinContextDocSnapshot, error) in
            guard let globalIssuesinContextDocSnapshot = globalIssuesinContextDocSnapshot, globalIssuesinContextDocSnapshot.exists else { return }
            let data = globalIssuesinContextDocSnapshot.data()
            let globalIssuesinContextName = data["Name"] as? String ?? ""
            let globalIssuesinContextLink = data["Link"] as? String ?? ""
            print(globalIssuesinContextName)
            print(globalIssuesinContextLink)
        }
    }

}
