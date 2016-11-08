//
//  RadarChartVC.swift
//  GraphView
//
//  Created by Sujan Vaidya on 10/28/16.
//  Copyright © 2016 Sujan Vaidya. All rights reserved.
//

import UIKit
import Charts

class RadarChartVC: UIViewController {

    @IBOutlet var chartView: RadarChartView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.title = String(RadarChartVC)
        drawLineChart(DataValues.months, values: DataValues.unitSold)
    }
    
    func drawLineChart(dataPoints: [String], values: [Double]) {
        chartView.noDataText = "You need to provide data for the chart."
        var dataEntries: [ChartDataEntry] = []
        for i in 0..<dataPoints.count {
            let dataEntry = ChartDataEntry(value: values[i], xIndex: i)
            dataEntries.append(dataEntry)
        }
        
        let radarChartDataSet = RadarChartDataSet(yVals: dataEntries, label: "Units Sold")
        let chartData = LineChartData(xVals: DataValues.months, dataSet: radarChartDataSet)
        chartView.data = chartData
        chartView.descriptionText = ""
        
        
        radarChartDataSet.colors = [UIColor(red: 230/255, green: 126/255, blue: 34/255, alpha: 1)]
        
        chartView.backgroundColor = UIColor.yellowColor()
    }
}
