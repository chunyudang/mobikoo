//
//  TestAViewController.swift
//  mobikoo
//
//  Created by dangchy on 2020/9/19.
//  Copyright © 2020 dangchy. All rights reserved.
//

import UIKit
 
class TestAViewController: UIViewController {
     
    //视图初始化
    override func loadView() {
        super.loadView()
        print("loadView")
    }
     
    //视图加载完成
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
         
        //创建跳转按钮
        let button:UIButton = UIButton(type:.contactAdd)
        button.frame = CGRect(x:10, y:50, width:100, height:30)
        button.setTitle("跳转",for:.normal)
        //button.addTarget(self, action:#selector(jump), for:.touchUpInside)
        button.addTarget(self, action:#selector(jump), for:.touchUpInside)
        self.view.addSubview(button);
    }
     
    //视图将要出现的时候执行
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
     
    //视图显示完成后执行
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
     
    //视图将要消失的时候执行
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
     
    //视图已经消失的时候执行
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
     
    //收到内存警告时执行
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
     
    //跳转到另一个视图
    @objc func jump(){
        print("点击按钮，开始跳转！")
//        let anotherVC = AnotherViewController()
//        presentViewController(anotherVC, animated: true, completion: nil)
    }
}
