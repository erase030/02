//
//  ViewController.swift
//  02
//
//  Created by dit08 on 2019. 4. 25..
//  Copyright © 2019년 dit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    var color = ["흰색","초록","노랑"]
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lbl.text = color[0]
    }
    @IBAction func btn(_ sender: Any) {
        if count != 2 {
            count += 1
        } else {
            count = 0
        }
        
        if count == 0 {
            view.backgroundColor = UIColor.white
        } else if count == 1 {
            view.backgroundColor = UIColor.green
        } else {
            view.backgroundColor = UIColor.yellow
        }
        
        lbl.text = color[count]
    }
}
