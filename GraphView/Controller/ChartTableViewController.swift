//
//  ChartTableViewController.swift
//  GraphView
//
//  Created by Sujan Vaidya on 10/27/16.
//  Copyright © 2016 Sujan Vaidya. All rights reserved.
//

import UIKit

class ChartTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        self.tableView.estimatedRowHeight = 400
        self.tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    func registerCell() {
        self.tableView.registerNib(UINib(nibName: String(CellWithLineGraph), bundle: nil), forCellReuseIdentifier: String(CellWithLineGraph))
        self.tableView.registerNib(UINib(nibName: String(CellWithGradientLineGraph), bundle: nil), forCellReuseIdentifier: String(CellWithGradientLineGraph))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCellWithIdentifier(String(CellWithLineGraph), forIndexPath: indexPath) as! CellWithLineGraph
            cell.drawLineChart(DataValues.months, values: DataValues.unitSold)
            return cell
        case 1:
            let cell = tableView.dequeueReusableCellWithIdentifier(String(CellWithGradientLineGraph), forIndexPath: indexPath) as! CellWithGradientLineGraph
            cell.drawLineChart(DataValues.months, values: DataValues.unitSold)
            return cell
            
        default:
            break
        }
        
        return UITableViewCell()
    }
    
}
