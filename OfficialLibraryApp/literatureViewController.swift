//
//  literatureViewController.swift
//  OfficialLibraryApp
//
//  Created by Izhan Arif on 1/9/18.
//  Copyright © 2018 Karolina Groszewska. All rights reserved.
//

import UIKit
import Firebase

class literatureViewController: UIViewController {

    var docRef : DocumentReference!
    @IBOutlet weak var LitfinderButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        docRef = Firestore.firestore().document("/Literature/Gb64WyC52iEPS9YQLocY")
        docRef.getDocument { (LitfinderDocSnapshot, error) in
            guard let LitfinderDocSnapshot = LitfinderDocSnapshot, LitfinderDocSnapshot.exists else { return }
            let data = LitfinderDocSnapshot.data()
            let LitfinderName = data["Name"] as? String ?? ""
            let LitfinderLink = data["Link"] as? String ?? ""
            print(LitfinderName)
            print(LitfinderLink)
            
            
            
        }

}
    @IBAction func LitfinderPressed(_ sender: Any) {
    }
}
