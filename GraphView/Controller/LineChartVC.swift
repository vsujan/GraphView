//
//  LineChartVC.swift
//  GraphView
//
//  Created by Sujan Vaidya on 10/27/16.
//  Copyright © 2016 Sujan Vaidya. All rights reserved.
//

import UIKit
import Charts

class LineChartVC: UIViewController {

    @IBOutlet var chartView: LineChartView!
    override func viewDidLoad() {
        super.viewDidLoad()
        drawLineChart(DataValues.months, values: DataValues.unitSold)
    }

    func drawLineChart(dataPoints: [String], values: [Double]) {
        chartView.noDataText = "You need to provide data for the chart."
        var dataEntries: [ChartDataEntry] = []
        for i in 0..<dataPoints.count {
            let dataEntry = ChartDataEntry(value: values[i], xIndex: i)
            dataEntries.append(dataEntry)
        }
        
        let lineChartDataSet = LineChartDataSet(yVals: dataEntries, label: "Units Sold")
        let chartData = LineChartData(xVals: DataValues.months, dataSet: lineChartDataSet)
        chartView.data = chartData
        chartView.descriptionText = ""
        
        
//        lineChartDataSet.colors = [UIColor(red: 230/255, green: 126/255, blue: 34/255, alpha: 1)]
        lineChartDataSet.colors = ChartColorTemplates.colorful()
        
        chartView.backgroundColor = UIColor.yellowColor()
        chartView.drawGridBackgroundEnabled = true
//        chartView.gridBackgroundColor = UIColor.greenColor()
        
        chartView.rightAxis.inverted = true
        chartView.leftAxis.inverted = true
        
        chartView.drawBordersEnabled = true
        chartView.borderColor = UIColor.blackColor()

        lineChartDataSet.circleColors = [UIColor(red: 230/255, green: 126/255, blue: 34/255, alpha: 1)]
        lineChartDataSet.circleHoleColor = UIColor.redColor()
        
        // Limit line
        let yAxis = chartView.getAxis(.Right)
        let maxLine = ChartLimitLine(limit: 14, label: "Max blood pressure")//new LimitLine(140f, "Critical Blood Pressure");
        maxLine.labelPosition = .LeftTop
        maxLine.lineDashLengths = [CGFloat(2), CGFloat(3), CGFloat(4)]
        maxLine.lineColor = UIColor.redColor()
        maxLine.lineWidth = 4
        maxLine.valueTextColor = UIColor.blackColor()
        yAxis.addLimitLine(maxLine)
        
        let minLine = ChartLimitLine(limit: 4, label: "Min blood pressure")//new LimitLine(140f, "Critical Blood Pressure");
        minLine.labelPosition = .LeftTop
        minLine.lineColor = UIColor.redColor()
        minLine.lineWidth = 4
        minLine.valueTextColor = UIColor.blackColor()
        yAxis.addLimitLine(minLine)
    }
}
