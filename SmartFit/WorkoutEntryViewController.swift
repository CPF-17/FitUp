//
//  WorkoutEntryViewController.swift
//  SmartFit
//
//  Created by Derrick Wong on 5/26/17.
//  Copyright © 2017 CPF-17. All rights reserved.
//

import UIKit

class WorkoutEntryViewController: UIViewController {
    
    @IBOutlet weak var featureScrollView: UIScrollView!
    
    //for powerlifting
    let entry1 = ["name": "Bench Press","units": "lbs"]
    let entry2 = ["name": "Overhead Press", "units": "lbs"]
    let entry3 = ["name": "Bicep Curls", "units": "lbs"]
    let entry4 = ["name": "Ab machine", "units": "reps"]
    let entry5 = ["name": "Pull-ups", "units": "reps"]
    
    var featureArray = [Dictionary<String,String>]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        featureArray = [entry1, entry2, entry3, entry4, entry5]
        
        
        featureScrollView.isPagingEnabled = true
        
        featureScrollView.contentSize = CGSize(width: self.view.bounds.width * CGFloat(featureArray.count), height: 750)
        featureScrollView.showsHorizontalScrollIndicator = false
        featureScrollView.showsVerticalScrollIndicator = false
        
        loadFeatures()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadFeatures() {
        
        for (index, feature) in featureArray.enumerated() {
            if let featureView = Bundle.main.loadNibNamed("Entry", owner: self, options: nil)?.first as? WorkoutEntry {
                
                
                featureView.name.text = feature["name"]
                featureView.units.text = feature["units"]
                
                featureScrollView.addSubview(featureView)
                featureView.frame.size.width = self.view.bounds.size.width
                featureView.frame.origin.x = CGFloat(index) * self.view.bounds.size.width
                
            }
            
        }
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
