//
//  resourcesViewController.swift
//  OfficialLibraryApp
//
//  Created by Izhan Arif on 1/9/18.
//  Copyright © 2018 Karolina Groszewska. All rights reserved.
//

import UIKit
import Firebase
class resourcesViewController: UIViewController {

    var docRef : DocumentReference!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        docRef = Firestore.firestore().document("/Applications/4mrNKmzrIUInyUIGrCks")
        docRef.getDocument { (MoodleDocSnapshot, error) in
            guard let MoodleDocSnapshot = MoodleDocSnapshot, MoodleDocSnapshot.exists else { return }
            let data = MoodleDocSnapshot.data()
            let MoodleName = data["Name"] as? String ?? ""
            let MoodleLink = data["Link"] as? String ?? ""
            print(MoodleName)
            print(MoodleLink)
            
            
            
        }
        
        docRef = Firestore.firestore().document("/Applications/Pswyr9705C6Ces3twIHT")
        docRef.getDocument { (ParchmentDocSnapshot, error) in
            guard let ParchmentDocSnapshot = ParchmentDocSnapshot, ParchmentDocSnapshot.exists else { return }
            let data = ParchmentDocSnapshot.data()
            let ParchmentName = data["Name"] as? String ?? ""
            let ParchmentLink = data["Link"] as? String ?? ""
            print(ParchmentName)
            print(ParchmentLink)
        

}
        docRef = Firestore.firestore().document("/Applications/U1kWs8HAZCwjQti2Ptlv")
        docRef.getDocument { (NavianceDocSnapshot, error) in
            guard let NavianceDocSnapshot = NavianceDocSnapshot, NavianceDocSnapshot.exists else { return }
            let data = NavianceDocSnapshot.data()
            let NavianceName = data["Name"] as? String ?? ""
            let NavianceLink = data["Link"] as? String ?? ""
            print(NavianceName)
            print(NavianceLink)
            
}
        docRef = Firestore.firestore().document("/Applications/qvuhYT5YFAIzg7hsSwjz")
        docRef.getDocument { (SchoologyDocSnapshot, error) in
            guard let SchoologyDocSnapshot = SchoologyDocSnapshot, SchoologyDocSnapshot.exists else { return }
            let data = SchoologyDocSnapshot.data()
            let SchoologyName = data["Name"] as? String ?? ""
            let SchoologyLink = data["Link"] as? String ?? ""
            print(SchoologyName)
            print(SchoologyLink)
}
        docRef = Firestore.firestore().document("/Applications/qzDafLEHp5d3UqcCR7qa")
        docRef.getDocument { (DistrictEmailDocSnapshot, error) in
            guard let DistrictEmailDocSnapshot = DistrictEmailDocSnapshot, DistrictEmailDocSnapshot.exists else { return }
            let data = DistrictEmailDocSnapshot.data()
            let DistrictEmailName = data["Name"] as? String ?? ""
            let DistrictEmailLink = data["Link"] as? String ?? ""
            print(DistrictEmailName)
            print(DistrictEmailLink)
}
        docRef = Firestore.firestore().document("/Applications/tI5bL3RCSF7YhwNLilpv")
        docRef.getDocument { (InfiniteCampusDocSnapshot, error) in
            guard let InfiniteCampusDocSnapshot = InfiniteCampusDocSnapshot, InfiniteCampusDocSnapshot.exists else { return }
            let data = InfiniteCampusDocSnapshot.data()
            let InfiniteCampusName = data["Name"] as? String ?? ""
            let InfiniteCampusLink = data["Link"] as? String ?? ""
            print(InfiniteCampusName)
            print(InfiniteCampusLink)
}
}
}
