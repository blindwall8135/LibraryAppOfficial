//
//  literatureViewController.swift
//  OfficialLibraryApp
//
//  Created by Izhan Arif on 1/9/18.
//  Copyright © 2018 Karolina Groszewska. All rights reserved.
//

import UIKit
import Firebase
import SafariServices
class literatureViewController: UIViewController {

    var link1 =  String()
    var docRef : DocumentReference!
    @IBOutlet weak var LitfinderButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        docRef = Firestore.firestore().document("/Literature/Gb64WyC52iEPS9YQLocY")
        docRef.getDocument { (LitfinderDocSnapshot, error) in
            guard let LitfinderDocSnapshot = LitfinderDocSnapshot, LitfinderDocSnapshot.exists else {
                self.LitfinderButton.isEnabled = false
                self.LitfinderButton.isHidden = true
                return }
            let data = LitfinderDocSnapshot.data()
            let LitfinderName = data["Name"] as? String ?? ""
            let LitfinderLink = data["Link"] as? String ?? ""
            self.LitfinderButton.setTitle(LitfinderName, for: .normal)
            self.link1 = LitfinderLink
        }

}
    @IBAction func LitfinderPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link1)! as URL)
        self.present(svc, animated: true, completion: nil)

    }
}
