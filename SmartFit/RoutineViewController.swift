//
//  RoutineViewController.swift
//  SmartFit
//
//  Created by Derrick Wong on 5/27/17.
//  Copyright © 2017 CPF-17. All rights reserved.
//

import UIKit

class RoutineViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var data: [Dictionary<String, String>]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(data)
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.reloadData()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if data != nil{
            return data!.count
        } else{
            return 0
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "DayCell", for: indexPath) as! DayCell
        let dict = data?[indexPath.row]
        
        
        cell.nameLabel.text = dict?["name"]
        cell.unitsLabel.text = dict?["units"]
        cell.magnitudeLabel.text = dict?["mag"]
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        //deselect of the gray cell
        tableView.deselectRow(at: indexPath, animated:true)
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
