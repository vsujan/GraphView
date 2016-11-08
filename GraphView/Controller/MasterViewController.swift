//
//  MasterViewController.swift
//  GraphView
//
//  Created by Sujan Vaidya on 10/27/16.
//  Copyright © 2016 Sujan Vaidya. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func actionOne(sender: AnyObject) {
        pushToNavigationController(String(LineChartVC))
    }
    
    @IBAction func actionTwo(sender: AnyObject) {
        pushToNavigationController(String(LineChartVCWithAreaFillGradBg))
    }
    
    @IBAction func actionThree(sender: AnyObject) {
        pushToNavigationController(String(ChartTableViewController))
    }
    
    @IBAction func actionFour(sender: AnyObject) {
        pushToNavigationController(String(PieChartVC))
    }
    
    @IBAction func actionFive(sender: AnyObject) {
        pushToNavigationController(String(ScatteredChartVC))
    }
    
    @IBAction func actionSix(sender: AnyObject) {
        pushToNavigationController(String(RadarChartVC))
    }
    
    @IBAction func actionSeven(sender: AnyObject) {
        pushToNavigationController(String(CandleChartVC))
    }
    
    @IBAction func actionEight(sender: AnyObject) {
        pushToNavigationController(String(BubbleChartVC))
    }
    
    @IBAction func actionNine(sender: AnyObject) {
        pushToNavigationController(String(CombinedChartVC))
    }
    
    @IBAction func actionTen(sender: AnyObject) {
        pushToNavigationController(String(MultipleLineGraph))
    }
    
    @IBAction func avtionEleven(sender: AnyObject) {
        pushToNavigationController(String(GroupedPointsVC))
    }
    func pushToNavigationController(viewControllerName: String) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destinationVC = storyboard.instantiateViewControllerWithIdentifier(viewControllerName)
        self.navigationController?.pushViewController(destinationVC, animated: true)
    }
    

}
