//
//  mathViewController.swift
//  OfficialLibraryApp
//
//  Created by Izhan Arif on 1/9/18.
//  Copyright © 2018 Karolina Groszewska. All rights reserved.
//

import UIKit
import Firebase

class mathViewController: UIViewController {
    var docRef : DocumentReference!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        docRef = Firestore.firestore().document("/MathResources/rnAnHt1DcxcTxxVTzA66")
        docRef.getDocument { (WolframAlphaDocSnapshot, error) in
            guard let WolframAlphaDocSnapshot = WolframAlphaDocSnapshot, WolframAlphaDocSnapshot.exists else { return }
            let data = WolframAlphaDocSnapshot.data()
            let WolframAlphaName = data["Name"] as? String ?? ""
            let WolframAlphaLink = data["Link"] as? String ?? ""
            print(WolframAlphaName)
            print(WolframAlphaLink)


        
    }


}
}
