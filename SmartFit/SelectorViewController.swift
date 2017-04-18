//
//  CustomizerViewController.swift
//  SmartFit
//
//  Created by Derrick Wong on 4/17/17.
//  Copyright © 2017 CPF-17. All rights reserved.
//

import UIKit

class SelectorViewController: UIViewController {

    @IBOutlet weak var chestSwitch: UISwitch!
    
    @IBOutlet weak var armsSwitch: UISwitch!
    
    @IBOutlet weak var legsSwitch: UISwitch!
    
    @IBOutlet weak var backSwitch: UISwitch!
    
    @IBOutlet weak var absSwitch: UISwitch!
    
    var settings = Set<String>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onDoneButton(_ sender: UIBarButtonItem) {
        print("HIIII")
        if(chestSwitch.isOn == true){
            settings.insert("chest")
        }
        if(armsSwitch.isOn == true){
            settings.insert("arms")
        }
        if(legsSwitch.isOn == true){
            settings.insert("legs")
        }
        if(backSwitch.isOn == true){
            settings.insert("back")
        }
        if(absSwitch.isOn == true){
            settings.insert("abs")
        }
        
        
        print("\(settings)")
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        if let destinationVC = storyboard.instantiateViewController(withIdentifier: "CustomizerViewController") as? CustomizerViewController {
            destinationVC.settings = self.settings
            self.navigationController?.pushViewController(destinationVC, animated: true)

        }
        
    }
   
   
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
//        let customizerViewController = segue.destination as! CustomizerViewController
        
        //pass the settings to the next view controller
//        if let settings = settings{
//            customizerViewController.settings = settings
//        } else{
//            settings = nil
//            print("settings are nil")
//        }
        
//        customizerViewController.settings = settings
        
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
