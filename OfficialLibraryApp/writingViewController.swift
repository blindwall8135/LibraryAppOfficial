//
//  writingViewController.swift
//  OfficialLibraryApp
//
//  Created by Izhan Arif on 1/9/18.
//  Copyright © 2018 Karolina Groszewska. All rights reserved.
//

import UIKit
import Firebase
import SafariServices
class writingViewController: UIViewController {
        
        var docRef : DocumentReference!
    
    @IBOutlet weak var thesisStatementsButton: UIButton!
    @IBOutlet weak var OWLPerdueDocButton: UIButton!
    @IBOutlet weak var easyBibButton: UIButton!
    @IBOutlet weak var MELConWritingButton: UIButton!
    override func viewDidLoad() {
            super.viewDidLoad()
            
            //Writing
            docRef = Firestore.firestore().document("/Writing/d8YgNrUA6GhQQrH1cprL")
            docRef.getDocument { (thesisStatementsDocSnapshot, error) in
                guard let thesisStatementsDocSnapshot = thesisStatementsDocSnapshot, thesisStatementsDocSnapshot.exists else { return }
                let data = thesisStatementsDocSnapshot.data()
                let thesisStatementsName = data["Name"] as? String ?? ""
                let thesisStatementsLink = data["Link"] as? String ?? ""
                print(thesisStatementsName)
                print(thesisStatementsLink)
            }
            
                docRef = Firestore.firestore().document("/Writing/rp4mmxKp5yuutuDm6gKs")
                docRef.getDocument { (OWLPerdueDocSnapshot, error) in
                    guard let OWLPerdueDocSnapshot = OWLPerdueDocSnapshot, OWLPerdueDocSnapshot.exists else { return }
                    let data = OWLPerdueDocSnapshot.data()
                    let OWLPerdueName = data["Name"] as? String ?? ""
                    let OWLPerdueLink = data["Link"] as? String ?? ""
                    print(OWLPerdueName)
                    print(OWLPerdueLink)
            }
            
            docRef = Firestore.firestore().document("/Writing/vGY7I86syK7y4ComXDi0")
            docRef.getDocument { (easyBibDocSnapshot, error) in
                guard let easyBibDocSnapshot = easyBibDocSnapshot, easyBibDocSnapshot.exists else { return }
                let data = easyBibDocSnapshot.data()
                let easyBibName = data["Name"] as? String ?? ""
                let easyBibLink = data["Link"] as? String ?? ""
                print(easyBibName)
                print(easyBibLink)

            
    }
            docRef = Firestore.firestore().document("/Writing/y9adQ5tqJqTWhVch5UGy")
            docRef.getDocument { (MELConWritingDocSnapshot, error) in
                guard let MELConWritingDocSnapshot = MELConWritingDocSnapshot, MELConWritingDocSnapshot.exists else { return }
                let data = MELConWritingDocSnapshot.data()
                let MELConWritingName = data["Name"] as? String ?? ""
                let MELConWritingLink = data["Link"] as? String ?? ""
                print(MELConWritingName)
                print(MELConWritingLink)
            
    


}
    
}
    @IBAction func thesisStatementsPressed(_ sender: Any) {
    }
    
    @IBAction func OWLPerduePressed(_ sender: Any) {
    }
    @IBAction func easyBibPressed(_ sender: Any) {
    }
    @IBAction func MELConWritingPressed(_ sender: Any) {
    }
}
