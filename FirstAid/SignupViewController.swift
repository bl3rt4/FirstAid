//
//  SignupViewController.swift
//  FirstAid
//
//  Created by Macbook Air on 2/27/24.
//  Copyright © 2024 MacBook Air. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func openAlert(message: String) {
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func signupClicked(_ sender: UIButton) {
        guard let firstName = firstNameTextField.text, !firstName.isEmpty else{
                   openAlert(message: "Please enter a Name")
                   return
               }

        guard let lastName = lastNameTextField.text, !lastName.isEmpty else{
                   openAlert(message: "Please enter a Last Name")
                   return
               }
        guard let email = emailTextField.text, !email.isEmpty else{
                   openAlert(message: "Please enter an email")
                   return
               }
        guard let password = passwordTextField.text, !password.isEmpty else{
                   openAlert(message: "Please enter a password")
                   return
               }
        
        //DB
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let userEntity = UserEntity(context: context)
        userEntity.firstName = firstName
        userEntity.lastName = lastName
        userEntity.email = email
        userEntity.password = password

        do {
            try context.save()
            // Create an alert to inform the user
            openAlert(message: "You are now registered")

            //self.present(alert, animated: true, completion: nil)
        }
        catch{
            print("User saving error: ", error)
        }

        
    }

    
    @IBAction func loginClicked(_ sender: UIButton) {
    }
    @IBAction func backClicked(_ sender: UIButton) {
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
