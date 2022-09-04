//
//  ViewController.swift
//  Snowflake
//
//  Created by Damon on 2022/9/4.
//

import UIKit

class ViewController: UIViewController {

    let general = SnowflakeSwift(IDCID: 4, machineID: 30)
    
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
        print(Date().timeIntervalSince1970)
        for _ in 0..<1000000 {
            let id = general.nextID()
            if let id = id {
//                print(id)
//                print("time", general.time(id: id))
//                print("idc", general.IDC(id: id))
//                print("mat", general.machine(id: id))
            } else {
                print("general error")
            }
        }
        print(Date().timeIntervalSince1970)
    }

}

