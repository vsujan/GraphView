//
//  CandleChartVC.swift
//  GraphView
//
//  Created by Sujan Vaidya on 10/28/16.
//  Copyright © 2016 Sujan Vaidya. All rights reserved.
//

import UIKit
import Charts

class CandleChartVC: UIViewController {
    @IBOutlet var chartView: CandleStickChartView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.title = String(CandleChartVC)
        let dataPoints: [Double] = [4, 3, 5, 6, 6, 7, 5, 3, 2, 4, 6, 4]
        drawLineChart(DataValues.months, values: dataPoints)
    }
    
    func drawLineChart(dataPoints: [String], values: [Double]) {
        chartView.noDataText = "You need to provide data for the chart."
        var dataEntries: [ChartDataEntry] = []
        for i in 0..<dataPoints.count {
            let dataEntry = CandleChartDataEntry(xIndex: i, shadowH: 5, shadowL: 5, open: values[i], close: values[i] + 2)
            dataEntries.append(dataEntry)
        }

        let candleChartDataSet = CandleChartDataSet(yVals: dataEntries, label: "Units Sold")
        let chartData = CandleChartData(xVals: DataValues.months, dataSet: candleChartDataSet)
        chartView.data = chartData
        chartView.descriptionText = ""
        
        
        candleChartDataSet.colors = [UIColor(red: 230/255, green: 126/255, blue: 34/255, alpha: 1)]
        
    }
}
