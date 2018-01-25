//
//  juniorResourcesViewController.swift
//  OfficialLibraryApp
//
//  Created by Izhan Arif on 1/9/18.
//  Copyright © 2018 Karolina Groszewska. All rights reserved.
//

import UIKit
import Firebase
import SafariServices

class juniorResourcesViewController: UIViewController {

    @IBOutlet weak var TheGreatGatsbyButton: UIButton!
    @IBOutlet weak var theAdventuresofHuckleberryFinnButton: UIButton!
    @IBOutlet weak var TheScarletLetterButton: UIButton!
    var link1 = String()
    var link2 = String()
    var link3 = String()

    var docRef : DocumentReference!
        override func viewDidLoad() {
            super.viewDidLoad()
            docRef = Firestore.firestore().document("/Junior Resources/5R7DOG1EIIg5xMfWQI7F")
            docRef.getDocument { (TheGreatGatsbyDocSnapshot, error) in
                guard let TheGreatGatsbyDocSnapshot = TheGreatGatsbyDocSnapshot, TheGreatGatsbyDocSnapshot.exists else { return }
                let data = TheGreatGatsbyDocSnapshot.data()
                let TheGreatGatsbyName = data["Name"] as? String ?? ""
                let TheGreatGatsbyLink = data["Link"] as? String ?? ""
                self.TheGreatGatsbyButton.setTitle(TheGreatGatsbyName, for: .normal)
                self.link1 = TheGreatGatsbyLink

            }
            docRef = Firestore.firestore().document("/Junior Resources/L36QfbVpStsPdVW6HBv8")
            docRef.getDocument { (theAdventuresofHuckleberryFinnDocSnapshot, error) in
                guard let theAdventuresofHuckleberryFinnDocSnapshot = theAdventuresofHuckleberryFinnDocSnapshot, theAdventuresofHuckleberryFinnDocSnapshot.exists else { return }
                let data = theAdventuresofHuckleberryFinnDocSnapshot.data()
                let theAdventuresofHuckleberryFinnName = data["Name"] as? String ?? ""
                let theAdventuresofHuckleberryFinnLink = data["Link"] as? String ?? ""
                self.theAdventuresofHuckleberryFinnButton.setTitle(theAdventuresofHuckleberryFinnName, for: .normal)
                self.link2 = theAdventuresofHuckleberryFinnLink
    }
            docRef = Firestore.firestore().document("/Junior Resources/RopSqMjz26qgNQlSWl6B")
            docRef.getDocument { (TheScarletLetterDocSnapshot, error) in
                guard let TheScarletLetterDocSnapshot = TheScarletLetterDocSnapshot, TheScarletLetterDocSnapshot.exists else { return }
                let data = TheScarletLetterDocSnapshot.data()
                let TheScarletLetterName = data["Name"] as? String ?? ""
                let TheScarletLetterLink = data["Link"] as? String ?? ""
                self.TheScarletLetterButton.setTitle(TheScarletLetterName, for: .normal)
                self.link3 = TheScarletLetterLink

}
    
}
    @IBAction func TheGreatGatsbyPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link1)! as URL)
        self.present(svc, animated: true, completion: nil)

    }
    @IBAction func theAdventuresofHuckleberryFinnPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link2)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    @IBAction func TheScarletLetterPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link3)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
}

