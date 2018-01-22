//
//  collegeViewController.swift
//  OfficialLibraryApp
//
//  Created by Izhan Arif on 1/9/18.
//  Copyright © 2018 Karolina Groszewska. All rights reserved.
//

import UIKit
import Firebase

class collegeViewController: UIViewController {

    @IBOutlet weak var carrerCruisingButton: UIButton!
    var docRef : DocumentReference!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        docRef = Firestore.firestore().document("/College and Career/Mp4Fw99kBNchbOGKAkmi")
        docRef.getDocument { (CareerCruisingDocSnapshot, error) in
            guard let CareerCruisingDocSnapshot = CareerCruisingDocSnapshot, CareerCruisingDocSnapshot.exists else { return }
            let data = CareerCruisingDocSnapshot.data()
            let CareerCruisingName = data["Name"] as? String ?? ""
            let CareerCruisingLink = data["Link"] as? String ?? ""
            print(CareerCruisingName)
            print(CareerCruisingLink)
        }
        

}
    @IBAction func whenCareerCruisingPressed(_ sender: Any) {
        
    }
}
