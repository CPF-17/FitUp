//
//  WorkoutEntryViewController.swift
//  SmartFit
//
//  Created by Derrick Wong on 5/26/17.
//  Copyright © 2017 CPF-17. All rights reserved.
//

import UIKit

class WorkoutEntryViewController: UIViewController, UIScrollViewDelegate {
    //empty array for resetting
    let emptyArray = [Dictionary<String, String>]()
    var previousView: String!
    
    @IBOutlet weak var featureScrollView: UIScrollView!
    
    
    @IBOutlet weak var featurePageControl: UIPageControl!

    
    var dataEntryArray = [Int]()
    
    var featureArray = [Dictionary<String,String>]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataEntryArray = [Int] (repeating: 0, count: featureArray.count)
        
        featurePageControl.numberOfPages = featureArray.count
        featurePageControl.isEnabled = true
        //featurePageControl.pageIndicatorTintColor = UIColor.white
        
        
        featureScrollView.isPagingEnabled = true
        featureScrollView.delegate = self
        
        
        featureScrollView.frame = CGRect(x:0, y:0, width: view.frame.width, height: view.frame.height)
        featureScrollView.contentSize = CGSize(width: self.view.bounds.width * CGFloat(featureArray.count), height: self.view.frame.height)
        featureScrollView.showsHorizontalScrollIndicator = false
        featureScrollView.showsVerticalScrollIndicator = false
        
//        featureScrollView.contentSize = CGSizeMake(featureScrollView.contentSize.width,featureScrollView.frame.size.height);
//        

        
        loadFeatures()
        
        


        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadFeatures() {
        
        for (index, feature) in featureArray.enumerated() {
            if let featureView = Bundle.main.loadNibNamed("Entry", owner: self, options: nil)?.first as? WorkoutEntry {
                
                
                featureView.name.text = feature["name"]
                featureView.units.text = feature["units"]
                
                featureScrollView.addSubview(featureView)
                featureView.frame.size.width = self.view.bounds.size.width
                featureView.frame.origin.x = CGFloat(index) * self.view.bounds.size.width
                featureView.frame.size.height = self.view.bounds.height
                featureView.entryField.becomeFirstResponder()
                if (index == featureArray.count - 1){
                    featureView.submitButton.layer.cornerRadius = 5
                    featureView.submitButton.alpha = 1
                    featureView.submitButton.isEnabled = true
                    featureView.submitButton.addTarget(self, action: #selector(WorkoutEntryViewController.submit(sender:)), for: .touchUpInside)
                    
                } else {
                    featureView.submitButton.alpha = 0
                    featureView.submitButton.isEnabled = false
                    
                }
            }
        }
        
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let page = scrollView.contentOffset.x / scrollView.frame.size.width
        featurePageControl.currentPage = Int(page)
       
    }
    
    func submit(sender: UIButton){
        
        for (index, feature) in featureArray.enumerated(){
            if let featureView = Bundle.main.loadNibNamed("Entry", owner: self, options: nil)?.first as? WorkoutEntry {
                
                if featureView.entryField.text != ""{
                    
                    dataEntryArray[index] = featureView.entryField.text as! Int;
                } else {
                    dataEntryArray[index] = 0
                }
 
            }

        }
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        if(previousView == "Upper"){
            if(user.lowerBody == true){
                let secondViewController = storyBoard.instantiateViewController(withIdentifier: "LowerBody") as! PowerLowerViewController
                self.navigationController?.pushViewController(secondViewController, animated: true)
            } else{
                let secondViewController = storyBoard.instantiateViewController(withIdentifier: "QueryDays") as! QueryDaysViewController
                self.navigationController?.pushViewController(secondViewController, animated: true)
            }
            
        }
        
        if(previousView == "Lower"){
            let secondViewController = storyBoard.instantiateViewController(withIdentifier: "QueryDays") as! QueryDaysViewController
            self.navigationController?.pushViewController(secondViewController, animated: true)
        
        }
        
        if(previousView == "Cardio"){
            let secondViewController = storyBoard.instantiateViewController(withIdentifier: "QueryDays") as! QueryDaysViewController
            self.navigationController?.pushViewController(secondViewController, animated: true)
        }
        
        
        
        //TODO: put the data somewhere (UserDefaults?)
        
        //segue to the
        
        print (dataEntryArray)
        
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
