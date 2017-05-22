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
    override func viewDidLoad() {
        super.viewDidLoad()
     /* if let navigationBar = navigationController?.navigationBar {
        //  navigationBar.setBackgroundImage(UIImage(named: "star"), for: .default)
        let shadow = NSShadow()
        shadow.shadowColor = UIColor.gray.withAlphaComponent(0.5)
        shadow.shadowOffset = CGSize(width: 2, height: 2)
        // shadow.shadowOffset = CGSizeMake(2, 2);
        shadow.shadowBlurRadius = 4;
        navigationBar.backgroundColor = UIColor.cyan
        let logo = UIImage(named: "Icon-Small-40")
        let imageView = UIImageView(image: logo)
        self.navigationItem.titleView = imageView
        navigationBar.titleTextAttributes = [
          NSFontAttributeName : UIFont.boldSystemFont(ofSize: 22),
          NSForegroundColorAttributeName : UIColor(red: 0.0, green: 0.25, blue: 0.35, alpha: 0.8),
          NSShadowAttributeName : shadow
        ]
      }*/
      

        // Do any additional setup after loading the view.
    }
  
  override func viewWillAppear(_ animated: Bool) {
    self.navigationItem.title = "SmartFit"
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
  


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
