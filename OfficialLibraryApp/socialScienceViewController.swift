//
//  socialScienceViewController.swift
//  OfficialLibraryApp
//
//  Created by Izhan Arif on 1/9/18.
//  Copyright © 2018 Karolina Groszewska. All rights reserved.
//

import UIKit
import Firebase
import SafariServices

class socialScienceViewController: UIViewController {
    @IBOutlet weak var geographyWorldButton: UIButton!
    @IBOutlet weak var geographyUSButton: UIButton!
    @IBOutlet weak var americanGovernmentButton: UIButton!
    @IBOutlet weak var aBCCICLOButton: UIButton!
    @IBOutlet weak var worldHistoryModernButton: UIButton!
    @IBOutlet weak var dailyLifeThroughoutHistoryButton: UIButton!
    @IBOutlet weak var worldHistoryAncientButton: UIButton!
    @IBOutlet weak var countryReportsButton: UIButton!
    @IBOutlet weak var americanHistoryButton: UIButton!
    @IBOutlet weak var studentResourcesInContextButton: UIButton!
    @IBOutlet weak var globalIssuesInContextButton: UIButton!
    
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
    var docRef : DocumentReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        docRef = Firestore.firestore().document("/Social Science/544Ba9ux7xcwD3xpJ7qH")
        docRef.getDocument { (geoWorldDocSnapshot, error) in
            guard let geoWorldDocSnapshot = geoWorldDocSnapshot, geoWorldDocSnapshot.exists else {
                self.geographyWorldButton.isEnabled = false
                self.geographyWorldButton.isHidden = true
                return }
            let data = geoWorldDocSnapshot.data()
            let geoWorldName = data["Name"] as? String ?? ""
            let geoWorldLink = data["Link"] as? String ?? ""
            self.geographyWorldButton.setTitle(geoWorldName, for: .normal)
            self.link1 = geoWorldLink
        }
        docRef = Firestore.firestore().document("/Social Science/AlW66gajTYYwiFXTdmVK")
        docRef.getDocument { (geoUSDocSnapshot, error) in
            guard let geoUSDocSnapshot = geoUSDocSnapshot, geoUSDocSnapshot.exists else {
                self.geographyUSButton.isEnabled = false
                self.geographyUSButton.isHidden = true
                return }
            let data = geoUSDocSnapshot.data()
            let geoUSName = data["Name"] as? String ?? ""
            let geoUSLink = data["Link"] as? String ?? ""
           self.geographyUSButton.setTitle(geoUSName, for: .normal)
            self.link2 = geoUSLink
        }
        docRef = Firestore.firestore().document("/Social Science/QWDK6szLNdsQ82QloMpx")
        docRef.getDocument { (americanGovernmentDocSnapshot, error) in
            guard let americanGovernmentDocSnapshot = americanGovernmentDocSnapshot, americanGovernmentDocSnapshot.exists else {
                self.americanGovernmentButton.isEnabled = false
                self.americanGovernmentButton.isHidden = true
                return }
            let data = americanGovernmentDocSnapshot.data()
            let americanGovernmentName = data["Name"] as? String ?? ""
            let americanGovernmentLink = data["Link"] as? String ?? ""
            self.americanGovernmentButton.setTitle(americanGovernmentName, for: .normal)
            self.link3 = americanGovernmentLink
        }
        docRef = Firestore.firestore().document("/Social Science/RXS1Fz4bPqG9Gdb29tcn")
        docRef.getDocument { (aBCCICLODocSnapshot, error) in
            guard let aBCCICLODocSnapshot = aBCCICLODocSnapshot, aBCCICLODocSnapshot.exists else {
                self.aBCCICLOButton.isEnabled = false
                self.aBCCICLOButton.isHidden = true
                return }
            let data = aBCCICLODocSnapshot.data()
            let aBCCICLOName = data["Name"] as? String ?? ""
            let aBCCICLOLink = data["Link"] as? String ?? ""
            self.aBCCICLOButton.setTitle(aBCCICLOName, for: .normal)
            self.link4 = aBCCICLOLink
        }
        docRef = Firestore.firestore().document("/Social Science/SBsmmTcPCwx4moSGlBW4")
        docRef.getDocument { (wHModernDocSnapshot, error) in
            guard let wHModernDocSnapshot = wHModernDocSnapshot, wHModernDocSnapshot.exists else {
                self.worldHistoryModernButton.isEnabled = false
                self.worldHistoryModernButton.isHidden = true
                return }
            let data = wHModernDocSnapshot.data()
            let wHModernName = data["Name"] as? String ?? ""
            let wHModernLink = data["Link"] as? String ?? ""
            self.worldHistoryModernButton.setTitle(wHModernName, for: .normal)
            self.link5 = wHModernLink
        }
        docRef = Firestore.firestore().document("/Social Science/SxNGZ03khMhhZQRZwCF1")
        docRef.getDocument { (dailyLifeDocSnapshot, error) in
            guard let dailyLifeDocSnapshot = dailyLifeDocSnapshot, dailyLifeDocSnapshot.exists else {
                self.dailyLifeThroughoutHistoryButton.isEnabled = false
                self.dailyLifeThroughoutHistoryButton.isHidden = true
                return }
            let data = dailyLifeDocSnapshot.data()
            let dailyLifeName = data["Name"] as? String ?? ""
            let dailyLifeLink = data["Link"] as? String ?? ""
           self.dailyLifeThroughoutHistoryButton.setTitle(dailyLifeName, for: .normal)
            self.link6 = dailyLifeLink
        }
        docRef = Firestore.firestore().document("/Social Science/U0QbF8d36yhmlybJYofK")
        docRef.getDocument { (wHAncientDocSnapshot, error) in
            guard let wHAncientDocSnapshot = wHAncientDocSnapshot, wHAncientDocSnapshot.exists else {
                self.worldHistoryAncientButton.isEnabled = false
                self.worldHistoryAncientButton.isHidden = true
                return }
            let data = wHAncientDocSnapshot.data()
            let wHAncientName = data["Name"] as? String ?? ""
            let wHAncientLink = data["Link"] as? String ?? ""
            self.worldHistoryAncientButton.setTitle(wHAncientName, for: .normal)
          self.link7 = wHAncientLink
        }
        docRef = Firestore.firestore().document("/Social Science/WbH6VhJMbU7jJaUsA6pQ")
        docRef.getDocument { (countryReportsDocSnapshot, error) in
            guard let countryReportsDocSnapshot = countryReportsDocSnapshot, countryReportsDocSnapshot.exists else {
                self.countryReportsButton.isEnabled = false
                self.countryReportsButton.isHidden = true
                return }
            let data = countryReportsDocSnapshot.data()
            let countryReportsName = data["Name"] as? String ?? ""
            let countryReportsLink = data["Link"] as? String ?? ""
           self.countryReportsButton.setTitle(countryReportsName, for: .normal)
            self.link8 = countryReportsLink
        }
        docRef = Firestore.firestore().document("/Social Science/wFio4nRkY9PCfFLsyeXp")
        docRef.getDocument { (americanHistoryDocSnapshot, error) in
            guard let americanHistoryDocSnapshot = americanHistoryDocSnapshot, americanHistoryDocSnapshot.exists else {
                self.americanHistoryButton.isEnabled = false
                self.americanHistoryButton.isHidden = true
                return }
            let data = americanHistoryDocSnapshot.data()
            let americanHistoryName = data["Name"] as? String ?? ""
            let americanHistoryLink = data["Link"] as? String ?? ""
            self.americanHistoryButton.setTitle(americanHistoryName, for: .normal)
            self.link9 = americanHistoryLink
        }
        docRef = Firestore.firestore().document("/Social Science/y5JeK6ym78sV55rluXS0")
        docRef.getDocument { (studentResourceinContextDocSnapshot, error) in
            guard let studentResourceinContextDocSnapshot = studentResourceinContextDocSnapshot, studentResourceinContextDocSnapshot.exists else {
                self.studentResourcesInContextButton.isEnabled = false
                self.studentResourcesInContextButton.isHidden = true
                return }
            let data = studentResourceinContextDocSnapshot.data()
            let studentResourceinContextName = data["Name"] as? String ?? ""
            let studentResourceinContextLink = data["Link"] as? String ?? ""
        self.studentResourcesInContextButton.setTitle(studentResourceinContextName, for: .normal)
           self.link10 = studentResourceinContextLink
        }
        docRef = Firestore.firestore().document("/Social Science/z3WyBQ4ojeWipCyfzYAm")
        docRef.getDocument { (globalIssuesinContextDocSnapshot, error) in
            guard let globalIssuesinContextDocSnapshot = globalIssuesinContextDocSnapshot, globalIssuesinContextDocSnapshot.exists else {
                self.globalIssuesInContextButton.isEnabled = false
                self.globalIssuesInContextButton.isHidden = true
                return }
            let data = globalIssuesinContextDocSnapshot.data()
            let globalIssuesinContextName = data["Name"] as? String ?? ""
            let globalIssuesinContextLink = data["Link"] as? String ?? ""
             self.globalIssuesInContextButton.setTitle(globalIssuesinContextName, for: .normal)
            self.link11 = globalIssuesinContextLink
        }
    }

    @IBAction func whenGeoWorldPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link1)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    
    @IBAction func whenGeoUSPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link2)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    
    @IBAction func whenAmericanGovtPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link3)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    
    @IBAction func whenABCCICLOPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link4)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    
    @IBAction func whenWHModernPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link5)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    
    @IBAction func whenDailyLifePressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link6)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    
    @IBAction func whenWHAncientPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link7)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    
    @IBAction func whenCountryReportsPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link8)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    
    @IBAction func whenAmericanHistoryPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link9)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    
    @IBAction func whenStuResourcesInContextPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link10)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    
    @IBAction func whenGlobalIssuesInContextPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link11)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    
    
    
}
