//
//  DaysViewController.swift
//  SmartFit
//
//  Created by Gerard Recinto on 5/27/17.
//  Copyright © 2017 CPF-17. All rights reserved.
//

import UIKit

//actually the exercises for the day
class DaysViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  @IBOutlet weak var tableView: UITableView!
  let defaults = UserDefaults.standard
  var lowerBody: [Dictionary<String, String>]?
  var upperBody: [Dictionary<String, String>]?

  var days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
      lowerBody = defaults.array(forKey: "lowerBodyArray") as! [Dictionary<String, String>]
      upperBody = defaults.array(forKey: "upperBodyArray") as! [Dictionary<String, String>]
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "DayTableViewCell", for: indexPath) as! DayTableViewCell
    cell.dayLabel.text = lowerBody[indexPath.row]
    
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    <#code#>
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
