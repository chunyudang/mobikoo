//
//  ViewController.swift
//  mobikoo
//
//  Created by dangchy on 2020/7/18.
//  Copyright © 2020 dangchy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //var label: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.addSubview(self.Mylabel());
        
        
        let button:UIButton = UIButton(type: UIButton.ButtonType.contactAdd)
        button.frame = CGRect(x:100, y:100, width:100, height:45)
        //设置按钮的背景颜色
        button.backgroundColor = UIColor.cyan
        //设置按钮的背景图片
        button.setBackgroundImage(UIImage(named:"background"),for:.normal)
        //对于Custom定制类型按钮，代码可简化为：
        //let button1 = UIButton(frame: CGRect(x:100, y:100, width:100, height:100))
        //设置按钮文字
        button.setTitle("点我一下", for:.normal)
        //设置button的点击事件
        //button.addTarget(self, action: #selector(ViewController.clickButton(_:)), for: UIControl.Event.touchUpInside)
        //button.addTarget(self,action:#selector(methodName), for: .touchUpInside)
        //button.addTarget(self, action:#selector(methodName), for: .touchUpInside)
        button.addTarget(self, action:#selector(someMethod(button:)), for:.touchUpInside)
        
        
        self.view.addSubview(button)
    }
    
    //上
    @objc func methodName() {
        print("tapped")
    }
    
    //下
    @objc func someMethod(button:UIButton) {
        print("你是谁啊，其实就是一个按钮")
    }
    
    func Mylabel() -> UILabel {
        //创建一个文本标签并设置它的frame
        let label = UILabel(frame: CGRect(x:10, y:50, width:200, height:200))
        //设置文本标签的字体颜色为黑色
        label.textColor = UIColor.red
        //设置文本标签的文字
        label.text = "我是萌萌哒"
        //设置文本标签的文本显示位置为居中，还可以居左(Left)、居右(Right)、合乎情理的(Justified)、自然的(Natural)
        label.textAlignment = .center
        //自适应字体大小
        label.adjustsFontSizeToFitWidth = true
        //设置字体大小
        label.font = UIFont.systemFont(ofSize: 16)
        //label.font = UIFont.boldSystemFont(ofSize: 16)
        //文本行数，为0就是自动换行
        label.numberOfLines = 0
        label.lineBreakMode = .byCharWrapping
        //lineBreakMode属性的枚举下面会详细介绍
        //是否能和用户交互
        label.isUserInteractionEnabled=true
        //文字是否可变，默认值是true
        label.isEnabled=true;
        //设置阴影颜色和偏移量
        //label.shadowColor = UIColor.blue
        //label.shadowOffset = CGSize(width:0.5, height:0.5)
        //设置是否高亮和高亮颜色
        //label.isHighlighted = true
        //label.highlightedTextColor = UIColor.red
        
        // lineBreakMode属性
        /*public enum NSLineBreakMode : Int {
         case byWordWrapping // Wrap at word boundaries, default
         case byCharWrapping // Wrap at character boundaries
         case byClipping // Simply clip
         case byTruncatingHead // Truncate at head of line: "...wxyz"
         case byTruncatingTail // Truncate at tail of line: "abcd..."
         case byTruncatingMiddle // Truncate middle of line:  "ab...yz"
         }*/
        return label;
    }
    
}

