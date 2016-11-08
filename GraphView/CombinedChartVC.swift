//
//  CombinedChartVC.swift
//  GraphView
//
//  Created by Sujan Vaidya on 11/4/16.
//  Copyright © 2016 Sujan Vaidya. All rights reserved.
//

import UIKit
//import Charts

// TODO
class CombinedChartVC: UIViewController {
    @IBOutlet var chartView: CombinedChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        drawLineChart(DataValues.months)
    }
    
    func drawLineChart(_ dataPoints: [String]) {
        chartView.noDataText = "You need to provide data for the chart."
        
        let values1: [Double] = [4, 3, 5, 6, 2, 7, 8, 10, 12, 12, 11, 15]
        let values2: [Double] = [5, 2, 6, 9, 3, 6, 4, 11, 14, 10, 13, 11]
        
        var dataEntries1: [ChartDataEntry] = []
        var dataEntries2: [BarChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let dataEntry = ChartDataEntry(value: values1[i], xIndex: i)
            dataEntries1.append(dataEntry)
        }
        
        for i in 0..<dataPoints.count {
            let dataEntry = BarChartDataEntry(value: values2[i], xIndex: i)
            dataEntries2.append(dataEntry)
        }
        
        let lineChartDataSet = LineChartDataSet()
        lineChartDataSet.yVals = dataEntries1
        lineChartDataSet.label = "Company 1"
        lineChartDataSet.colors = [UIColor.redColor()]
        
        let barChartDataSet = BarChartDataSet()//(yVals: dataEntries2, label: "Units Sold")
        barChartDataSet.yVals = dataEntries2
        barChartDataSet.label = "Company 2"
        barChartDataSet.colors = [UIColor.greenColor()]
        //        let chartData2 = LineChartData(xVals: DataValues.months, dataSet: lineChartDataSet2)
        
        var dataSets: [IChartDataSet] = []
        dataSets.append(lineChartDataSet)
        dataSets.append(barChartDataSet)
        
        let chartData = CombinedChartData()// (xVals: DataValues.months, dataSets: dataSets)
        chartData.xVals = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
        chartData.dataSets = dataSets
        chartView.data = chartData
        chartView.drawOrder = [1, 1]
        chartView.descriptionText = ""
        
        chartView.backgroundColor = UIColor.grayColor()
        chartView.drawGridBackgroundEnabled = true
        chartView.gridBackgroundColor = UIColor.yellowColor()
        
//        chartView.getAxis(.Left).axisMinValue = 0
//        chartView.getAxis(.Right).axisMinValue = 0
//        chartView.getAxis(.Left).granularityEnabled = true
//        chartView.getAxis(.Left).granularity = 1
//        chartView.getAxis(.Right).granularity = 1
        
    }
}
