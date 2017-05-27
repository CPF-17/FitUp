//
//  PowerMonViewController.swift
//  SmartFit
//
//  Created by Gerard Recinto on 5/17/17.
//  Copyright © 2017 CPF-17. All rights reserved.
//

import UIKit

class PowerMonViewController: UIViewController {

//  @IBOutlet weak var abLabel: UILabel!
//  @IBOutlet weak var lowBarLabel: UILabel!
//  @IBOutlet weak var benchLabel: UILabel!
//  
//  @IBOutlet weak var ohpLabel: UILabel!
//  
//  @IBOutlet weak var bicepLabel: UILabel!
//  
//  @IBOutlet weak var pullupLabel: UILabel!
  
    var upperArray: [Dictionary <String, String>]?
    var lowerArray: [Dictionary<String, String>]?
    let emptyArray =  [Dictionary<String, String>]()
    
    //arrays for days of the week
    var monArray: [Dictionary<String, String>]?
    var tuesArray: [Dictionary<String, String>]?
    var wedArray: [Dictionary<String, String>]?
    var thurArray: [Dictionary<String, String>]?
    var friArray: [Dictionary<String, String>]?
    var satArray: [Dictionary<String, String>]?
    var sunArray: [Dictionary<String, String>]?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let defaults = UserDefaults.standard
        
        //test if there is an existing user.
//        let existing = defaults.bool(forKey: "HasUser")
//        print("\(existing)")
//        
        generateRoutine()
        print(monArray)
        print(tuesArray)
        print(wedArray)
        print(thurArray)
        print(friArray)
        print(satArray)
        print(sunArray)
        
        
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationItem.backBarButtonItem?.title = ""
        // Do any additional setup after loading the view.
//      lowBarLabel.text = user.lowBar
//      benchLabel.text = user.benchPress
//      ohpLabel.text = user.ohp
//      bicepLabel.text = user.bicepCurl
//      abLabel.text = user.abMachine
//      pullupLabel.text = user.pullUps
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
  
  
    @IBAction func onMondayTapped(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Logged", bundle:nil)
        let secondViewController = storyBoard.instantiateViewController(withIdentifier: "MondayDetailedView") as! PowerMonViewController
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    func generateRoutine(){
        
        var haveLower = false
        var haveUpper = false
        var lowerIn = [Dictionary<String, String>]()
        var upperIn = [Dictionary<String, String>]()
        
//        var lowerOut = [Dictionary<String, String>]()
//        var upperOut = [Dictionary<String, String>]()
        
        var outArray = [Dictionary<String, String>]()
        
        
        //hardcoded freedays
        wedArray = emptyArray
        friArray = emptyArray
        monArray = emptyArray
        
        let defaults = UserDefaults.standard
        
        //set bool value to true if exist
        //set array if exist
        if let lowerArray = defaults.array(forKey: "lowerBodyArray") as? [Dictionary<String, String>]{
            haveLower = true
            lowerIn = lowerArray
        }
        
        //set bool value to true if exist
        //set array if exist
        if let upperArray = defaults.array(forKey: "upperBodyArray") as? [Dictionary<String, String>]{
            haveUpper = true
            upperIn = upperArray
        }
        
        //only wants upper and
        if((haveLower == false && haveUpper == true) && upperIn.count < 4){
                //print("Largest Array is Smaller than 4")
                tuesArray = upperIn
                thurArray = upperIn
                satArray = upperIn
                sunArray = upperIn

        } else if((haveLower == true && haveUpper == false) && lowerIn.count < 4){
            tuesArray = lowerIn
            thurArray = lowerIn
            satArray = lowerIn
            sunArray = lowerIn
        }
        else {
        //generate 4 routines
            for i in 1...4{
                
                let upperIndexSet = Set<Int> ()
                let lowerIndexSet = Set<Int> ()
                
                //set routines for the other one day by randomly selecting 4 unique workouts
                while outArray.count < 4{
                    //if user wants lower
                    if haveLower == true{
                        //size of the lower array
                        let countLower = UInt32((lowerIn.count))
                        //rand number generated with lower array size
                        let randLower = Int(arc4random_uniform(countLower))
                        
                        if(lowerIndexSet.contains(randLower) == false){
                            //add to out array
                            var dict = lowerIn[randLower]
                            outArray.append(["name": dict["name"]!, "mag": dict["mag"]!, "units": dict["units"]!])
                        }
                        
                    }
                    
                    //if user wants upper
                    if haveUpper == true{
                        //size of the upper array
                        let countUpper = UInt32((upperIn.count))
                        //rand number generated with upper array size
                        let randUpper = Int(arc4random_uniform(countUpper))
                        
                        if(upperIndexSet.contains(randUpper) == false){
                            //add to out array
                            var dict = upperIn[randUpper]
                            outArray.append(["name": dict["name"]!, "mag": dict["mag"]!, "units": dict["units"]!])
                        }
                    }
                   // print("while loop: generating workout\n")
                }
                
                if i == 1{
                    tuesArray = outArray
                    //print(tuesArray)
                }
                else if i == 2{
                    thurArray = outArray
                    //print(thurArray)
                }
                else if i == 3{
                    satArray = outArray
                    //print(satArray)
                }
                else if i == 4{
                    sunArray = outArray
                   // print(sunArray)
                }
            }
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
