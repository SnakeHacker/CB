//
//  GuideViewController.swift
//  CB
//
//  Created by MickeyZhou on 2018/2/19.
//  Copyright © 2018年 MickeyZhou. All rights reserved.
//

import UIKit

class GuideViewController: UIPageViewController,UIPageViewControllerDataSource {
    var heading = ["导航页1","导航页2","导航页3","导航页4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        dataSource = self
        if let startVC = vc(atIndex : 0){
            setViewControllers([startVC], direction: .forward, animated: true, completion: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! GuideContentViewController).index
        index -= 1
        return vc(atIndex : index)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! GuideContentViewController).index
        index += 1
        return vc(atIndex : index)
    }
    
    func vc(atIndex : Int) -> GuideContentViewController? {
        if case 0..<heading.count = atIndex{
            if let contentVC = storyboard?.instantiateViewController(withIdentifier : "GuideContentController") as? GuideContentViewController{
                contentVC.heading = heading[atIndex]
                contentVC.index = atIndex
                return contentVC
            }
        }
        return nil
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

