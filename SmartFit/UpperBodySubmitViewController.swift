//
//  UpperBodySubmitViewController.swift
//  SmartFit
//
//  Created by Gerard Recinto on 4/26/17.
//  Copyright © 2017 CPF-17. All rights reserved.
//

import UIKit

class UpperBodySubmitViewController: UIViewController {
  @IBOutlet weak var ohpLabel: UILabel!

  @IBOutlet weak var abTextField: UITextField!
  @IBOutlet weak var bicepTextField: UITextField!
  @IBOutlet weak var ohpTextField: UITextField!
  @IBOutlet weak var rowTextField: UITextField!
  @IBOutlet weak var benchTextField: UITextField!
  @IBOutlet weak var abLabel: UILabel!
  @IBOutlet weak var bicepLabel: UILabel!
  @IBOutlet var rowLabel: UILabel!
  @IBOutlet weak var benchLabel: UILabel!
  
  var absSwitchisOn: Bool = true
  var armsSwitchisOn: Bool = true
  var backSwitchisOn: Bool = true
  var shoulderSwitchisOn: Bool = true
  
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      if (absSwitchisOn == false){
        abLabel.isHidden = true;
        abTextField.isHidden = true;
      }
      if (armsSwitchisOn == false){
        bicepLabel.isHidden = true;
        bicepTextField.isHidden = true;
      }
      if (backSwitchisOn == false){
        rowLabel.isHidden = true;
        rowTextField.isHidden = true;
      }
      if (shoulderSwitchisOn == false){
        ohpLabel.isHidden = true;
        ohpTextField.isHidden = true;
      }
  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  @IBAction func onSubmitButton(_ sender: Any) {
    if user.lowerBody {
      performSegue(withIdentifier: "lowerSegue", sender: nil)
    }
    else {
      performSegue(withIdentifier: "upperWorkoutSegue", sender: nil)
    }
  }
  

  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
      if segue.identifier == "upperWorkoutSegue" {
        if let myVC = segue.destination as? RoutineUpperViewController {
          myVC.abWeight = abTextField.text!
          myVC.benchWeight = benchTextField.text!
          myVC.bicepWeight = bicepTextField.text!
          myVC.rowWeight = rowTextField.text!
          myVC.ohpWeight = ohpTextField.text!
          
        }

      
    }
  

}
}

