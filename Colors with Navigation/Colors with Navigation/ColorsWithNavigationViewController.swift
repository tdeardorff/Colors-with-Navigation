//
//  ColorsWithNavigationViewController.swift
//  Colors with Navigation
//
//  Created by Trever Deardorff on 7/18/17.
//  Copyright © 2017 Trever Deardorff. All rights reserved.
//

import UIKit

class ColorsWithNavigationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var colors = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple", "Brown"]
    var backgroundColors = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green, UIColor.blue, UIColor.purple, UIColor.brown]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        cell.textLabel?.text = colors[indexPath.row]
        
        cell.backgroundColor = backgroundColors[indexPath.row]
        
        return cell
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
