//
//  scienceViewController.swift
//  OfficialLibraryApp
//
//  Created by Izhan Arif on 1/9/18.
//  Copyright © 2018 Karolina Groszewska. All rights reserved.
//

import UIKit
import Firebase
class scienceViewController: UIViewController {

    var docRef : DocumentReference!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        docRef = Firestore.firestore().document("/Science Resources/2cVUs0RFdwVeOvsHdYiw")
        docRef.getDocument { (EndangeredSpeciesofNorthAmericaDocSnapshot, error) in
            guard let EndangeredSpeciesofNorthAmericaDocSnapshot = EndangeredSpeciesofNorthAmericaDocSnapshot, EndangeredSpeciesofNorthAmericaDocSnapshot.exists else{ return }
            let data = EndangeredSpeciesofNorthAmericaDocSnapshot.data()
            let EndangeredSpeciesofNorthAmericaName = data["Name"] as? String ?? ""
            let EndangeredSpeciesofNorthAmericaLink = data["Link"] as? String ?? ""
            print(EndangeredSpeciesofNorthAmericaName)
            print(EndangeredSpeciesofNorthAmericaLink)
        }
        
        docRef = Firestore.firestore().document("/Science Resources/6bbKOQfDfmcd7AUPW3ui")
        docRef.getDocument { (GrzimeksAnimalLifeEncyclopediaDocSnapshot, error) in
            guard let GrzimeksAnimalLifeEncyclopediaDocSnapshot = GrzimeksAnimalLifeEncyclopediaDocSnapshot, GrzimeksAnimalLifeEncyclopediaDocSnapshot.exists else { return }
            let data = GrzimeksAnimalLifeEncyclopediaDocSnapshot.data()
            let GrzimeksAnimalLifeEncyclopediaName = data["Name"] as? String ?? ""
            let GrzimeksAnimalLifeEncyclopediaLink = data["Link"] as? String ?? ""
            print(GrzimeksAnimalLifeEncyclopediaName)
            print(GrzimeksAnimalLifeEncyclopediaLink)
        }

        
        docRef = Firestore.firestore().document("/Science Resources/Syb49NNeep5Kw9EQsDST")
        docRef.getDocument { (HealthSourceConsumerDocSnapshot, error) in
            guard let HealthSourceConsumerDocSnapshot = HealthSourceConsumerDocSnapshot, HealthSourceConsumerDocSnapshot.exists else { return }
            let data = HealthSourceConsumerDocSnapshot.data()
            let HealthSourceConsumerName = data["Name"] as? String ?? ""
            let HealthSourceConsumerLink = data["Link"] as? String ?? ""
            print(HealthSourceConsumerName)
            print(HealthSourceConsumerLink)
        }

        docRef = Firestore.firestore().document("/Science Resources/VMv90NZAYGh2ZJAtDO5E")
        docRef.getDocument { (ScienceinContextDocSnapshot, error) in
            guard let ScienceinContextDocSnapshot = ScienceinContextDocSnapshot, ScienceinContextDocSnapshot.exists else { return }
            let data = ScienceinContextDocSnapshot.data()
            let ScienceinContextName = data["Name"] as? String ?? ""
            let ScienceinContextLink = data["Link"] as? String ?? ""
            print(ScienceinContextName)
            print(ScienceinContextLink)
        }
        
        docRef = Firestore.firestore().document("/Science Resources/dR8RKfu92xBRq93Rs4Mp")
        docRef.getDocument { (TeenHealthandWellnessDocSnapshot, error) in
            guard let TeenHealthandWellnessDocSnapshot = TeenHealthandWellnessDocSnapshot, TeenHealthandWellnessDocSnapshot.exists else { return }
            let data = TeenHealthandWellnessDocSnapshot.data()
            let TeenHealthandWellnessName = data["Name"] as? String ?? ""
            let TeenHealthandWellnessLink = data["Link"] as? String ?? ""
            print(TeenHealthandWellnessName)
            print(TeenHealthandWellnessLink)
        }
        
        docRef = Firestore.firestore().document("/Science Resources/es6kZRPRToE8yzYS0jJm")
        docRef.getDocument { (DrugsAlcoholandAddictiveBehaviorDocSnapshot, error) in
            guard let DrugsAlcoholandAddictiveBehaviorDocSnapshot = DrugsAlcoholandAddictiveBehaviorDocSnapshot, DrugsAlcoholandAddictiveBehaviorDocSnapshot.exists else { return }
            let data = DrugsAlcoholandAddictiveBehaviorDocSnapshot.data()
            let DrugsAlcoholandAddictiveBehaviorName = data["Name"] as? String ?? ""
            let DrugsAlcoholandAddictiveBehaviorLink = data["Link"] as? String ?? ""
            print(DrugsAlcoholandAddictiveBehaviorName)
            print(DrugsAlcoholandAddictiveBehaviorLink)
        }
}
}
