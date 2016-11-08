//
//  MultipleLineGraph.swift
//  GraphView
//
//  Created by Sujan Vaidya on 11/7/16.
//  Copyright © 2016 Sujan Vaidya. All rights reserved.
//

import UIKit
//import Charts

class MultipleLineGraph: UIViewController {

    @IBOutlet var chartView: LineChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        drawLineChart(DataValues.months)
    }
    
    func drawLineChart(_ dataPoints: [String]) {
        chartView.noDataText = "You need to provide data for the chart."
        
        let values1: [Double] = [4, 3, 5, 6, 2, 7, 8, 10, 12, 12, 11, 15]
        let values2: [Double] = [5, 2, 6, 9, 3, 6, 4, 11, 14, 10, 13, 11]
        
        var dataEntries1: [ChartDataEntry] = []
        var dataEntries2: [ChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let dataEntry = ChartDataEntry(value: values1[i], xIndex: i)
            dataEntries1.append(dataEntry)
        }
        
        for i in 0..<dataPoints.count {
            let dataEntry = ChartDataEntry(value: values2[i], xIndex: i)
            dataEntries2.append(dataEntry)
        }
        
        let lineChartDataSet1 = LineChartDataSet()
        lineChartDataSet1.yVals = dataEntries1
        lineChartDataSet1.label = "Company 1"
        lineChartDataSet1.colors = [UIColor.redColor()]
        
        let lineChartDataSet2 = LineChartDataSet()//(yVals: dataEntries2, label: "Units Sold")
        lineChartDataSet2.yVals = dataEntries2
        lineChartDataSet2.label = "Company 2"
        lineChartDataSet2.colors = [UIColor.greenColor()]
//        let chartData2 = LineChartData(xVals: DataValues.months, dataSet: lineChartDataSet2)
        
        var dataSets: [IChartDataSet] = []
        dataSets.append(lineChartDataSet1)
        dataSets.append(lineChartDataSet2)
        
        let lineChartData = LineChartData(xVals: DataValues.months, dataSets: dataSets)
        chartView.data = lineChartData
        chartView.descriptionText = ""
        
    }

}
