//
//  PowerLowerViewController.swift
//  SmartFit
//
//  Created by Gerard Recinto on 5/17/17.
//  Copyright © 2017 CPF-17. All rights reserved.
//

import UIKit

class PowerLowerViewController: UIViewController {

    @IBOutlet weak var legSwitch: UISwitch!
    @IBOutlet weak var hamstringSwitch: UISwitch!
    @IBOutlet weak var gluteusMaximusSwitch: UISwitch!
    @IBOutlet weak var calveSwitch: UISwitch!
    @IBOutlet weak var hipSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onLegButton(_ sender: UIButton) {
        sender.alpha = legSwitch.isOn ? 0.5: 1
        legSwitch.setOn(!legSwitch.isOn, animated: false)
    }

    @IBAction func onHamstringButton(_ sender: UIButton) {
        sender.alpha = hamstringSwitch.isOn ? 0.5: 1
        hamstringSwitch.setOn(!hamstringSwitch.isOn, animated: false)
    }

    @IBAction func onGluteusButton(_ sender: UIButton) {
        sender.alpha = gluteusMaximusSwitch.isOn ? 0.5: 1
        gluteusMaximusSwitch.setOn(!gluteusMaximusSwitch.isOn, animated: false)
    }

    @IBAction func onCalveButton(_ sender: UIButton) {
        sender.alpha = calveSwitch.isOn ? 0.5: 1
        calveSwitch.setOn(!calveSwitch.isOn, animated: false)
    }

    @IBAction func onHipButton(_ sender: UIButton) {
        sender.alpha = hipSwitch.isOn ? 0.5: 1
        hipSwitch.setOn(!hipSwitch.isOn, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  @IBAction func onSubmitButto(_ sender: Any) {
    if user.isPowerlifting {
      performSegue(withIdentifier: "powerSegue", sender: nil)
    } else if user.isBodybuilding{
      performSegue(withIdentifier: "bodySegue", sender: nil)
    } else if user.isFitness{
      performSegue(withIdentifier: "fitnessSegue", sender: nil)
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
