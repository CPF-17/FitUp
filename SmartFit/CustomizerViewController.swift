//
//  CustomizerViewController.swift
//  SmartFit
//
//  Created by Derrick Wong on 4/17/17.
//  Copyright © 2017 CPF-17. All rights reserved.
//

import UIKit

class CustomizerViewController: UIViewController {
    
    
    @IBOutlet weak var chestSlider: UISlider!
    @IBOutlet weak var armsSlider: UISlider!
    @IBOutlet weak var legsSlider: UISlider!
    @IBOutlet weak var backSlider: UISlider!
    @IBOutlet weak var absSlider: UISlider!
    
    var settings = Set<String>()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("\(settings)")
        
        initializeSlider()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func initializeSlider(){
        if(settings.contains("chest") == false){
            chestSlider.value = 0.0
            chestSlider.isEnabled = false
        }
        
        if(settings.contains("arms") == false){
            armsSlider.value = 0.0
            armsSlider.isEnabled = false
        }
        
        if(settings.contains("legs") == false){
            legsSlider.value = 0.0
            legsSlider.isEnabled = false
        }
        
        if(settings.contains("back") == false){
            backSlider.value = 0.0
            backSlider.isEnabled = false
        }
        
        if(settings.contains("abs") == false){
            backSlider.value = 0.0
            backSlider.isEnabled = false
        }
    }

}
