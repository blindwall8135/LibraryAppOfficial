//
//  collegeViewController.swift
//  OfficialLibraryApp
//
//  Created by Izhan Arif on 1/9/18.
//  Copyright © 2018 Karolina Groszewska. All rights reserved.
//

import UIKit
import Firebase
import SafariServices
class collegeViewController: UIViewController {

    @IBOutlet weak var careerCruisingButton: UIButton!
    var link1 = String()
    var docRef : DocumentReference!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        docRef = Firestore.firestore().document("/College and Career/Mp4Fw99kBNchbOGKAkmi")
        docRef.getDocument { (CareerCruisingDocSnapshot, error) in
            guard let CareerCruisingDocSnapshot = CareerCruisingDocSnapshot, CareerCruisingDocSnapshot.exists else {
                self.careerCruisingButton.isEnabled = false
                self.careerCruisingButton.isHidden = true
                return }
            let data = CareerCruisingDocSnapshot.data()
            let CareerCruisingName = data["Name"] as? String ?? ""
            let CareerCruisingLink = data["Link"] as? String ?? ""
            self.careerCruisingButton.setTitle(CareerCruisingName, for: .normal)
            self.link1 = CareerCruisingLink

        }
        

}
    @IBAction func whenCareerCruisingPressed(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link1)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
}
