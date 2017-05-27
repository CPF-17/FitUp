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
    
    var workoutsArray = [Dictionary<String, String>] ()
    let emptyArray = [Dictionary<String, String>]()
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
    
    if(legSwitch.isOn == true){
        workoutsArray.append(["name": "Low Bar Squat", "units": "lbs"])
        workoutsArray.append(["name": "High Bar Squat", "units": "lbs"])
        
    }
    
    if(hamstringSwitch.isOn == true){
        workoutsArray.append(["name": "Stiff Leg Deadlift", "units": "lbs"])
        workoutsArray.append(["name": "Deadlift", "units": "lbs"])
    }
    
    if(calveSwitch.isOn == true){
        workoutsArray.append(["name": "Calve Raises", "units": "lbs"])
    }
    if(gluteusMaximusSwitch.isOn == true){
        
        if(legSwitch.isOn == false){
            workoutsArray.append(["name": "Low Bar Squat", "units": "lbs"])
        }
        
    }
    
    if(hipSwitch.isOn == true){
        workoutsArray.append(["name": "Hip Abductor", "units": "lbs"])
        workoutsArray.append(["name": "Hip Adductor", "units": "lbs"])
    }
    
    if(user.isPowerlifting == true){
        workoutsArray.append(["name": "Sumo Deadlift", "units": "lbs"])
        if(legSwitch.isOn == false || gluteusMaximusSwitch.isOn == false){
            workoutsArray.append(["name": "Low Bar Squat", "units": "lbs"])
        }
       
        workoutsArray.append(["name": "Good Morning", "units": "lbs"])
    
    }
    
    if(user.isBodybuilding){
        if(legSwitch.isOn == false){
            workoutsArray.append(["name": "High Bar Squat", "units": "lbs"])
        }
        workoutsArray.append(["name": "Front Squat", "units": "lbs"])
        workoutsArray.append(["name": "Leg Press", "units": "lbs"])
        
    }
    
    if(user.isFitness == true){
        workoutsArray.append(["name": "Leg Press", "units": "lbs"])
        workoutsArray.append(["name": "Squats", "units": "lbs"])
    }
    
    let storyBoard : UIStoryboard = UIStoryboard(name: "WorkoutEntry", bundle:nil)
    
    let secondViewController = storyBoard.instantiateViewController(withIdentifier: "WorkoutEntry") as! WorkoutEntryViewController
    self.navigationController?.pushViewController(secondViewController, animated: true)
    
    secondViewController.featureArray = workoutsArray
    secondViewController.previousView = "Lower"
    workoutsArray = emptyArray
  
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
