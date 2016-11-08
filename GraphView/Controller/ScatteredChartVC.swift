//
//  ScatteredChartVC.swift
//  GraphView
//
//  Created by Sujan Vaidya on 10/28/16.
//  Copyright © 2016 Sujan Vaidya. All rights reserved.
//

import UIKit
//import Charts

class ScatteredChartVC: UIViewController {
    @IBOutlet var chartView: ScatterChartView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.title = String(describing: ScatteredChartVC)
        drawLineChart(DataValues.months, values: DataValues.unitSold)
    }
    
    func drawLineChart(_ dataPoints: [String], values: [Double]) {
        chartView.noDataText = "You need to provide data for the chart."
        var dataEntries: [ChartDataEntry] = []
        for i in 0..<dataPoints.count {
            let dataEntry = ChartDataEntry(value: values[i], xIndex: i)
            dataEntries.append(dataEntry)
        }
        
        let scatteredChartDataSet = ScatterChartDataSet(yVals: dataEntries, label: "Units Sold")
        let chartData = ScatterChartData(xVals: DataValues.months, dataSet: scatteredChartDataSet)
        chartView.data = chartData
        chartView.descriptionText = ""
        
        scatteredChartDataSet.scatterShape = .Triangle
        scatteredChartDataSet.scatterShapeSize = 50
        scatteredChartDataSet.colors = [UIColor.redColor()]
        
        chartView.legend.colors = [UIColor.redColor()]
    }
}
