//
//  GroupedPointsVC.swift
//  GraphView
//
//  Created by Sujan Vaidya on 11/8/16.
//  Copyright © 2016 Sujan Vaidya. All rights reserved.
//

import UIKit
import Charts

class GroupedPointsVC: UIViewController {
    
    @IBOutlet var chartView: LineChartView!

    override func viewDidLoad() {
        super.viewDidLoad()
        drawLineChart(DataValues.months, values: DataValues.unitSold)
    }
    
    func drawLineChart(dataPoints: [String], values: [Double]) {
        chartView.noDataText = "You need to provide data for the chart."
        
//        let values = [1, 2, 3, 4, 3, 5, 5, 6, 4, 5, 6, 7, 8, 5, 3, 4, 5, 6, 5, 6, 4, 5, 6, 4, 6, 3, 4, 5, 4, 5, 4, 5, 6, 6, 4, 7]
        var dataEntries: [ChartDataEntry] = []
//        for i in 0..<dataPoints.count {
//            let dataEntry = ChartDataEntry(value: values[i], xIndex: i)
//            dataEntries.append(dataEntry)
//        }

        dataEntries.append(ChartDataEntry(value: 2, xIndex: 1))
        dataEntries.append(ChartDataEntry(value: 1, xIndex: 2))
        
        dataEntries.append(ChartDataEntry(value: 4, xIndex: 3))
        dataEntries.append(ChartDataEntry(value: 3, xIndex: 4))
        dataEntries.append(ChartDataEntry(value: 5, xIndex: 5))
        
        dataEntries.append(ChartDataEntry(value: 6, xIndex: 6))
        dataEntries.append(ChartDataEntry(value: 4, xIndex: 7))
        dataEntries.append(ChartDataEntry(value: 5, xIndex: 8))
        
        dataEntries.append(ChartDataEntry(value: 5, xIndex: 9))
        dataEntries.append(ChartDataEntry(value: 4, xIndex: 10))
        dataEntries.append(ChartDataEntry(value: 6, xIndex: 11))
        
        dataEntries.append(ChartDataEntry(value: 7, xIndex: 12))
        dataEntries.append(ChartDataEntry(value: 4, xIndex: 13))
        dataEntries.append(ChartDataEntry(value: 6, xIndex: 14))
        
        dataEntries.append(ChartDataEntry(value: 4, xIndex: 15))
        dataEntries.append(ChartDataEntry(value: 5, xIndex: 16))
        dataEntries.append(ChartDataEntry(value: 6, xIndex: 17))
        
        dataEntries.append(ChartDataEntry(value: 3, xIndex: 18))
        dataEntries.append(ChartDataEntry(value: 6, xIndex: 19))
        dataEntries.append(ChartDataEntry(value: 9, xIndex: 20))
        
        dataEntries.append(ChartDataEntry(value: 7, xIndex: 21))
        dataEntries.append(ChartDataEntry(value: 8, xIndex: 22))
        dataEntries.append(ChartDataEntry(value: 5, xIndex: 23))
        
        dataEntries.append(ChartDataEntry(value: 4, xIndex: 24))
        dataEntries.append(ChartDataEntry(value: 5, xIndex: 25))
        dataEntries.append(ChartDataEntry(value: 7, xIndex: 26))
        
        dataEntries.append(ChartDataEntry(value: 2, xIndex: 27))
        dataEntries.append(ChartDataEntry(value: 3, xIndex: 28))
        dataEntries.append(ChartDataEntry(value: 4, xIndex: 29))
        
        dataEntries.append(ChartDataEntry(value: 5, xIndex: 30))
        dataEntries.append(ChartDataEntry(value: 1, xIndex: 31))
        dataEntries.append(ChartDataEntry(value: 2, xIndex: 31))
        
        dataEntries.append(ChartDataEntry(value: 2, xIndex: 33))
        dataEntries.append(ChartDataEntry(value: 4, xIndex: 34))
        dataEntries.append(ChartDataEntry(value: 1, xIndex: 35))
        
        let lineChartDataSet = LineChartDataSet(yVals: dataEntries, label: "Units Sold")
        let chartData = LineChartData(xVals: DataValues.months, dataSet: lineChartDataSet)
        
        chartView.data = chartData
        chartView.xAxis.drawLabelsEnabled = true
        chartView.xAxis.labelPosition = .Bottom
//        chartView.xAxis.axisLabelModulus
        chartView.descriptionText = ""
        
        //        lineChartDataSet.colors = [UIColor(red: 230/255, green: 126/255, blue: 34/255, alpha: 1)]
        lineChartDataSet.colors = ChartColorTemplates.colorful()
        
        chartView.backgroundColor = UIColor.yellowColor()
        chartView.xAxis.spaceBetweenLabels = 1
        chartView.drawGridBackgroundEnabled = true
        //        chartView.gridBackgroundColor = UIColor.greenColor()
        
        chartView.rightAxis.inverted = true
        chartView.leftAxis.inverted = true
        
        chartView.drawBordersEnabled = true
        chartView.borderColor = UIColor.blackColor()
        
        lineChartDataSet.circleColors = [UIColor(red: 230/255, green: 126/255, blue: 34/255, alpha: 1)]
        lineChartDataSet.circleHoleColor = UIColor.redColor()
    }
}
