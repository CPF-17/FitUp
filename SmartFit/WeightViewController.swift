//
//  WeightViewController.swift
//  SmartFit
//
//  Created by Gerard Recinto on 4/26/17.
//  Copyright © 2017 CPF-17. All rights reserved.
//

import UIKit

class WeightViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var submitButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        submitButton.layer.cornerRadius = 5
        
        textField.becomeFirstResponder()
    }

  
  override func viewWillAppear(_ animated: Bool) {
    self.navigationItem.title = "SmartFit"
    
  }

    override func viewDidAppear(_ animated: Bool) {

            if(textField.text?.characters.count == 3){
                view.endEditing(true)
            }

    }
    

    @IBAction func onWeightLabelTapped(_ sender: Any) {
        self.weightLabel.layer.removeAllAnimations()
        self.weightLabel.alpha = 0.0
        print("registered")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  @IBAction func onSubmitButton(_ sender: Any) {
    if textField.hasText {
      performSegue(withIdentifier: "prefSegue", sender: nil)
    }
  }
    
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
  textField.resignFirstResponder()
    return true
  }
  
  
  /**
   * Called when the user click on the view (outside the UITextField).
   */
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    self.view.endEditing(true)
  }
  

    @IBAction func onScreenTapped(_ sender: Any) {
        view.endEditing(true)
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
