//
//  ViewController.swift
//  KotlinIOS
//
//  Created by Jeet Mishra on 9/26/2019.
//  Copyright © 2019 hallmark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var emailHelpButton: UIButton!
    @IBOutlet weak var passwordHelpButton: UIButton!

    var alert = UIAlertController()

    override func viewDidLoad() {
        super.viewDidLoad()

        let recognizer = UITapGestureRecognizer(target: self, action: #selector(tapRecognized(sender:)))
        recognizer.cancelsTouchesInView = false
        self.view.addGestureRecognizer(recognizer)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // TODO: Add screen transition logic here
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let purple = UIColor(red: 0.334, green: 0.205, blue: 0.506, alpha: 1.0)
        loginButton.backgroundColor = purple
        emailHelpButton.layer.borderColor = purple.cgColor
        passwordHelpButton.layer.borderColor = purple.cgColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @objc func tapRecognized(sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }

    @IBAction func loginButtonPressed(sender: UIButton) {
        // TODO: Add functionality here...

        // TODO: Remove comment If you want to move from this screen to the next
        //performSegue(withIdentifier: "SegueIdentifier1", sender: self)
    }

    @IBAction func emailHelpPressed(sender: UIButton) {
        alert = UIAlertController(title: nil, message: "Please specify a vaild email address", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

    @IBAction func passwordHelpPressed(sender: UIButton) {
        alert = UIAlertController(title: nil, message:
"""
Password Validation Hint:
Password should be minimum of
8 characters long. It should
contain at least one capital
letter, one small letter, one
number and one special character:
~!@#$%^&*()-_=+|[]{};:’\\“,<.>/?
""", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

