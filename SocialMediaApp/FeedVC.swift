//
//  FeedVC.swift
//  SocialMediaApp
//
//  Created by YC on 1/12/17.
//  Copyright © 2017 Cakmak LLC. All rights reserved.
//

import UIKit
import Firebase
import SwiftKeychainWrapper

class FeedVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func signOutBtnPressed(_ sender: Any) {
       let keychainResult =  KeychainWrapper.standard.removeObject(forKey: KEY_UID)
       print("ALERT: ID removed from keychain \(keychainResult) ")
        
        try! FIRAuth.auth()?.signOut()
        performSegue(withIdentifier: "goToSignIn", sender: nil)
    }

}
