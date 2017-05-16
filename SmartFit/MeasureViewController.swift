//
//  MeasureViewController.swift
//  SmartFit
//
//  Created by John Law on 3/5/2017.
//  Copyright © 2017 CPF-17. All rights reserved.
//

import UIKit

class MeasureViewController: UIViewController {

    var timer = Timer()
    var hour = 0
    var thour = 0
    var minute = 0
    var tminute = 0
    var second = 0
    var tsecond = 0
    var csecond = 0
    var tcsecond = 0
    var progressing = false;
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var fourthLabel: UILabel!
    @IBOutlet weak var fifthLabel: UILabel!
    @IBOutlet weak var sixthLabel: UILabel!
    @IBOutlet weak var sevethLabel: UILabel!
    @IBOutlet weak var eightLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        self.firstLabel.text = "\(tminute)"
        self.secondLabel.text = "\(minute)"
        self.fourthLabel.text = "\(tsecond)"
        self.fifthLabel.text = "\(second)"
        self.sevethLabel.text = "\(tcsecond)"
        self.eightLabel.text = "\(csecond)"
        
        minute = 9
        tminute = 5
        second = 9
        tsecond = 5
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func startMeasure(_ sender: Any) {
        if !progressing {
            progressing = true
            timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: { (Timer) in
                self.csecond += 1
                
                if self.csecond == 10 {
                    self.csecond = 0
                    self.tcsecond += 1
                    
                    if self.tcsecond == 10 {
                        self.tcsecond = 0
                        self.second += 1
                        
                        if self.second == 10 {
                            self.second = 0
                            self.tsecond += 1
                            
                            if self.tsecond == 6 {
                                self.tsecond = 0
                                self.minute += 1
                                
                                if self.minute == 10 {
                                    self.minute = 0
                                    self.tminute += 1
                                    
                                    if self.tminute == 6 {
                                        self.tminute = 0
                                        self.hour += 1
                                        
                                        if self.hour == 10 {
                                            self.hour = 0
                                            self.thour += 1
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                
                
                if self.thour + self.hour > 0 {
                    self.firstLabel.text = "\(self.thour)"
                    self.secondLabel.text = "\(self.hour)"
                    self.thirdLabel.text = ":"
                    self.fourthLabel.text = "\(self.tminute)"
                    self.fifthLabel.text = "\(self.minute)"
                    self.sixthLabel.text = ":"
                    self.sevethLabel.text = "\(self.tsecond)"
                    self.eightLabel.text = "\(self.second)"
                }
                else {
                    self.firstLabel.text = "\(self.tminute)"
                    self.secondLabel.text = "\(self.minute)"
                    self.thirdLabel.text = ":"
                    self.fourthLabel.text = "\(self.tsecond)"
                    self.fifthLabel.text = "\(self.second)"
                    self.sixthLabel.text = "."
                    self.sevethLabel.text = "\(self.tcsecond)"
                    self.eightLabel.text = "\(self.csecond)"
                }
            })
        }
        
    }
    
    
    @IBAction func endMeasure(_ sender: Any) {
        timer.invalidate()
        progressing = false
        print("stop")
    }
}
