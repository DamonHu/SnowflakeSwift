//
//  ViewController.swift
//  Snowflake
//
//  Created by Damon on 2022/9/4.
//

import UIKit

class ViewController: UIViewController {

    let general = SnowflakeSwift(IDCID: 10, machineID: 10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        button.backgroundColor = UIColor.blue
        button.setTitle("开始生成", for: .normal)
        button.addTarget(self, action: #selector(_general), for: .touchUpInside)
        self.view.addSubview(button)
    }

    @objc func _general() {
        for i in 0..<6 {
            print(general.nextID())
        }
    }

}

