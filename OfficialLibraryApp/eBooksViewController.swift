//
//  eBooksViewController.swift
//  OfficialLibraryApp
//
//  Created by Izhan Arif on 1/9/18.
//  Copyright © 2018 Karolina Groszewska. All rights reserved.
//

import UIKit
import Firebase
import SafariServices
class eBooksViewController: UIViewController {

    
    @IBOutlet weak var AmericansatWarDocButton: UIButton!
    @IBOutlet weak var CostumesandCultureButton: UIButton!
    @IBOutlet weak var GenocideandCrimesAgainstHumanityButton: UIButton!
    @IBOutlet weak var BellBottomsButton: UIButton!
    @IBOutlet weak var AmericanDecadesButton: UIButton!
    @IBOutlet weak var CitiesofTheWorldButton: UIButton!
    @IBOutlet weak var EarlyCivilizationsintheAmericasButton: UIButton!
    @IBOutlet weak var StJamesEncyclopediaofPopCultureButton: UIButton!
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
            
            //E-Book
            docRef = Firestore.firestore().document("/E-Book/XWFGC4GplLPmzpkPGLVH")
            docRef.getDocument { (AmericansatWarDocSnapshot, error) in
                guard let AmericansatWarDocSnapshot = AmericansatWarDocSnapshot, AmericansatWarDocSnapshot.exists else { return }
                let data = AmericansatWarDocSnapshot.data()
                let AmericansatWarName = data["Name"] as? String ?? ""
                let AmericansatWarLink = data["Link"] as? String ?? ""
                self.AmericansatWarDocButton.setTitle(AmericansatWarName, for: .normal)
                self.link1 = AmericansatWarLink

            }
            docRef = Firestore.firestore().document("/E-Book/aEagJW7b9NcaLECI5icl")
            docRef.getDocument { (CostumesandCultureDocSnapshot, error) in
                guard let CostumesandCultureDocSnapshot = CostumesandCultureDocSnapshot, CostumesandCultureDocSnapshot.exists else { return }
                let data = CostumesandCultureDocSnapshot.data()
                let CostumesandCultureName = data["Name"] as? String ?? ""
                let CostumesandCultureLink = data["Link"] as? String ?? ""
                self.CostumesandCultureButton.setTitle(CostumesandCultureName, for: .normal)
                self.link2 = CostumesandCultureLink
            }
            docRef = Firestore.firestore().document("/E-Book/aG2xF2kAFdfUzyDDMAYR")
            docRef.getDocument { (GenocideandCrimesAgainstHumanityDocSnapshot, error) in
                guard let GenocideandCrimesAgainstHumanityDocSnapshot = GenocideandCrimesAgainstHumanityDocSnapshot, GenocideandCrimesAgainstHumanityDocSnapshot.exists else { return }
                let data = GenocideandCrimesAgainstHumanityDocSnapshot.data()
                let GenocideandCrimesAgainstHumanityName = data["Name"] as? String ?? ""
                let GenocideandCrimesAgainstHumanityLink = data["Link"] as? String ?? ""
                self.GenocideandCrimesAgainstHumanityButton.setTitle(GenocideandCrimesAgainstHumanityName, for: .normal)
                self.link3 = GenocideandCrimesAgainstHumanityLink
            }
            docRef = Firestore.firestore().document("/E-Book/hboZZX5x6QvR6EL9f5yU")
            docRef.getDocument { (BellBottomsDocSnapshot, error) in
                guard let BellBottomsDocSnapshot = BellBottomsDocSnapshot, BellBottomsDocSnapshot.exists else { return }
                let data = BellBottomsDocSnapshot.data()
                let BellBottomsName = data["Name"] as? String ?? ""
                let BellBottomsLink = data["Link"] as? String ?? ""
                self.BellBottomsButton.setTitle(BellBottomsName, for: .normal)
                self.link4 = BellBottomsLink
            }
            docRef = Firestore.firestore().document("/E-Book/r3Eymfv2P4Eja7HCoWWB")
            docRef.getDocument { (AmericanDecadesDocSnapshot, error) in
                guard let AmericanDecadesDocSnapshot = AmericanDecadesDocSnapshot, AmericanDecadesDocSnapshot.exists else { return }
                let data = AmericanDecadesDocSnapshot.data()
                let AmericanDecadesName = data["Name"] as? String ?? ""
                let AmericanDecadesLink = data["Link"] as? String ?? ""
                self.AmericanDecadesButton.setTitle(AmericanDecadesName, for: .normal)
                self.link5 = AmericanDecadesLink
            }
            docRef = Firestore.firestore().document("/E-Book/x9sKSUQwf7DXx5FX9OEf")
            docRef.getDocument { (CitiesofTheWorldDocSnapshot, error) in
                guard let CitiesofTheWorldDocSnapshot = CitiesofTheWorldDocSnapshot, CitiesofTheWorldDocSnapshot.exists else { return }
                let data = CitiesofTheWorldDocSnapshot.data()
                let CitiesofTheWorldName = data["Name"] as? String ?? ""
                let CitiesofTheWorldLink = data["Link"] as? String ?? ""
                self.CitiesofTheWorldButton.setTitle(CitiesofTheWorldName, for: .normal)
                self.link6 = CitiesofTheWorldLink
            }
            docRef = Firestore.firestore().document("/E-Book/ydddtZ34liiFmXTtLaGN")
            docRef.getDocument { (EarlyCivilizationsintheAmericasDocSnapshot, error) in
                guard let EarlyCivilizationsintheAmericasDocSnapshot = EarlyCivilizationsintheAmericasDocSnapshot, EarlyCivilizationsintheAmericasDocSnapshot.exists else { return }
                let data = EarlyCivilizationsintheAmericasDocSnapshot.data()
                let EarlyCivilizationsintheAmericasName = data["Name"] as? String ?? ""
                let EarlyCivilizationsintheAmericasLink = data["Link"] as? String ?? ""
                self.EarlyCivilizationsintheAmericasButton.setTitle(EarlyCivilizationsintheAmericasName, for: .normal)
                self.link7 = EarlyCivilizationsintheAmericasLink
            }
            docRef = Firestore.firestore().document("/E-Book/zDZFkROi3BhEvpKVVHGo")
            docRef.getDocument { (StJamesEncyclopediaofPopCultureDocSnapshot, error) in
                guard let StJamesEncyclopediaofPopCultureDocSnapshot = StJamesEncyclopediaofPopCultureDocSnapshot, StJamesEncyclopediaofPopCultureDocSnapshot.exists else { return }
                let data = StJamesEncyclopediaofPopCultureDocSnapshot.data()
                let StJamesEncyclopediaofPopCultureName = data["Name"] as? String ?? ""
                let StJamesEncyclopediaofPopCultureLink = data["Link"] as? String ?? ""
                self.StJamesEncyclopediaofPopCultureButton.setTitle(StJamesEncyclopediaofPopCultureName, for: .normal)
                self.link8 = StJamesEncyclopediaofPopCultureLink
            }

    }
    @IBAction func AmericansatWarDocPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link1)! as URL)
        self.present(svc, animated: true, completion: nil)

    }
    @IBAction func CostumesandCulturePressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link2)! as URL)
        self.present(svc, animated: true, completion: nil)

    }
    @IBAction func GenocideandCrimesAgainstHumanityPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link3)! as URL)
        self.present(svc, animated: true, completion: nil)

    }
    @IBAction func BellBottomsPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link4)! as URL)
        self.present(svc, animated: true, completion: nil)

    }
    @IBAction func AmericanDecadesPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link5)! as URL)
        self.present(svc, animated: true, completion: nil)

    }
    @IBAction func CitiesofTheWorldPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link6)! as URL)
        self.present(svc, animated: true, completion: nil)

    }
    @IBAction func EarlyCivilizationsintheAmericasPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link7)! as URL)
        self.present(svc, animated: true, completion: nil)

    }
    @IBAction func StJamesEncyclopediaofPopCulturePressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link8)! as URL)
        self.present(svc, animated: true, completion: nil)

    }
}



