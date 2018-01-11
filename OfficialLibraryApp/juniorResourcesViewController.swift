//
//  juniorResourcesViewController.swift
//  OfficialLibraryApp
//
//  Created by Izhan Arif on 1/9/18.
//  Copyright © 2018 Karolina Groszewska. All rights reserved.
//

import UIKit
import Firebase

class juniorResourcesViewController: UIViewController {

        var docRef : DocumentReference!
        override func viewDidLoad() {
            super.viewDidLoad()
            docRef = Firestore.firestore().document("/Junior Resources/5R7DOG1EIIg5xMfWQI7F")
            docRef.getDocument { (TheGreatGatsbyDocSnapshot, error) in
                guard let TheGreatGatsbyDocSnapshot = TheGreatGatsbyDocSnapshot, TheGreatGatsbyDocSnapshot.exists else { return }
                let data = TheGreatGatsbyDocSnapshot.data()
                let TheGreatGatsbyName = data["Name"] as? String ?? ""
                let TheGreatGatsbyLink = data["Link"] as? String ?? ""
                print(TheGreatGatsbyName)
                print(TheGreatGatsbyLink)
            }
            docRef = Firestore.firestore().document("/Junior Resources/L36QfbVpStsPdVW6HBv8")
            docRef.getDocument { (theAdventuresofHuckleberryFinnDocSnapshot, error) in
                guard let theAdventuresofHuckleberryFinnDocSnapshot = theAdventuresofHuckleberryFinnDocSnapshot, theAdventuresofHuckleberryFinnDocSnapshot.exists else { return }
                let data = theAdventuresofHuckleberryFinnDocSnapshot.data()
                let theAdventuresofHuckleberryFinnName = data["Name"] as? String ?? ""
                let theAdventuresofHuckleberryFinnLink = data["Link"] as? String ?? ""
                print(theAdventuresofHuckleberryFinnName)
                print(theAdventuresofHuckleberryFinnLink)
    }
            docRef = Firestore.firestore().document("/Junior Resources/RopSqMjz26qgNQlSWl6B")
            docRef.getDocument { (TheScarletLetterDocSnapshot, error) in
                guard let TheScarletLetterDocSnapshot = TheScarletLetterDocSnapshot, TheScarletLetterDocSnapshot.exists else { return }
                let data = TheScarletLetterDocSnapshot.data()
                let TheScarletLetterName = data["Name"] as? String ?? ""
                let TheScarletLetterLink = data["Link"] as? String ?? ""
                print(TheScarletLetterName)
                print(TheScarletLetterLink)

}
    
}
}

