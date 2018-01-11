//
//  eBooksViewController.swift
//  OfficialLibraryApp
//
//  Created by Izhan Arif on 1/9/18.
//  Copyright © 2018 Karolina Groszewska. All rights reserved.
//

import UIKit
import Firebase
class eBooksViewController: UIViewController {

    
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
                print(AmericansatWarName)
                print(AmericansatWarLink)
            }
            docRef = Firestore.firestore().document("/E-Book/aEagJW7b9NcaLECI5icl")
            docRef.getDocument { (CostumesandCultureDocSnapshot, error) in
                guard let CostumesandCultureDocSnapshot = CostumesandCultureDocSnapshot, CostumesandCultureDocSnapshot.exists else { return }
                let data = CostumesandCultureDocSnapshot.data()
                let CostumesandCultureName = data["Name"] as? String ?? ""
                let CostumesandCultureLink = data["Link"] as? String ?? ""
                print(CostumesandCultureName)
                print(CostumesandCultureLink)
            }
            docRef = Firestore.firestore().document("/E-Book/aG2xF2kAFdfUzyDDMAYR")
            docRef.getDocument { (GenocideandCrimesAgainstHumanityDocSnapshot, error) in
                guard let GenocideandCrimesAgainstHumanityDocSnapshot = GenocideandCrimesAgainstHumanityDocSnapshot, GenocideandCrimesAgainstHumanityDocSnapshot.exists else { return }
                let data = GenocideandCrimesAgainstHumanityDocSnapshot.data()
                let GenocideandCrimesAgainstHumanityName = data["Name"] as? String ?? ""
                let GenocideandCrimesAgainstHumanityLink = data["Link"] as? String ?? ""
                print(GenocideandCrimesAgainstHumanityName)
                print(GenocideandCrimesAgainstHumanityLink)
            }
            docRef = Firestore.firestore().document("/E-Book/hboZZX5x6QvR6EL9f5yU")
            docRef.getDocument { (BellBottomsDocSnapshot, error) in
                guard let BellBottomsDocSnapshot = BellBottomsDocSnapshot, BellBottomsDocSnapshot.exists else { return }
                let data = BellBottomsDocSnapshot.data()
                let BellBottomsName = data["Name"] as? String ?? ""
                let BellBottomsLink = data["Link"] as? String ?? ""
                print(BellBottomsName)
                print(BellBottomsLink)
            }
            docRef = Firestore.firestore().document("/E-Book/r3Eymfv2P4Eja7HCoWWB")
            docRef.getDocument { (AmericanDecadesDocSnapshot, error) in
                guard let AmericanDecadesDocSnapshot = AmericanDecadesDocSnapshot, AmericanDecadesDocSnapshot.exists else { return }
                let data = AmericanDecadesDocSnapshot.data()
                let AmericanDecadesName = data["Name"] as? String ?? ""
                let AmericanDecadesLink = data["Link"] as? String ?? ""
                print(AmericanDecadesName)
                print(AmericanDecadesLink)
            }
            docRef = Firestore.firestore().document("/E-Book/x9sKSUQwf7DXx5FX9OEf")
            docRef.getDocument { (CitiesofTheWorldDocSnapshot, error) in
                guard let CitiesofTheWorldDocSnapshot = CitiesofTheWorldDocSnapshot, CitiesofTheWorldDocSnapshot.exists else { return }
                let data = CitiesofTheWorldDocSnapshot.data()
                let CitiesofTheWorldName = data["Name"] as? String ?? ""
                let CitiesofTheWorldLink = data["Link"] as? String ?? ""
                print(CitiesofTheWorldName)
                print(CitiesofTheWorldLink)
            }
            docRef = Firestore.firestore().document("/E-Book/ydddtZ34liiFmXTtLaGN")
            docRef.getDocument { (EarlyCivilizationsintheAmericasDocSnapshot, error) in
                guard let EarlyCivilizationsintheAmericasDocSnapshot = EarlyCivilizationsintheAmericasDocSnapshot, EarlyCivilizationsintheAmericasDocSnapshot.exists else { return }
                let data = EarlyCivilizationsintheAmericasDocSnapshot.data()
                let EarlyCivilizationsintheAmericasName = data["Name"] as? String ?? ""
                let EarlyCivilizationsintheAmericasLink = data["Link"] as? String ?? ""
                print(EarlyCivilizationsintheAmericasName)
                print(EarlyCivilizationsintheAmericasLink)
            }
            docRef = Firestore.firestore().document("/E-Book/zDZFkROi3BhEvpKVVHGo")
            docRef.getDocument { (StJamesEncyclopediaofPopCultureDocSnapshot, error) in
                guard let StJamesEncyclopediaofPopCultureDocSnapshot = StJamesEncyclopediaofPopCultureDocSnapshot, StJamesEncyclopediaofPopCultureDocSnapshot.exists else { return }
                let data = StJamesEncyclopediaofPopCultureDocSnapshot.data()
                let StJamesEncyclopediaofPopCultureName = data["Name"] as? String ?? ""
                let StJamesEncyclopediaofPopCultureLink = data["Link"] as? String ?? ""
                print(StJamesEncyclopediaofPopCultureName)
                print(StJamesEncyclopediaofPopCultureLink)
            }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
