//
//  ViewController.swift
//  Navigation1to1
//
//  Created by SWUCOMPUTER on 3/25/19.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet var colaCyder: UISegmentedControl!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toOrderView" {
            let destVC = segue.destination as! OrderViewController
            
            let ordered: String! = colaCyder.titleForSegment(at: colaCyder.selectedSegmentIndex)
            
            destVC.title = ordered
            
            var outString: String = "감사합니다!!\n 주문내역: <"
            outString += ordered
            outString += ">, 맞나요?"
            destVC.info = outString
        }
    }

}

