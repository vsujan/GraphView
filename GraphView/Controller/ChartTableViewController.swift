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
        self.tableView.register(UINib(nibName: String(describing: CellWithLineGraph), bundle: nil), forCellReuseIdentifier: String(describing: CellWithLineGraph))
        self.tableView.register(UINib(nibName: String(describing: CellWithGradientLineGraph), bundle: nil), forCellReuseIdentifier: String(describing: CellWithGradientLineGraph))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch (indexPath as NSIndexPath).row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: CellWithLineGraph), for: indexPath) as! CellWithLineGraph
            cell.drawLineChart(DataValues.months, values: DataValues.unitSold)
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: CellWithGradientLineGraph), for: indexPath) as! CellWithGradientLineGraph
            cell.drawLineChart(DataValues.months, values: DataValues.unitSold)
            return cell
            
        default:
            break
        }
        
        return UITableViewCell()
    }
    
}
