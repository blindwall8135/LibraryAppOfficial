//
//  mathViewController.swift
//  OfficialLibraryApp
//
//  Created by Izhan Arif on 1/9/18.
//  Copyright © 2018 Karolina Groszewska. All rights reserved.
//

import UIKit
import Firebase
import SafariServices
class mathViewController: UIViewController {
    var docRef : DocumentReference!
    var link1 = String()
    @IBOutlet weak var WolframAlpha: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        docRef = Firestore.firestore().document("/Math Resources/rnAnHt1DcxcTxxVTzA66")
        docRef.getDocument { (WolframAlphaDocSnapshot, error) in
            guard let WolframAlphaDocSnapshot = WolframAlphaDocSnapshot, WolframAlphaDocSnapshot.exists else { return }
            let data = WolframAlphaDocSnapshot.data()
            let WolframAlphaName = data["Name"] as? String ?? ""
            let WolframAlphaLink = data["Link"] as? String ?? ""
            self.WolframAlpha.setTitle(WolframAlphaName, for: .normal)
            self.link1 = WolframAlphaLink


        
    }


}
    @IBAction func WolframAlphaPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link1)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
}
