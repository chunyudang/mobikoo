//
//  RootTabBarController.swift
//  SwiftDemo
//
//  Created by sam   on 2020/4/7.
//  Copyright © 2020 sam  . All rights reserved.
//

import UIKit

class RootTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        creatSubViewControllers()
    }
    
    func setupUI(){
        
        let color: UIColor = .blue
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor : color], for: UIControl.State.selected)
        self.tabBar.barTintColor = .white
    }
    
    func creatSubViewControllers(){
        let vc1  = HomeViewController ()
        let navc1 = RootNavigationViewController(rootViewController: vc1)
        
        let item1 : UITabBarItem = UITabBarItem (title: "首页", image: UIImage(named: "shouyehui")?.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named: "shouye")?.withRenderingMode(.alwaysOriginal))
        navc1.tabBarItem = item1
        
        let vc2 = MessageViewController()
        let navc2 = RootNavigationViewController(rootViewController: vc2)
        let item2 : UITabBarItem = UITabBarItem (title: "消息", image: UIImage(named: "xiaoxihui")?.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named: "xiaoxi")?.withRenderingMode(.alwaysOriginal))
        navc2.tabBarItem = item2
        
        let vc3 = CommunityViewController()
        let navc3 = RootNavigationViewController(rootViewController: vc3)
        let item3 : UITabBarItem = UITabBarItem (title: "社区", image: UIImage(named: "huanzhehui")?.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named: "huanzhe")?.withRenderingMode(.alwaysOriginal))
        navc3.tabBarItem = item3
        
        let vc4 = MineViewController()
        let navc4 = RootNavigationViewController(rootViewController: vc4)
        let item4 : UITabBarItem = UITabBarItem (title: "我的", image: UIImage(named: "wodehui")?.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named: "wode")?.withRenderingMode(.alwaysOriginal))
        navc4.tabBarItem = item4
        
        let tabArray = [navc1, navc2, navc3, navc4]
        self.viewControllers = tabArray
    }
}
