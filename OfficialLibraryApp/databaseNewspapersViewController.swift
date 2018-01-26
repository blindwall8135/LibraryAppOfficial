//
//  databaseNewspapersViewController.swift
//  OfficialLibraryApp
//
//  Created by Izhan Arif on 1/9/18.
//  Copyright © 2018 Karolina Groszewska. All rights reserved.
//

import UIKit
import Firebase
import SafariServices


class databaseNewspapersViewController: UIViewController {
    var link1 =  String()
    var link2 =  String()
    var link3 =  String()
    var link4 =  String()
    @IBOutlet weak var newspaperSourcePlus: UIButton!
    @IBOutlet weak var newspaperSource: UIButton!
    @IBOutlet weak var aPNews: UIButton!
    @IBOutlet weak var webNews: UIButton!
    
    var docRef : DocumentReference!
    override func viewDidLoad() {
        super.viewDidLoad()
        docRef = Firestore.firestore().document("/Database Newspapers/98Aie9050IZFwkQ4XhnQ")
        docRef.getDocument { (newspaperSourcePlusDocSnapshot, error) in
            guard let newspaperSourcePlusDocSnapshot = newspaperSourcePlusDocSnapshot, newspaperSourcePlusDocSnapshot.exists else { return }
            let data = newspaperSourcePlusDocSnapshot.data()
            let newspaperSourcePlusName = data["Name"] as? String ?? ""
            let newspaperSourcePlusLink = data["Link"] as? String ?? ""
            self.newspaperSourcePlus.setTitle(newspaperSourcePlusName, for: .normal)
            self.link1 = newspaperSourcePlusLink
        }
        docRef = Firestore.firestore().document("/Database Newspapers/Dyfmrqa27CSYBTbgntge")
        docRef.getDocument { (aPNewsDocSnapshot, error) in
            guard let aPNewsDocSnapshot = aPNewsDocSnapshot, aPNewsDocSnapshot.exists else { return }
            let data = aPNewsDocSnapshot.data()
            let aPNewsName = data["Name"] as? String ?? ""
            let aPNewsLink = data["Link"] as? String ?? ""
            self.aPNews.setTitle(aPNewsName, for: .normal)
            self.link2 = aPNewsLink
        }
        docRef = Firestore.firestore().document("/Database Newspapers/DzdwJG5SaKHKaOjtORfm")
        docRef.getDocument { (newspaperSourceDocSnapshot, error) in
            guard let newspaperSourceDocSnapshot = newspaperSourceDocSnapshot, newspaperSourceDocSnapshot.exists else { return }
            let data = newspaperSourceDocSnapshot.data()
            let newspaperSourceName = data["Name"] as? String ?? ""
            let newspaperSourceLink = data["Link"] as? String ?? ""
            self.newspaperSource.setTitle(newspaperSourceName, for: .normal)
            self.link3 = newspaperSourceLink
        }
        docRef = Firestore.firestore().document("/Database Newspapers/ob6HlcVj5QUhcghwoCq8")
        docRef.getDocument { (webNewsDocSnapshot, error) in
            guard let webNewsDocSnapshot = webNewsDocSnapshot, webNewsDocSnapshot.exists else { return }
            let data = webNewsDocSnapshot.data()
            let webNewsName = data["Name"] as? String ?? ""
            let webNewsLink = data["Link"] as? String ?? ""
            self.webNews.setTitle(webNewsName, for: .normal)
            self.link4 = webNewsLink
        }
    }
    @IBAction func newspaperSourcePlus(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link1)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    
    @IBAction func aPNews(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link2)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    @IBAction func newspaperSource(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link3)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
    @IBAction func webNews(_ sender: Any) {
        let svc = SFSafariViewController(url: NSURL(string: link4)! as URL)
        self.present(svc, animated: true, completion: nil)
    }
}
