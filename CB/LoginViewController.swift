//
//  LoginViewController.swift
//  CB
//
//  Created by MickeyZhou on 2018/2/20.
//  Copyright © 2018年 MickeyZhou. All rights reserved.
//

import UIKit
import Pastel

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let pastelView = PastelView(frame: view.bounds)
        
        // Custom Direction
        pastelView.startPastelPoint = .bottomLeft
        pastelView.endPastelPoint = .topRight
        
        // Custom Duration
        pastelView.animationDuration = 3.0
        
        // Custom Color
        pastelView.setColors([UIColor(red: 220/255, green: 221/255, blue: 255/255, alpha: 1),
                              UIColor(red: 228/255, green: 159/255, blue: 232/255, alpha: 1),
                              UIColor(red: 255/255, green: 201/255, blue: 202/255, alpha: 1)])
        
        pastelView.startAnimation()
        view.insertSubview(pastelView, at: 0)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
