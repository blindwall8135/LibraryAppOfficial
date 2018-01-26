//
//  resourcesViewController.swift
//  OfficialLibraryApp
//
//  Created by Izhan Arif on 1/9/18.
//  Copyright © 2018 Karolina Groszewska. All rights reserved.
//

import UIKit
import Firebase
import SafariServices
class resourcesViewController: UIViewController {

    @IBOutlet weak var TheParchmentButton: UIButton!
    @IBOutlet weak var MoodleButton: UIButton!
    @IBOutlet weak var NavianceButton: UIButton!
    @IBOutlet weak var SchoologyButton: UIButton!
    @IBOutlet weak var DistrictEmailButton: UIButton!
    @IBOutlet weak var InfiniteCampusButton: UIButton!
    var link1 = String()
    var link2 = String()
    var link3 = String()
    var link4 = String()
    var link5 = String()
    var link6 = String()
    
    var docRef : DocumentReference!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        docRef = Firestore.firestore().document("/Applications/4mrNKmzrIUInyUIGrCks")
        docRef.getDocument { (MoodleDocSnapshot, error) in
            guard let MoodleDocSnapshot = MoodleDocSnapshot, MoodleDocSnapshot.exists else { return }
            let data = MoodleDocSnapshot.data()
            let MoodleName = data["Name"] as? String ?? ""
            let MoodleLink = data["Link"] as? String ?? ""
        self.MoodleButton.setTitle(MoodleName, for: .normal)
            self.link1 = MoodleLink
        }
        
        docRef = Firestore.firestore().document("/Applications/Pswyr9705C6Ces3twIHT")
        docRef.getDocument { (ParchmentDocSnapshot, error) in
            guard let ParchmentDocSnapshot = ParchmentDocSnapshot, ParchmentDocSnapshot.exists else { return }
            let data = ParchmentDocSnapshot.data()
            let ParchmentName = data["Name"] as? String ?? ""
            let ParchmentLink = data["Link"] as? String ?? ""
            self.TheParchmentButton.setTitle(ParchmentName, for: .normal)
            self.link2 = ParchmentLink

}
        docRef = Firestore.firestore().document("/Applications/U1kWs8HAZCwjQti2Ptlv")
        docRef.getDocument { (NavianceDocSnapshot, error) in
            guard let NavianceDocSnapshot = NavianceDocSnapshot, NavianceDocSnapshot.exists else { return }
            let data = NavianceDocSnapshot.data()
            let NavianceName = data["Name"] as? String ?? ""
            let NavianceLink = data["Link"] as? String ?? ""
            self.NavianceButton.setTitle(NavianceName, for: .normal)
            self.link3 = NavianceLink
}
        docRef = Firestore.firestore().document("/Applications/qvuhYT5YFAIzg7hsSwjz")
        docRef.getDocument { (SchoologyDocSnapshot, error) in
            guard let SchoologyDocSnapshot = SchoologyDocSnapshot, SchoologyDocSnapshot.exists else { return }
            let data = SchoologyDocSnapshot.data()
            let SchoologyName = data["Name"] as? String ?? ""
            let SchoologyLink = data["Link"] as? String ?? ""
            self.SchoologyButton.setTitle(SchoologyName, for: .normal)
            self.link4 = SchoologyLink
}
        docRef = Firestore.firestore().document("/Applications/qzDafLEHp5d3UqcCR7qa")
        docRef.getDocument { (DistrictEmailDocSnapshot, error) in
            guard let DistrictEmailDocSnapshot = DistrictEmailDocSnapshot, DistrictEmailDocSnapshot.exists else { return }
            let data = DistrictEmailDocSnapshot.data()
            let DistrictEmailName = data["Name"] as? String ?? ""
            let DistrictEmailLink = data["Link"] as? String ?? ""
            self.DistrictEmailButton.setTitle(DistrictEmailName, for: .normal)
            self.link5 = DistrictEmailLink
}
        docRef = Firestore.firestore().document("/Applications/tI5bL3RCSF7YhwNLilpv")
        docRef.getDocument { (InfiniteCampusDocSnapshot, error) in
            guard let InfiniteCampusDocSnapshot = InfiniteCampusDocSnapshot, InfiniteCampusDocSnapshot.exists else { return }
            let data = InfiniteCampusDocSnapshot.data()
            let InfiniteCampusName = data["Name"] as? String ?? ""
            let InfiniteCampusLink = data["Link"] as? String ?? ""
            self.InfiniteCampusButton.setTitle(InfiniteCampusName, for: .normal)
            self.link6 = InfiniteCampusLink
}
}
    @IBAction func MoodlePressed(_ sender: UIButton) {
        let svc = SFSafariViewController(url: NSURL(string: link1)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    @IBAction func ParchmentPressed(_ sender: UIButton) {
        let svc = SFSafariViewController(url: NSURL(string: link2)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    @IBAction func NaviancePressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link3)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    @IBAction func SchoologyPressed(_ sender: UIButton) {
        let svc = SFSafariViewController(url: NSURL(string: link4)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    @IBAction func DistrictEmailPressed(_ sender: UIButton) {
        let svc = SFSafariViewController(url: NSURL(string: link5)! as URL)
        self.present(svc, animated: true, completion: nil)

    }
    @IBAction func InfiniteCampusPressed(_ sender: UIButton) {
        let svc = SFSafariViewController(url: NSURL(string: link6)! as URL)
        self.present(svc, animated: true, completion: nil)

    }
    
}
