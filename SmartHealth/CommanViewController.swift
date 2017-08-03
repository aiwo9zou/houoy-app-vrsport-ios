//
//  FirstViewController.swift
//  SmartHealth
//
//  Created by laoniu on 2017/08/02.
//  Copyright © 2017年 laoniu. All rights reserved.
//

import UIKit

class CommanViewController: UIViewController {
    
    var navigationShow:Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setNavigation(hidden:Bool, title:String) {
        self.navigationController?.delegate = self as? UINavigationControllerDelegate
        self.navigationController?.isNavigationBarHidden = hidden
        self.navigationController?.title = title
    }
    
    func setTabbar(hidden:Bool) {
        self.tabBarController?.hidesBottomBarWhenPushed = hidden
//        设置tabbar显示隐藏
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

