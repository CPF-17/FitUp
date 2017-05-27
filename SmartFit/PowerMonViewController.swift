//
//  PowerMonViewController.swift
//  SmartFit
//
//  Created by Gerard Recinto on 5/17/17.
//  Copyright © 2017 CPF-17. All rights reserved.
//

import UIKit

class PowerMonViewController: UIViewController {

  @IBOutlet weak var abLabel: UILabel!
  @IBOutlet weak var lowBarLabel: UILabel!
  @IBOutlet weak var benchLabel: UILabel!
  
  @IBOutlet weak var ohpLabel: UILabel!
  
  @IBOutlet weak var bicepLabel: UILabel!
  
  @IBOutlet weak var pullupLabel: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//      lowBarLabel.text = user.lowBar
//      benchLabel.text = user.benchPress
//      ohpLabel.text = user.ohp
//      bicepLabel.text = user.bicepCurl
//      abLabel.text = user.abMachine
//      pullupLabel.text = user.pullUps
      
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
