//
//  UpperViewController.swift
//  SmartFit
//
//  Created by Gerard Recinto on 4/24/17.
//  Copyright © 2017 CPF-17. All rights reserved.
//

import UIKit



class UpperViewController: UIViewController {
    struct comingBackStruct{
        static var comingBack = false;
    }
  @IBOutlet weak var absSwitch: UISwitch!
 
  @IBOutlet weak var armsSwitch: UISwitch!
  @IBOutlet weak var backSwitch: UISwitch!
  @IBOutlet weak var shoulderSwitch: UISwitch!
  @IBOutlet weak var chestSwitch: UISwitch!
    static var comingBack = false;
    
    var workoutsArray = [Dictionary<String, String, String>] ()
    let emptyArray = [Dictionary<String, String, String>]()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onChestButton(_ sender: UIButton) {
        sender.alpha = chestSwitch.isOn ? 0.5: 1
        chestSwitch.setOn(!chestSwitch.isOn, animated: false)
    }

    @IBAction func onShoulderButton(_ sender: UIButton) {
        sender.alpha = shoulderSwitch.isOn ? 0.5: 1
        shoulderSwitch.setOn(!shoulderSwitch.isOn, animated: false)
    }

    @IBAction func onArmsButton(_ sender: UIButton) {
        sender.alpha = armsSwitch.isOn ? 0.5: 1
        armsSwitch.setOn(!armsSwitch.isOn, animated: false)
    }

    @IBAction func onAbsButton(_ sender: UIButton) {
        sender.alpha = absSwitch.isOn ? 0.5: 1
        absSwitch.setOn(!absSwitch.isOn, animated: false)
    }

    @IBAction func onBackButton(_ sender: UIButton) {
        sender.alpha = backSwitch.isOn ? 0.5: 1
        backSwitch.setOn(!backSwitch.isOn, animated: false)
    }
    
    @IBAction func onSubmitButton(_ sender: Any) {
    
    if(armsSwitch.isOn == true){
        workoutsArray.append(["name": "Bicep Curls","mag": "", "units": "lbs"])
        workoutsArray.append(["name": "Push ups", "mag": "", "units": "reps"])
            
    }
    if(absSwitch.isOn == true){
        workoutsArray.append(["name": "Ab Machine", "units": "lbs"])
        workoutsArray.append(["name": "Sit Ups", "units": "reps"])
    }
        
    if(shoulderSwitch.isOn == true){
        workoutsArray.append(["name": "Overhead Press", "units": "lbs"])
    }
        
    if(chestSwitch.isOn == true){
        workoutsArray.append(["name": "Bench Press", "units": "lbs"])
    }
        
    if(backSwitch.isOn == true){
        workoutsArray.append(["name": "Bentover Rows", "units": "lbs"])
        workoutsArray.append(["name": "Lat Pulldown", "units": "lbs"])
    }
        
    if(user.isPowerlifting == true){
        workoutsArray.append(["name": "Close Grip Bench", "units": "lbs"])
        workoutsArray.append(["name": "Wide Grip Bench", "units": "lbs"])
    }
        
    if(user.isBodybuilding == true || user.isFitness == true){
        workoutsArray.append(["name": "Decline Bench", "units": "lbs"])
        workoutsArray.append(["name": "Incline Bench", "units": "lbs"])
    }
        
        
    

    let storyBoard : UIStoryboard = UIStoryboard(name: "WorkoutEntry", bundle:nil)
        
    let secondViewController = storyBoard.instantiateViewController(withIdentifier: "WorkoutEntry") as! WorkoutEntryViewController
        self.navigationController?.pushViewController(secondViewController, animated: true)
    
    secondViewController.featureArray = workoutsArray
    secondViewController.previousView = "Upper"
    workoutsArray = emptyArray
    
        
    
    
//    if user.isPowerlifting == true{
//      performSegue(withIdentifier: "powerSegue", sender: nil)
//    } else if user.isFitness == true{
//      performSegue(withIdentifier: "fitnessSegue", sender: nil)
//    } else if user.isBodybuilding == true{
//      performSegue(withIdentifier: "bbSegue", sender: nil)
//    }
  }
  /*@IBAction func onSubmitButton(_ sender: Any) {
    /*
    let storyboard = UIStoryboard(name: "Main", bundle: nil)

    let myVC = storyboard.instantiateViewController(withIdentifier: "UpperBodySubmitViewController") as! UpperBodySubmitViewController
    
    if (absSwitch.isOn == false){
      myVC.abLabel.isHidden = true;
      myVC.abTextField.isHidden = true;
    }
    if (armsSwitch.isOn == false){
      myVC.bicepLabel.isHidden = true;
      myVC.bicepTextField.isHidden = true;
    }
    if (backSwitch.isOn == false){

      myVC.rowLabel.isHidden = true;
      myVC.rowTextField.isHidden = true;
    }
    if (shoulderSwitch.isOn == false){
      myVC.ohpLabel.isHidden = true;
      myVC.ohpTextField.isHidden = true;
    }
    */
    //navigationController?.pushViewController(myVC, animated: true)
    performSegue(withIdentifier: "upperSubmitSegue", sender: nil)
  }*/

  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
   /* override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
      if segue.identifier == "upperSubmitSegue" {
        if let myVC = segue.destination as? UpperBodySubmitViewController {
          myVC.absSwitchisOn = absSwitch.isOn
          myVC.armsSwitchisOn = armsSwitch.isOn
          myVC.backSwitchisOn = backSwitch.isOn
          myVC.shoulderSwitchisOn = shoulderSwitch.isOn
        }

        
      }
      
      
    }*/
 

}
