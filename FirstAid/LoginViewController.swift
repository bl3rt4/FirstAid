//
//  LoginViewController.swift
//  FirstAid
//
//  Created by Macbook Air on 2/27/24.
//  Copyright © 2024 MacBook Air. All rights reserved.
//

import UIKit
import CoreData

class LoginViewController: UIViewController {

    
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
    
    @IBAction func loginClicked(_ sender: UIButton) {
        guard let email = emailTextField.text, !email.isEmpty else{
            openAlert(message: "Please enter an email")
            return
        }
        
        guard let password = passwordTextField.text, !password.isEmpty else{
            openAlert(message: "Please enter a password")
            return
        }
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext // Access context from app delegate

        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "UserEntity") // Replace with entity name
        fetchRequest.predicate = NSPredicate(format: "email = %@ AND password = %@", email, password)

        do {
            let results = try context.fetch(fetchRequest)
            
            if let user = results.first as? NSManagedObject {
                // User found! Redirect to list view

                //let listViewController = ListViewController()
                //self.navigationController?.pushViewController(listViewController, animated: false)
            } else {
                // User not found
                openAlert(message: "Invalid email or password")
            }
            
        } catch {
            // Handle any errors during fetch operation
            print("Error fetching user: \(error)")
            openAlert(message: "An error occurred. Please try again.")
        }
    }
   

        

    
    @IBAction func signupClicked(_ sender: UIButton) {
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
