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
    
    @IBAction func actionOne(_ sender: AnyObject) {
        pushToNavigationController(String(describing: LineChartVC))
    }
    
    @IBAction func actionTwo(_ sender: AnyObject) {
        pushToNavigationController(String(describing: LineChartVCWithAreaFillGradBg))
    }
    
    @IBAction func actionThree(_ sender: AnyObject) {
        pushToNavigationController(String(describing: ChartTableViewController))
    }
    
    @IBAction func actionFour(_ sender: AnyObject) {
        pushToNavigationController(String(describing: PieChartVC))
    }
    
    @IBAction func actionFive(_ sender: AnyObject) {
        pushToNavigationController(String(describing: ScatteredChartVC))
    }
    
    @IBAction func actionSix(_ sender: AnyObject) {
        pushToNavigationController(String(describing: RadarChartVC))
    }
    
    @IBAction func actionSeven(_ sender: AnyObject) {
        pushToNavigationController(String(describing: CandleChartVC))
    }
    
    @IBAction func actionEight(_ sender: AnyObject) {
        pushToNavigationController(String(describing: BubbleChartVC))
    }
    
    @IBAction func actionNine(_ sender: AnyObject) {
        pushToNavigationController(String(describing: CombinedChartVC))
    }
    
    @IBAction func actionTen(_ sender: AnyObject) {
        pushToNavigationController(String(describing: MultipleLineGraph))
    }
    
    @IBAction func avtionEleven(_ sender: AnyObject) {
        pushToNavigationController(String(describing: GroupedPointsVC))
    }
    func pushToNavigationController(_ viewControllerName: String) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destinationVC = storyboard.instantiateViewController(withIdentifier: viewControllerName)
        self.navigationController?.pushViewController(destinationVC, animated: true)
    }
    

}
