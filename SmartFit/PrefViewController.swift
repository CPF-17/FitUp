//
//  PrefViewController.swift
//  SmartFit
//
//  Created by Gerard Recinto on 4/23/17.
//  Copyright © 2017 CPF-17. All rights reserved.
//

import UIKit

class PrefViewController: UIViewController {

  @IBOutlet weak var upperSwitch: UISwitch!
  @IBOutlet weak var lowerSwitch: UISwitch!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        upperSwitch.isOn = false
        lowerSwitch.isOn = false
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  @IBAction func onSubmitButton(_ sender: UIButton) {
    if upperSwitch.isOn {
    self.performSegue(withIdentifier: "upperSegue", sender: nil)
    } else if lowerSwitch.isOn {
      self.performSegue(withIdentifier: "lowerSegue", sender: nil)
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
