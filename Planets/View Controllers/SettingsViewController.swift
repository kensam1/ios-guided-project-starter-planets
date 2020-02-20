//
//  SettingsViewController.swift
//  Planets
//
//  Created by Lambda_School_Loaner_241 on 2/19/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var plutoToggle: UISwitch!
  
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateViews()
    }
    
    @IBAction func didTogglePluto(_ sender: UISwitch) {
        UserDefaults.standard.set(sender.isOn, forKey: .shouldShowPlutoKey)  // shared default standards for each time u use the app
        
    
    }
    
    private func updateViews(){
        plutoToggle.isOn = UserDefaults.standard.bool(forKey: .shouldShowPlutoKey)
    }
    
    
    
   

}
