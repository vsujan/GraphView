//
//  CellWithGradientLineGraph.swift
//  ChartTest4
//
//  Created by Sujan Vaidya on 10/27/16.
//  Copyright © 2016 Leapfrog. All rights reserved.
//

import UIKit
import Charts

class CellWithGradientLineGraph: UITableViewCell {
    @IBOutlet weak var gradientView: UIView!
    @IBOutlet weak var chartView: LineChartView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let gradientLayer = getGradientLayer()
        gradientView.layer.insertSublayer(gradientLayer, atIndex: 0)
    }
    
    func drawLineChart(dataPoints: [String], values: [Double]) {
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
        
        lineChartDataSet.drawFilledEnabled = true
        let areaFill = ChartFill(color: UIColor.greenColor())
        lineChartDataSet.fill = areaFill
        
        chartView.backgroundColor = UIColor.clearColor()//UIColor(red: 189/255, green: 195/255, blue: 199/255, alpha: 1)
        chartView.gridBackgroundColor = UIColor.greenColor()
        
        
        
        lineChartDataSet.circleColors = [UIColor(red: 230/255, green: 126/255, blue: 34/255, alpha: 1)]
        lineChartDataSet.circleHoleColor = UIColor.redColor()
        //        lineChartDataSet.mode = .CubicBezier
        
        chartView.userInteractionEnabled = false
    }
    
    func getGradientLayer() -> CALayer {
        GradientHandler.bounds = gradientView.bounds
        GradientHandler.colors = Colors.Gradient.blueGradient
        GradientHandler.location = [0.10, 0.30, 0.45, 0.60, 0.75, 0.9]
        GradientHandler.startPosition = CGPoint(x: 0, y: 1)
        GradientHandler.endPosition = CGPoint(x: 1, y: 0)
        return GradientHandler.addGradientLayer()
        
        
        //        self.view.layer.insertSublayer(GradientHandler.addGradientLayer(), atIndex: 0)
        //
        //        GradientHandler.toColors = GradientHandler.colors
        //        GradientHandler.animateLayerWithColor()
    }

}
