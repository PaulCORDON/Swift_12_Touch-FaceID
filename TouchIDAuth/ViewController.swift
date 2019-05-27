//
//  ViewController.swift
//  TouchIDAuth
//
//  Created by MAC-DIN-002 on 22/05/2019.
//  Copyright © 2019 MAC-DIN-002. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let authContext = LAContext()
        var error : NSError?
        if authContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error){
            authContext.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "To check if it's really you") { (success, error) in
                if success {
                    self.resultLabel.text = "Result : Verified"
                }else{
                    self.resultLabel.text = "Result : Not Verified"
                }
            }
        }
    }


}

