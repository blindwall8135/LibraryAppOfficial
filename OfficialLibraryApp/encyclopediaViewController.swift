//
//  encyclopediaViewController.swift
//  OfficialLibraryApp
//
//  Created by Izhan Arif on 1/9/18.
//  Copyright © 2018 Karolina Groszewska. All rights reserved.
//

import UIKit
import Firebase
class encyclopediaViewController: UIViewController {

    @IBOutlet weak var EncyclopediaofModernAsiaButton: UIButton!
    @IBOutlet weak var WorldBookEncyclopediaButton: UIButton!
    @IBOutlet weak var EncyclopediaofWorldCitiesButton: UIButton!
    @IBOutlet weak var EncyclopediaofFoodandCultureButton: UIButton!
    @IBOutlet weak var EncyclopediaofModernMiddleEastNorthAfricaButton: UIButton!
    var docRef : DocumentReference!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        docRef = Firestore.firestore().document("/Encyclopedias/D3vTKKcd83gS8i5vcOyJ")
        docRef.getDocument { (EncyclopediaofModernAsiaDocSnapshot, error) in
            guard let EncyclopediaofModernAsiaDocSnapshot = EncyclopediaofModernAsiaDocSnapshot, EncyclopediaofModernAsiaDocSnapshot.exists else { return }
            let data = EncyclopediaofModernAsiaDocSnapshot.data()
            let EncyclopediaofModernAsiaName = data["Name"] as? String ?? ""
            let EncyclopediaofModernAsiaLink = data["Link"] as? String ?? ""
            print(EncyclopediaofModernAsiaName)
            print(EncyclopediaofModernAsiaLink)
        }
        
        docRef = Firestore.firestore().document("/Encyclopedias/JHpSCqEQ7PQkir8glhxt")
        docRef.getDocument { (WorldBookEncyclopediaDocSnapshot, error) in
            guard let WorldBookEncyclopediaDocSnapshot = WorldBookEncyclopediaDocSnapshot, WorldBookEncyclopediaDocSnapshot.exists else { return }
            let data = WorldBookEncyclopediaDocSnapshot.data()
            let WorldBookEncyclopediaName = data["Name"] as? String ?? ""
            let WorldBookEncyclopediaLink = data["Link"] as? String ?? ""
            print(WorldBookEncyclopediaName)
            print(WorldBookEncyclopediaLink)
        }
        
        docRef = Firestore.firestore().document("/Encyclopedias/V3qt5ZsnHuXjw78meFIq")
        docRef.getDocument { (EncyclopediaofWorldCitiesDocSnapshot, error) in
            guard let EncyclopediaofWorldCitiesDocSnapshot = EncyclopediaofWorldCitiesDocSnapshot, EncyclopediaofWorldCitiesDocSnapshot.exists else { return }
            let data = EncyclopediaofWorldCitiesDocSnapshot.data()
            let EncyclopediaofWorldCitiesName = data["Name"] as? String ?? ""
            let EncyclopediaofWorldCitiesLink = data["Link"] as? String ?? ""
            print(EncyclopediaofWorldCitiesName)
            print(EncyclopediaofWorldCitiesLink)
        }
        
        docRef = Firestore.firestore().document("/Encyclopedias/Y7WEFM12lQUwB6yfIepb")
        docRef.getDocument { (EncyclopediaofFoodandCultureDocSnapshot, error) in
            guard let EncyclopediaofFoodandCultureDocSnapshot = EncyclopediaofFoodandCultureDocSnapshot, EncyclopediaofFoodandCultureDocSnapshot.exists else { return }
            let data = EncyclopediaofFoodandCultureDocSnapshot.data()
            let EncyclopediaofFoodandCultureName = data["Name"] as? String ?? ""
            let EncyclopediaofFoodandCultureLink = data["Link"] as? String ?? ""
            print(EncyclopediaofFoodandCultureName)
            print(EncyclopediaofFoodandCultureLink)
        }
        
        docRef = Firestore.firestore().document("/Encyclopedias/qaYNkLjYGKYbMxYfohSJ")
        docRef.getDocument { (EncyclopediaofModernMiddleEastNorthAfricaDocSnapshot, error) in
            guard let EncyclopediaofModernMiddleEastNorthAfricaDocSnapshot = EncyclopediaofModernMiddleEastNorthAfricaDocSnapshot, EncyclopediaofModernMiddleEastNorthAfricaDocSnapshot.exists else { return }
            let data = EncyclopediaofModernMiddleEastNorthAfricaDocSnapshot.data()
            let EncyclopediaofModernMiddleEastNorthAfricaName = data["Name"] as? String ?? ""
            let EncyclopediaofModernMiddleEastNorthAfricaLink = data["Link"] as? String ?? ""
            print(EncyclopediaofModernMiddleEastNorthAfricaName)
            print(EncyclopediaofModernMiddleEastNorthAfricaLink)
        }
}
    @IBAction func EncyclopediaofModernAsiaPressed(_ sender: Any) {
    }
    @IBAction func WorldBookEncyclopediaPressed(_ sender: Any) {
    }

    @IBAction func EncyclopediaofWorldCitiesPressed(_ sender: Any) {
    }
    @IBAction func EncyclopediaofFoodandCulturePressed(_ sender: Any) {
    }
    @IBAction func EncyclopediaofModernMiddleEastNorthAfricaPressed(_ sender: Any) {
    }
}
