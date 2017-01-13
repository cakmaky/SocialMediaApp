//
// SignInVC.swift
//  SocialMediaApp
//
//  Created by YC on 1/10/17.
//  Copyright © 2017 Cakmak LLC. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import Firebase


class SignInVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func facebookBtnTapped(_ sender: Any) {
        
        let facebookLogin = FBSDKLoginManager()
        facebookLogin.logIn(withReadPermissions: ["email"], from: self) { (result, error) in
            if error != nil {
                print("ALERT:Unable to authanticate with Facebook! - \(error)")
            } else if result?.isCancelled == true {
                
                print("ALERT:User cancelled facebook authantication!")
            } else {
                print("ALERT:Successfully authenticated with Facebook!")
                let credential = FIRFacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
                self.firebaseAuth(credential)
            }
            
        }
    }
    
    func firebaseAuth(_ credential: FIRAuthCredential){
        
        FIRAuth.auth()?.signIn(with: credential, completion: { (user, error) in
            if error != nil {
                print("ALERT:Unable to authenticate with Firebase - \(error)")
            } else {
                print("ALERT:Successfully authenticate with Firebase")
            }
            
        })
        
        
    }
    

}
















