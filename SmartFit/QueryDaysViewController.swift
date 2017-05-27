//
//  QueryDaysViewController.swift
//  SmartFit
//
//  Created by Gerard Recinto on 5/14/17.
//  Copyright © 2017 CPF-17. All rights reserved.
//

import UIKit

class QueryDaysViewController: UIViewController {
  
    @IBOutlet weak var myTextField: UITextField!
  
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        submitButton.layer.cornerRadius = 5
        
        myTextField.becomeFirstResponder()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  @IBAction func onSubmitButton(_ sender: Any) {
    if myTextField.hasText {
    //performSegue(withIdentifier: "querySegue", sender: nil)
        let storyBoard : UIStoryboard = UIStoryboard(name: "Logged", bundle:nil)
        
        let secondViewController = storyBoard.instantiateViewController(withIdentifier: "HomeView") as! PowerMonViewController
        self.navigationController?.pushViewController(secondViewController, animated: true)
        
        let defaults = UserDefaults.standard
        defaults.set(true, forKey: "HasUser")
        
        
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
