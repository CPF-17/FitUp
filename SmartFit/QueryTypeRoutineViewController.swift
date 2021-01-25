//
//  QueryTypeRoutineViewController.swift
//  SmartFit
//
//  Created by Gerard Recinto on 5/14/17.
//  Copyright © 2017 CPF-17. All rights reserved.
//

import UIKit

class QueryTypeRoutineViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
  @IBOutlet weak var pickerView: UIPickerView!
  var picks = ["Powerlifting", "Bodybuilding", "Fitness", "Cardio"]
  
  
    override func viewDidLoad() {
        super.viewDidLoad()
      self.pickerView.dataSource = self
      self.pickerView.delegate = self
      //self.pickerView.reloadAllComponents()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return picks.count
  }
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
  }
  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return picks[row]
  }

  func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
    var pickerLabel = view as! UILabel!
    if view == nil {  //if no label there yet
      pickerLabel = UILabel()
      //color the label's background
//      let hue = CGFloat(row)/CGFloat(picks.count)
//      pickerLabel?.backgroundColor = UIColor(hue: hue, saturation: 1.0, brightness: 1.0, alpha: 1.0)
    }
    let titleData = picks[row]
    let myTitle = NSAttributedString(string: titleData, attributes: [NSAttributedStringKey.font:UIFont(name: "Menlo", size: 26.0)!,NSAttributedStringKey.foregroundColor:UIColor.white])
    pickerLabel!.attributedText = myTitle
    pickerLabel!.textAlignment = .center
    return pickerLabel!
    
  }
  func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
    return 36.0
  }
  func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
    return 200
  }
  
  
  @IBAction func onSubmitButton(_ sender: Any) {

    
    var workoutsArray = [Dictionary<String,String>]()
    if pickerView.selectedRow(inComponent: 0) == 3 {
      user.isCardio = true
        let storyBoard : UIStoryboard = UIStoryboard(name: "WorkoutEntry", bundle:nil)
        
        let secondViewController = storyBoard.instantiateViewController(withIdentifier: "WorkoutEntry") as! WorkoutEntryViewController
        self.navigationController?.pushViewController(secondViewController, animated: true)
        
        workoutsArray.append(["name": "Jog", "units": "min"])
        workoutsArray.append(["name": "Body Squats", "units": "reps"])
        workoutsArray.append(["name": "Bulgarian Split Squat", "units": "lbs"])
        workoutsArray.append(["name": "Jump Rope", "units": "min"])
        secondViewController.featureArray = workoutsArray
        secondViewController.previousView = "Cardio"
        
        
    } else if pickerView.selectedRow(inComponent: 0) == 0{
    performSegue(withIdentifier: "notCardioSegue", sender: nil)
      user.isPowerlifting = true
    } else if pickerView.selectedRow(inComponent: 0) == 1 {
      performSegue(withIdentifier: "notCardioSegue", sender: nil)
      user.isBodybuilding = true
    } else if pickerView.selectedRow(inComponent: 0) == 2{
      performSegue(withIdentifier: "notCardioSegue", sender: nil)
      user.isFitness = true
    }

  }
  
  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
      /*
       if segue.identifier == "upperWorkoutSegue" {
       if let myVC = segue.destination as? RoutineUpperViewController {
       myVC.abWeight = abTextField.text!
       myVC.benchWeight = benchTextField.text!
       myVC.bicepWeight = bicepTextField.text!
       myVC.rowWeight = rowTextField.text!
       myVC.ohpWeight = ohpTextField.text!
       
       }

       */
   
  }*/

}
