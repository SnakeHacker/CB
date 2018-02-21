//
//  GuideContentViewController.swift
//  CB
//
//  Created by MickeyZhou on 2018/2/20.
//  Copyright © 2018年 MickeyZhou. All rights reserved.
//

import UIKit

class GuideContentViewController: UIViewController {

    @IBOutlet weak var topTitle: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var doneBtn: UIButton!
    @IBAction func experienceImmediately(_ sender: UIButton) {
//        let defaults = UserDefaults.standard
//        defaults.set(true, forKey: "GuideShowed")
        dismiss(animated: true, completion: nil)
    }
    
    var index = 0
    var heading = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topTitle.text = heading
        pageControl.currentPage = index
        doneBtn.isHidden = (index != 3)
        
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
