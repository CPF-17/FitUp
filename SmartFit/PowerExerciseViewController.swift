//
//  PowerExerciseViewController.swift
//  SmartFit
//
//  Created by Gerard Recinto on 5/17/17.
//  Copyright © 2017 CPF-17. All rights reserved.
//

import UIKit

class PowerExerciseViewController: UIViewController, UITextFieldDelegate {

  @IBOutlet weak var benchTextField: UITextField!
  
  @IBOutlet weak var ohpTextField: UITextField!
  
  @IBOutlet weak var bicepTextField: UITextField!
  
  @IBOutlet weak var abTextField: UITextField!
  @IBOutlet weak var pullupTextField: UITextField!
  
    override func viewDidLoad() {
        super.viewDidLoad()
      benchTextField.delegate = self
    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  @IBAction func onSubmitButton(_ sender: Any) {
    if user.lowerBody{
      performSegue(withIdentifier: "lowerSegue", sender: nil)
    } else {
    performSegue(withIdentifier: "daySegue", sender: nil)
    }
  }

  
  /**
   * Called when 'return' key pressed. return NO to ignore.
   */
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    benchTextField.resignFirstResponder()
    return true
  }
  
  
  /**
   * Called when the user click on the view (outside the UITextField).
   */
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    self.view.endEditing(true)
  }


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      user.benchPress = benchTextField.text!
      user.ohp = ohpTextField.text!
      user.bicepCurl = bicepTextField.text!
      user.abMachine = abTextField.text!
      user.pullUps = pullupTextField.text!
      
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
  

}
