//
//  BubbleChartVC.swift
//  GraphView
//
//  Created by Sujan Vaidya on 10/28/16.
//  Copyright © 2016 Sujan Vaidya. All rights reserved.
//

import UIKit
//import Charts

class BubbleChartVC: UIViewController {
    @IBOutlet var chartView: BubbleChartView!

    override func viewDidLoad() {
        super.viewDidLoad()
        drawLineChart(DataValues.months, values: DataValues.unitSold)
    }
    
    func drawLineChart(_ dataPoints: [String], values: [Double]) {
        chartView.noDataText = "You need to provide data for the chart."
        var dataEntries: [ChartDataEntry] = []
        for i in 0..<dataPoints.count {
            let dataEntry = BubbleChartDataEntry(xIndex: i, value: values[i], size: 2)
            dataEntries.append(dataEntry)
        }
        
        let bubbleChartDataSet = BubbleChartDataSet(yVals: dataEntries, label: "Units Sold")
        let chartData = BubbleChartData(xVals: DataValues.months, dataSet: bubbleChartDataSet)
        chartView.data = chartData
        chartView.descriptionText = ""
        
        
        bubbleChartDataSet.colors = [UIColor(red: 230/255, green: 126/255, blue: 34/255, alpha: 1)]
        
        chartView.backgroundColor = UIColor.yellowColor()
        chartView.drawGridBackgroundEnabled = true
        chartView.gridBackgroundColor = UIColor.greenColor()
        
        chartView.rightAxis.inverted = true
        chartView.leftAxis.inverted = true
        
        chartView.drawBordersEnabled = true
        chartView.borderColor = UIColor.blackColor()
        
        bubbleChartDataSet.colors = ChartColorTemplates.liberty()
        
    }
}
