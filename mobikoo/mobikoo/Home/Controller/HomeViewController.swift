//
//  HomeViewController.swift
//  mobikoo
//
//  Created by dangchy on 2020/9/19.
//  Copyright © 2020 dangchy. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationItem.title = "首页"
        self.view.backgroundColor = UIColor.white
        self.view.addSubview(mLabel)
        self.view.addSubview(mButton)
        
        //self.view.addSubview(button)
        //test
        //printAndCount(string: "hello, world")
        //printWithoutCounting(string: "hello, world")
        if let bounds = minMax(array: [-8, -6, 2, 109, 3, 71]){
            print("min is \(bounds.min) and max is \(bounds.max)")
        }
        
        print(arithmeticMean(1,2,3,4,5))
    }
    
    //上
    @objc func methodName() {
        print("tapped")
    }
    
    //下
    @objc func someMethod(button:UIButton) {
        print("你是谁啊，其实就是一个按钮")
    }
    
    //    func mMylabel() -> UILabel {
    //
    //    }
    
    
    func printAndCount(string: String) -> Int {
        print(string)
        return string.count
    }
    
    func printWithoutCounting(string: String){
        let _ = printAndCount(string: string)
    }
    
    func minMax(array: [Int]) -> (min: Int, max: Int)? {
        if array.isEmpty { return nil}
        var currentMin = array[0]
        var currentMax = array[0]
        for value in array {
            if value < currentMin {
                currentMin = value
            } else if value > currentMax {
                currentMax = value
            }
        }
        return (currentMin, currentMax)
    }
    
    func arithmeticMean(_ numbers: Double...) -> Double {
        var total: Double = 0
        for number in numbers {
            total += number
        }
        return total/Double(numbers.count)
    }
    
    
    lazy var mLabel: UILabel = {
        //创建一个文本标签并设置它的frame
        let mLabel = UILabel(frame: CGRect(x:10, y:50, width:200, height:200))
        //设置文本标签的字体颜色为黑色
        mLabel.textColor = UIColor.red
        //设置文本标签的文字
        mLabel.text = "我是萌萌哒"
        //设置文本标签的文本显示位置为居中，还可以居左(Left)、居右(Right)、合乎情理的(Justified)、自然的(Natural)
        mLabel.textAlignment = .center
        //自适应字体大小
        mLabel.adjustsFontSizeToFitWidth = true
        //设置字体大小
        mLabel.font = UIFont.systemFont(ofSize: 16)
        //label.font = UIFont.boldSystemFont(ofSize: 16)
        //文本行数，为0就是自动换行
        mLabel.numberOfLines = 0
        mLabel.lineBreakMode = .byCharWrapping
        //lineBreakMode属性的枚举下面会详细介绍
        //是否能和用户交互
        mLabel.isUserInteractionEnabled=true
        //文字是否可变，默认值是true
        mLabel.isEnabled=true;
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
        return mLabel;
    }()
    
    lazy var mButton:UIButton={
        let mButton:UIButton = UIButton(type:.contactAdd)
        mButton.frame = CGRect(x:100, y:200, width:100, height:45)
        //设置按钮的背景颜色
        mButton.backgroundColor = UIColor.cyan
        //设置按钮的背景图片
        mButton.setBackgroundImage(UIImage(named:"background"),for:.normal)
        //对于Custom定制类型按钮，代码可简化为：
        //let button1 = UIButton(frame: CGRect(x:100, y:100, width:100, height:100))
        //设置按钮文字
        mButton.setTitle("点我一下", for:.normal)
        //设置button的点击事件
        //button.addTarget(self, action: #selector(ViewController.clickButton(_:)), for: UIControl.Event.touchUpInside)
        //button.addTarget(self,action:#selector(methodName), for: .touchUpInside)
        //button.addTarget(self, action:#selector(methodName), for: .touchUpInside)
        mButton.addTarget(self, action:#selector(someMethod(button:)), for:.touchUpInside)
        
        return mButton
    }()
}
