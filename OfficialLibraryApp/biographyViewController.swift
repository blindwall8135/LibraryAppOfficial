//
//  biographyViewController.swift
//  OfficialLibraryApp
//
//  Created by Izhan Arif on 1/9/18.
//  Copyright © 2018 Karolina Groszewska. All rights reserved.
//

import UIKit
import Firebase
import SafariServices

class biographyViewController: UIViewController {
    @IBOutlet weak var MitchCourseWebsite: UIButton!
    @IBOutlet weak var GeneticScienceLearningCenter: UIButton!
    @IBOutlet weak var BiograghyInContext: UIButton!
    @IBOutlet weak var HHMIBiointeractive: UIButton!
    var link1 = String()
    var link2 = String()
    var link3 = String()
    var link4 = String()

    
    var docRef: DocumentReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        docRef = Firestore.firestore().document("/Biography in Context/0ReyRdGIexFqB2BbIihT")
        docRef.getDocument { (MitchCourseWebsiteDocSnapshot, error) in
            guard let MitchCourseWebsiteDocSnapshot = MitchCourseWebsiteDocSnapshot, MitchCourseWebsiteDocSnapshot.exists else { return }
            let data = MitchCourseWebsiteDocSnapshot.data()
            let MitchCourseWebsiteName = data["Name"] as? String ?? ""
            let MitchCourseWebsiteLink = data["Link"] as? String ?? ""
            self.MitchCourseWebsite.setTitle(MitchCourseWebsiteName, for: .normal)
            self.link1 = MitchCourseWebsiteLink

        }
        docRef = Firestore.firestore().document("/Biography in Context/EmX2O5CkFdSzfTcyGCn3")
        docRef.getDocument { (GeneticScienceLearningCenterDocSnapshot, error) in
            guard let GeneticScienceLearningCenterDocSnapshot = GeneticScienceLearningCenterDocSnapshot, GeneticScienceLearningCenterDocSnapshot.exists else { return }
            let data = GeneticScienceLearningCenterDocSnapshot.data()
            let GeneticScienceLearningCenterName = data["Name"] as? String ?? ""
            let GeneticScienceLearningCenterLink = data["Link"] as? String ?? ""
            self.GeneticScienceLearningCenter.setTitle(GeneticScienceLearningCenterName, for: .normal)
            self.link2 = GeneticScienceLearningCenterLink

        }
        docRef = Firestore.firestore().document("/Biography in Context/LnsGoBujTRDJDb7HjbM6")
        docRef.getDocument { (BiographyInContextCenterDocSnapshot, error) in
            guard let BiographyInContextCenterDocSnapshot = BiographyInContextCenterDocSnapshot, BiographyInContextCenterDocSnapshot.exists else { return }
            let data = BiographyInContextCenterDocSnapshot.data()
            let BiographyInContextCenterName = data["Name"] as? String ?? ""
            let BiographyInContextCenterLink = data["Link"] as? String ?? ""
            self.BiograghyInContext.setTitle(BiographyInContextCenterName, for: .normal)
            self.link3 = BiographyInContextCenterLink

        }
        docRef = Firestore.firestore().document("/Biography in Context/qOxMphl2cfaNRPrdiYl1")
        docRef.getDocument { (HHMIBiointeractiveDocSnapshot, error) in
            guard let HHMIBiointeractiveDocSnapshot = HHMIBiointeractiveDocSnapshot, HHMIBiointeractiveDocSnapshot.exists else { return }
            let data = HHMIBiointeractiveDocSnapshot.data()
            let HHMIBiointeractiveName = data["Name"] as? String ?? ""
            let HHMIBiointeractiveLink = data["Link"] as? String ?? ""
            self.HHMIBiointeractive.setTitle(HHMIBiointeractiveName, for: .normal)
            self.link4 = HHMIBiointeractiveLink

        }
        
    }
    @IBAction func MitchCourseWebsite(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link1)! as URL)
        self.present(svc, animated: true, completion: nil)

    }
    @IBAction func HHMIBiointeractive(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link4)! as URL)
        self.present(svc, animated: true, completion: nil)

    }
    @IBAction func BiographyInContext(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link3)! as URL)
        self.present(svc, animated: true, completion: nil)

    }
    @IBAction func GeneticScienceLearningCenter(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link2)! as URL)
        self.present(svc, animated: true, completion: nil)

    }
    
    
    }

    



