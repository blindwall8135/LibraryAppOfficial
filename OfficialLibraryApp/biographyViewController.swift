//
//  biographyViewController.swift
//  OfficialLibraryApp
//
//  Created by Izhan Arif on 1/9/18.
//  Copyright © 2018 Karolina Groszewska. All rights reserved.
//

import UIKit
import Firebase

class biographyViewController: UIViewController {

    var docRef: DocumentReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        docRef = Firestore.firestore().document("/Biography in Context/0ReyRdGIexFqB2BbIihT")
        docRef.getDocument { (MitchCourseWebsiteDocSnapshot, error) in
            guard let MitchCourseWebsiteDocSnapshot = MitchCourseWebsiteDocSnapshot, MitchCourseWebsiteDocSnapshot.exists else { return }
            let data = MitchCourseWebsiteDocSnapshot.data()
            let MitchCourseWebsiteName = data["Name"] as? String ?? ""
            let MitchCourseWebsiteLink = data["Link"] as? String ?? ""
            print(MitchCourseWebsiteName)
            print(MitchCourseWebsiteLink)
        }
        docRef = Firestore.firestore().document("/Biography in Context/EmX2O5CkFdSzfTcyGCn3")
        docRef.getDocument { (GeneticScienceLearningCenterDocSnapshot, error) in
            guard let GeneticScienceLearningCenterDocSnapshot = GeneticScienceLearningCenterDocSnapshot, GeneticScienceLearningCenterDocSnapshot.exists else { return }
            let data = GeneticScienceLearningCenterDocSnapshot.data()
            let GeneticScienceLearningCenterName = data["Name"] as? String ?? ""
            let GeneticScienceLearningCenterLink = data["Link"] as? String ?? ""
            print(GeneticScienceLearningCenterName)
            print(GeneticScienceLearningCenterLink)
        }
        docRef = Firestore.firestore().document("/Biography in Context/LnsGoBujTRDJDb7HjbM6")
        docRef.getDocument { (BiographyInContextCenterDocSnapshot, error) in
            guard let BiographyInContextCenterDocSnapshot = BiographyInContextCenterDocSnapshot, BiographyInContextCenterDocSnapshot.exists else { return }
            let data = BiographyInContextCenterDocSnapshot.data()
            let BiographyInContextCenterName = data["Name"] as? String ?? ""
            let BiographyInContextCenterLink = data["Link"] as? String ?? ""
            print(BiographyInContextCenterName)
            print(BiographyInContextCenterLink)
        }
        docRef = Firestore.firestore().document("/Biography in Context/qOxMphl2cfaNRPrdiYl1")
        docRef.getDocument { (HHMIBiointeractiveDocSnapshot, error) in
            guard let HHMIBiointeractiveDocSnapshot = HHMIBiointeractiveDocSnapshot, HHMIBiointeractiveDocSnapshot.exists else { return }
            let data = HHMIBiointeractiveDocSnapshot.data()
            let HHMIBiointeractiveName = data["Name"] as? String ?? ""
            let HHMIBiointeractiveLink = data["Link"] as? String ?? ""
            print(HHMIBiointeractiveName)
            print(HHMIBiointeractiveLink)
        }
        
    }

}
