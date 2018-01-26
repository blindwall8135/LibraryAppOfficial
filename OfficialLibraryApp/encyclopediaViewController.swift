//
//  encyclopediaViewController.swift
//  OfficialLibraryApp
//
//  Created by Izhan Arif on 1/9/18.
//  Copyright © 2018 Karolina Groszewska. All rights reserved.
//

import UIKit
import Firebase
import SafariServices
class encyclopediaViewController: UIViewController {
    var link1 = String()
    var link2 = String()
    var link3 = String()
    var link4 = String()
    var link5 = String()
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
        self.EncyclopediaofModernAsiaButton.setTitle(EncyclopediaofModernAsiaName, for: .normal)
        self.link1 = EncyclopediaofModernAsiaLink

        }
        
        docRef = Firestore.firestore().document("/Encyclopedias/JHpSCqEQ7PQkir8glhxt")
        docRef.getDocument { (WorldBookEncyclopediaDocSnapshot, error) in
            guard let WorldBookEncyclopediaDocSnapshot = WorldBookEncyclopediaDocSnapshot, WorldBookEncyclopediaDocSnapshot.exists else { return }
            let data = WorldBookEncyclopediaDocSnapshot.data()
            let WorldBookEncyclopediaName = data["Name"] as? String ?? ""
            let WorldBookEncyclopediaLink = data["Link"] as? String ?? ""
            self.WorldBookEncyclopediaButton.setTitle(WorldBookEncyclopediaName, for: .normal)
            self.link2 = WorldBookEncyclopediaLink

        }
        
        docRef = Firestore.firestore().document("/Encyclopedias/V3qt5ZsnHuXjw78meFIq")
        docRef.getDocument { (EncyclopediaofWorldCitiesDocSnapshot, error) in
            guard let EncyclopediaofWorldCitiesDocSnapshot = EncyclopediaofWorldCitiesDocSnapshot, EncyclopediaofWorldCitiesDocSnapshot.exists else { return }
            let data = EncyclopediaofWorldCitiesDocSnapshot.data()
            let EncyclopediaofWorldCitiesName = data["Name"] as? String ?? ""
            let EncyclopediaofWorldCitiesLink = data["Link"] as? String ?? ""
        self.EncyclopediaofWorldCitiesButton.setTitle(EncyclopediaofWorldCitiesName, for: .normal)
            self.link3 =  EncyclopediaofWorldCitiesLink

        }
        
        docRef = Firestore.firestore().document("/Encyclopedias/Y7WEFM12lQUwB6yfIepb")
        docRef.getDocument { (EncyclopediaofFoodandCultureDocSnapshot, error) in
            guard let EncyclopediaofFoodandCultureDocSnapshot = EncyclopediaofFoodandCultureDocSnapshot, EncyclopediaofFoodandCultureDocSnapshot.exists else { return }
            let data = EncyclopediaofFoodandCultureDocSnapshot.data()
            let EncyclopediaofFoodandCultureName = data["Name"] as? String ?? ""
            let EncyclopediaofFoodandCultureLink = data["Link"] as? String ?? ""
self.EncyclopediaofFoodandCultureButton.setTitle(EncyclopediaofFoodandCultureName, for: .normal)
    self.link4 = EncyclopediaofFoodandCultureLink

        }
        
        docRef = Firestore.firestore().document("/Encyclopedias/qaYNkLjYGKYbMxYfohSJ")
        docRef.getDocument { (EncyclopediaofModernMiddleEastNorthAfricaDocSnapshot, error) in
            guard let EncyclopediaofModernMiddleEastNorthAfricaDocSnapshot = EncyclopediaofModernMiddleEastNorthAfricaDocSnapshot, EncyclopediaofModernMiddleEastNorthAfricaDocSnapshot.exists else { return }
            let data = EncyclopediaofModernMiddleEastNorthAfricaDocSnapshot.data()
            let EncyclopediaofModernMiddleEastNorthAfricaName = data["Name"] as? String ?? ""
            let EncyclopediaofModernMiddleEastNorthAfricaLink = data["Link"] as? String ?? ""
self.EncyclopediaofModernMiddleEastNorthAfricaButton.setTitle(EncyclopediaofModernMiddleEastNorthAfricaName, for: .normal)
            self.link5 = EncyclopediaofModernMiddleEastNorthAfricaLink

        }
}
    @IBAction func EncyclopediaofModernAsiaPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link1)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    @IBAction func WorldBookEncyclopediaPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link2)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    @IBAction func EncyclopediaofWorldCitiesPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link3)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    @IBAction func EncyclopediaofFoodandCulturePressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link4)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    @IBAction func EncyclopediaofModernMiddleEastNorthAfricaPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link5)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
}
