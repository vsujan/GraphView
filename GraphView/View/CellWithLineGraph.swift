//
//  CellWithLineGraph.swift
//  ChartTest4
//
//  Created by Sujan Vaidya on 10/27/16.
//  Copyright © 2016 Leapfrog. All rights reserved.
//

import UIKit
import Charts

class CellWithLineGraph: UITableViewCell {

    @IBOutlet weak var chartView: LineChartView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func drawLineChart(_ dataPoints: [String], values: [Double]) {
        chartView.noDataText = "You need to provide data for the chart."
        var dataEntries: [ChartDataEntry] = []
        for i in 0..<dataPoints.count {
            let dataEntry = ChartDataEntry(value: values[i], xIndex: i)//BarChartDataEntry(value: values[i], xIndex: i)
            dataEntries.append(dataEntry)
        }
        
        let lineChartDataSet = LineChartDataSet(yVals: dataEntries, label: "Units Sold")
        let chartData = LineChartData(xVals: dataPoints, dataSet: lineChartDataSet)
        chartView.data = chartData
        chartView.descriptionText = ""
        
        
        //        lineChartDataSet.colors = [UIColor(red: 230/255, green: 126/255, blue: 34/255, alpha: 1)]
        lineChartDataSet.colors = ChartColorTemplates.colorful()
        
        chartView.backgroundColor = UIColor(red: 189/255, green: 195/255, blue: 199/255, alpha: 1)
        chartView.gridBackgroundColor = UIColor.greenColor()
        
        
        
        lineChartDataSet.circleColors = [UIColor(red: 230/255, green: 126/255, blue: 34/255, alpha: 1)]
        lineChartDataSet.circleHoleColor = UIColor.redColor()
        //        lineChartDataSet.mode = .CubicBezier
        
        chartView.userInteractionEnabled = false
    }

}
