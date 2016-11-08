//
//  PieChartVC.swift
//  GraphView
//
//  Created by Sujan Vaidya on 10/27/16.
//  Copyright © 2016 Sujan Vaidya. All rights reserved.
//

import UIKit
import Charts

class PieChartVC: UIViewController {
    @IBOutlet var chartView: PieChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.title = String(PieChartVC)
        addPieChart(DataValues.months, values: DataValues.unitSold)
    }
    
    func addPieChart(dataPoints: [String], values: [Double]) {
        chartView.noDataText = "You need to provide data for the chart."
        var dataEntries: [ChartDataEntry] = []
        for i in 0..<dataPoints.count {
            let dataEntry = ChartDataEntry(value: values[i], xIndex: i)
            dataEntries.append(dataEntry)
        }
        
        
        let pieChartDataSet = PieChartDataSet(yVals: dataEntries, label: "Units Sold")
        let chartData = PieChartData(xVals: DataValues.months, dataSet: pieChartDataSet)
        chartView.data = chartData
        chartView.descriptionText = ""
        
        pieChartDataSet.sliceSpace = 4
        pieChartDataSet.colors = ChartColorTemplates.material()
        
    }

}
