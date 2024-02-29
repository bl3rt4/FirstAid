//
//  MainViewController.swift
//  FirstAid
//
//  Created by Macbook Air on 2/28/24.
//  Copyright © 2024 MacBook Air. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var kitClicked: UIImageView!
    
    @IBOutlet weak var kitButtonClicked: UIButton!
    
    
    @IBOutlet weak var lendimetButtonClicked: UIButton!
    
    
    @IBOutlet weak var insnButtonClicked: UIButton!
    
    @IBOutlet weak var kontaktetBtnClicked: UIButton!
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        kitButtonClicked.layer.cornerRadius = 10
        kitButtonClicked.layer.shadowColor = UIColor.black.cgColor
        kitButtonClicked.layer.shadowOpacity = 0.5
        kitButtonClicked.layer.shadowOffset = CGSize(width: 4, height: 4)
        kitButtonClicked.layer.shadowRadius = 5.0
        kitButtonClicked.layer.masksToBounds = false
        
        // Do any additional setup after loading the view.
        
        lendimetButtonClicked.layer.cornerRadius = 10
            lendimetButtonClicked.layer.shadowColor = UIColor.black.cgColor
            lendimetButtonClicked.layer.shadowOpacity = 0.5
            lendimetButtonClicked.layer.shadowOffset = CGSize(width: 4, height: 4)
            lendimetButtonClicked.layer.shadowRadius = 5.0
        
        insnButtonClicked.layer.cornerRadius = 10
        insnButtonClicked.layer.shadowColor = UIColor.black.cgColor
        insnButtonClicked.layer.shadowOpacity = 0.5
        insnButtonClicked.layer.shadowOffset = CGSize(width: 4, height: 4)
        insnButtonClicked.layer.shadowRadius = 5.0
        
        kontaktetBtnClicked.layer.cornerRadius = 10
        kontaktetBtnClicked.layer.shadowColor = UIColor.black.cgColor
        kontaktetBtnClicked.layer.shadowOpacity = 0.5
        kontaktetBtnClicked.layer.shadowOffset = CGSize(width: 4, height: 4)
        kontaktetBtnClicked.layer.shadowRadius = 5.0
        
        
        
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
