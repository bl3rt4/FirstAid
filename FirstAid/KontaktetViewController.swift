//
//  KontaktetViewController.swift
//  FirstAid
//
//  Created by Macbook Air on 2/29/24.
//  Copyright © 2024 MacBook Air. All rights reserved.
//

import UIKit

class KontaktetViewController: UIViewController {
    
    
    
    @IBOutlet weak var policia: UIButton!
    
    
    @IBOutlet weak var ambulanca: UIButton!
    


    @IBOutlet weak var zjarrfiksat: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        
        policia.layer.cornerRadius = 10
              policia.layer.shadowColor = UIColor.black.cgColor
              policia.layer.shadowOpacity = 0.5
              policia.layer.shadowOffset = CGSize(width: 4, height: 4)
              policia.layer.shadowRadius = 5.0
              policia.layer.masksToBounds = false

        ambulanca.layer.cornerRadius = 10
              ambulanca.layer.shadowColor = UIColor.black.cgColor
              ambulanca.layer.shadowOpacity = 0.5
              ambulanca.layer.shadowOffset = CGSize(width: 4, height: 4)
              ambulanca.layer.shadowRadius = 5.0
              ambulanca.layer.masksToBounds = false

        zjarrfiksat.layer.cornerRadius = 10
              zjarrfiksat.layer.shadowColor = UIColor.black.cgColor
              zjarrfiksat.layer.shadowOpacity = 0.5
              zjarrfiksat.layer.shadowOffset = CGSize(width: 4, height: 4)
              zjarrfiksat.layer.shadowRadius = 5.0
              zjarrfiksat.layer.masksToBounds = false
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
