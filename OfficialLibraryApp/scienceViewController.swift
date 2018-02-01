//
//  scienceViewController.swift
//  OfficialLibraryApp
//
//  Created by Izhan Arif on 1/9/18.
//  Copyright © 2018 Karolina Groszewska. All rights reserved.
//

import UIKit
import Firebase
import SafariServices
class scienceViewController: UIViewController {

    var docRef : DocumentReference!
    var link1 = String()
    var link2 = String()
    var link3 = String()
    var link4 = String()
    var link5 = String()
    var link6 = String()
    @IBOutlet weak var EndangeredSpeciesofNorthAmericaButton: UIButton!
    @IBOutlet weak var GrzimeksAnimalLifeEncyclopediaButton: UIButton!
    @IBOutlet weak var HealthSourceConsumerButton: UIButton!
    @IBOutlet weak var ScienceinContextButton: UIButton!
    @IBOutlet weak var TeenHealthandWellnessButton: UIButton!
    @IBOutlet weak var DrugsAlcoholandAddictiveBehaviorButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        docRef = Firestore.firestore().document("/Science Resources/2cVUs0RFdwVeOvsHdYiw")
        docRef.getDocument { (EndangeredSpeciesofNorthAmericaDocSnapshot, error) in
            guard let EndangeredSpeciesofNorthAmericaDocSnapshot = EndangeredSpeciesofNorthAmericaDocSnapshot, EndangeredSpeciesofNorthAmericaDocSnapshot.exists else{ return }
            let data = EndangeredSpeciesofNorthAmericaDocSnapshot.data()
            let EndangeredSpeciesofNorthAmericaName = data["Name"] as? String ?? ""
            let EndangeredSpeciesofNorthAmericaLink = data["Link"] as? String ?? ""
            self.EndangeredSpeciesofNorthAmericaButton.setTitle(EndangeredSpeciesofNorthAmericaName, for: .normal)
            self.link1 = EndangeredSpeciesofNorthAmericaLink
        }
        
        docRef = Firestore.firestore().document("/Science Resources/6bbKOQfDfmcd7AUPW3ui")
        docRef.getDocument { (GrzimeksAnimalLifeEncyclopediaDocSnapshot, error) in
            guard let GrzimeksAnimalLifeEncyclopediaDocSnapshot = GrzimeksAnimalLifeEncyclopediaDocSnapshot, GrzimeksAnimalLifeEncyclopediaDocSnapshot.exists else { return }
            let data = GrzimeksAnimalLifeEncyclopediaDocSnapshot.data()
            let GrzimeksAnimalLifeEncyclopediaName = data["Name"] as? String ?? ""
            let GrzimeksAnimalLifeEncyclopediaLink = data["Link"] as? String ?? ""
            self.GrzimeksAnimalLifeEncyclopediaButton.setTitle(GrzimeksAnimalLifeEncyclopediaName, for: .normal)
            self.link2 = GrzimeksAnimalLifeEncyclopediaLink
        }

        
        docRef = Firestore.firestore().document("/Science Resources/Syb49NNeep5Kw9EQsDST")
        docRef.getDocument { (HealthSourceConsumerDocSnapshot, error) in
            guard let HealthSourceConsumerDocSnapshot = HealthSourceConsumerDocSnapshot, HealthSourceConsumerDocSnapshot.exists else { return }
            let data = HealthSourceConsumerDocSnapshot.data()
            let HealthSourceConsumerName = data["Name"] as? String ?? ""
            let HealthSourceConsumerLink = data["Link"] as? String ?? ""
            self.HealthSourceConsumerButton.setTitle(HealthSourceConsumerName, for: .normal)
            self.link3 = HealthSourceConsumerLink
        }

        docRef = Firestore.firestore().document("/Science Resources/VMv90NZAYGh2ZJAtDO5E")
        docRef.getDocument { (ScienceinContextDocSnapshot, error) in
            guard let ScienceinContextDocSnapshot = ScienceinContextDocSnapshot, ScienceinContextDocSnapshot.exists else { return }
            let data = ScienceinContextDocSnapshot.data()
            let ScienceinContextName = data["Name"] as? String ?? ""
            let ScienceinContextLink = data["Link"] as? String ?? ""
            self.ScienceinContextButton.setTitle(ScienceinContextName, for: .normal)
            self.link4 = ScienceinContextLink
        }
        
        docRef = Firestore.firestore().document("/Science Resources/dR8RKfu92xBRq93Rs4Mp")
        docRef.getDocument { (TeenHealthandWellnessDocSnapshot, error) in
            guard let TeenHealthandWellnessDocSnapshot = TeenHealthandWellnessDocSnapshot, TeenHealthandWellnessDocSnapshot.exists else { return }
            let data = TeenHealthandWellnessDocSnapshot.data()
            let TeenHealthandWellnessName = data["Name"] as? String ?? ""
            let TeenHealthandWellnessLink = data["Link"] as? String ?? ""
            self.TeenHealthandWellnessButton.setTitle(TeenHealthandWellnessName, for: .normal)
            self.link5 = TeenHealthandWellnessLink
        }
        
        docRef = Firestore.firestore().document("/Science Resources/es6kZRPRToE8yzYS0jJm")
        docRef.getDocument { (DrugsAlcoholandAddictiveBehaviorDocSnapshot, error) in
            guard let DrugsAlcoholandAddictiveBehaviorDocSnapshot = DrugsAlcoholandAddictiveBehaviorDocSnapshot, DrugsAlcoholandAddictiveBehaviorDocSnapshot.exists else { return }
            let data = DrugsAlcoholandAddictiveBehaviorDocSnapshot.data()
            let DrugsAlcoholandAddictiveBehaviorName = data["Name"] as? String ?? ""
            let DrugsAlcoholandAddictiveBehaviorLink = data["Link"] as? String ?? ""
            self.DrugsAlcoholandAddictiveBehaviorButton.setTitle(DrugsAlcoholandAddictiveBehaviorName, for: .normal)
            self.link6 = DrugsAlcoholandAddictiveBehaviorLink        }
}
    @IBAction func EndangeredSpeciesofNorthAmericaPressed(_ sender: Any) {
    }

    @IBAction func GrzimeksAnimalLifeEncyclopediaPressed(_ sender: Any) {
    }
    @IBAction func HealthSourceConsumerPressed(_ sender: Any) {
    }
    @IBAction func ScienceinContextPressed(_ sender: Any) {
    }
    @IBAction func TeenHealthandWellnessPressed(_ sender: Any) {
    }
    @IBAction func DrugsAlcoholandAddictiveBehaviorPressed(_ sender: Any) {
    }
}
