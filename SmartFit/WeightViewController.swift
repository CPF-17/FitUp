//
//  WeightViewController.swift
//  SmartFit
//
//  Created by Gerard Recinto on 4/26/17.
//  Copyright © 2017 CPF-17. All rights reserved.
//

import UIKit

class WeightViewController: UIViewController {

  @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
