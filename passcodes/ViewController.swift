//
//  ViewController.swift
//  passcodes
//
//  Created by Brady Tatro on 1/18/20.
//  Copyright © 2020 Brady Tatro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var passwordAttempt: UILabel!
    @IBAction func num1(_ sender: Any) {
        passwordAttempt.text = updatePassword(buttonNum: "1", currentPassword: passwordAttempt.text!)
    }
    @IBAction func num2(_ sender: Any) {
        passwordAttempt.text = updatePassword(buttonNum: "2", currentPassword: passwordAttempt.text!)
    }
    @IBAction func num3(_ sender: Any) {
        passwordAttempt.text = updatePassword(buttonNum: "3", currentPassword: passwordAttempt.text!)
    }
    @IBAction func num4(_ sender: Any) {
        passwordAttempt.text = updatePassword(buttonNum: "4", currentPassword: passwordAttempt.text!)
    }
    @IBAction func num5(_ sender: Any) {
        passwordAttempt.text = updatePassword(buttonNum: "5", currentPassword: passwordAttempt.text!)
    }
    @IBAction func num6(_ sender: Any) {
        passwordAttempt.text = updatePassword(buttonNum: "6", currentPassword: passwordAttempt.text!)
    }
    @IBAction func num7(_ sender: Any) {
        passwordAttempt.text = updatePassword(buttonNum: "7", currentPassword: passwordAttempt.text!)
    }
    @IBAction func num8(_ sender: Any) {
        passwordAttempt.text = updatePassword(buttonNum: "8", currentPassword: passwordAttempt.text!)
    }
    @IBAction func num9(_ sender: Any) {
        passwordAttempt.text = updatePassword(buttonNum: "9", currentPassword: passwordAttempt.text!)
    }
    @IBAction func num0(_ sender: Any) {
        passwordAttempt.text = updatePassword(buttonNum: "0", currentPassword: passwordAttempt.text!)
    }
    
    @IBAction func attemptPassword(_ sender: Any) {
        let unlockPassword = "975321"
        if passwordAttempt.text! == unlockPassword {
            passwordAttempt.text = "Hacked"
        } else {
            passwordAttempt.text = "Failed"
        }
    }
    
    @IBAction func clearPassword(_ sender: Any) {
        passwordAttempt.text = ""
    }
    
    func updatePassword(buttonNum: String, currentPassword: String) -> String {
        var password = currentPassword
        if currentPassword == "Enter Password" || currentPassword == "Failed"{
            password = ""
        };
        let updatedPassword = password + buttonNum
        return updatedPassword
    }
}

