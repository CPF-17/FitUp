//
//  RoutineUpperViewController.swift
//  SmartFit
//
//  Created by Gerard Recinto on 5/10/17.
//  Copyright © 2017 CPF-17. All rights reserved.
//

import UIKit

class RoutineUpperViewController: UIViewController {
  
  @IBOutlet weak var abWeightLabel: UILabel!
  @IBOutlet weak var bicepWeightLabel: UILabel!
  @IBOutlet weak var ohpWeightLabel: UILabel!
  @IBOutlet weak var rowWeightLabel: UILabel!
  @IBOutlet weak var benchWeightLabel: UILabel!
  var benchWeight: String = ""
  var rowWeight: String = ""
  var ohpWeight: String = ""
  var bicepWeight: String = ""
  var abWeight: String = ""
  
    override func viewDidLoad() {
        super.viewDidLoad()
      abWeightLabel.text = abWeight
      bicepWeightLabel.text = bicepWeight
      ohpWeightLabel.text = ohpWeight
      rowWeightLabel.text = rowWeight
      benchWeightLabel.text = benchWeight
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

}
