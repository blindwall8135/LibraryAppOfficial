//
//  autosViewController.swift
//  OfficialLibraryApp
//
//  Created by Izhan Arif on 1/9/18.
//  Copyright © 2018 Karolina Groszewska. All rights reserved.
//

import UIKit
import Firebase
import SafariServices
class autosViewController: UIViewController {
    
    var docRef : DocumentReference!
    var link1 = String()
    @IBOutlet weak var allDataProButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        docRef = Firestore.firestore().document("/All Data Pro/w8Fw5cE6iPUgpDuG8Kcm")
        docRef.getDocument { (allDataProDocSnapshot, error) in
            guard let allDataProDocSnapshot = allDataProDocSnapshot, allDataProDocSnapshot.exists else {
                self.allDataProButton.isEnabled = false
                self.allDataProButton.isHidden = true
                return }
            let data = allDataProDocSnapshot.data()
            let allDataProName = data["Name"] as? String ?? ""
            let allDataProLink = data["Link"] as? String ?? ""
            self.allDataProButton.setTitle(allDataProName, for: .normal)
            self.link1 = allDataProLink

        }
        
    }
    @IBAction func allDataProPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link1)! as URL)
        self.present(svc, animated: true, completion: nil)

    }
    


}
