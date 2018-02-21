//
//  ViewController.swift
//  CB
//
//  Created by MickeyZhou on 2018/2/20.
//  Copyright © 2018年 MickeyZhou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var guideShowed : Bool = false
    
    @IBAction func menuBtn(_ sender: UIBarButtonItem) {
        generateMenu()
    }
    
    func generateMenu(){
        let menuArray = [KxMenuItem.init("登录",image: UIImage(named: "login"),target: self,action: #selector(self.loginAccount)),KxMenuItem.init("扫一扫",image: UIImage(named: "scan"),target: self,action: #selector(self.clickMenu))]
        
        /*设置菜单字体*/
        KxMenu.setTitleFont(UIFont(name: "HelveticaNeue", size: 15))
        
        let options = OptionalConfiguration(arrowSize: 9,  //指示箭头大小
            marginXSpacing: 7,  //MenuItem左右边距
            marginYSpacing: 9,  //MenuItem上下边距
            intervalSpacing: 25,  //MenuItemImage与MenuItemTitle的间距
            menuCornerRadius: 6.5,  //菜单圆角半径
            maskToBackground: true,  //是否添加覆盖在原View上的半透明遮罩
            shadowOfMenu: false,  //是否添加菜单阴影
            hasSeperatorLine: true,  //是否设置分割线
            seperatorLineHasInsets: false,  //是否在分割线两侧留下Insets
            textColor: Color(R: 0, G: 0, B: 0),  //menuItem字体颜色
            menuBackgroundColor: Color(R: 1, G: 1, B: 1)  //菜单的底色
        )
        
        /*菜单位置*/
        let a = CGRect(x: self.view.frame.width-27, y: 70, width: 0, height: 0)
        KxMenu.show(in: self.view, from: a, menuItems: menuArray, withOptions: options)
    }
    
    /*菜单按钮点击事件*/
    @objc func clickMenu(){
        print("暂时扫不了")
    }
    @objc func loginAccount(){
        let loginVC = self.storyboard?.instantiateViewController(withIdentifier: "loginVC")
        self.present(loginVC!, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Thread.sleep(forTimeInterval: 1.0)
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //        let defaults = UserDefaults.standard
        //        if defaults.bool(forKey: "GuideShowed"){
        //            return
        //        }
        if guideShowed == true{
            return
        }
        if let pageVC = storyboard?.instantiateViewController(withIdentifier: "GuideController") as? GuideViewController{
            present(pageVC, animated: true, completion: nil)
        }
        guideShowed = true
    }
    
    @IBAction func accountLogCancel(segue: UIStoryboardSegue){
        
    }
}

