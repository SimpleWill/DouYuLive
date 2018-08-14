//
//  ZJNavigationController.swift
//  DouYuLive
//
//  Created by 邓志坚 on 2018/7/25.
//  Copyright © 2018年 邓志坚. All rights reserved.
//

import UIKit

class ZJNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar.isTranslucent = false
        
        // 自定义导航栏背景颜色

        let view = self.navigationBar.subviews.first
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = kGradientColors
        //(这里的起始和终止位置就是按照坐标系,四个角分别是左上(0,0),左下(0,1),右上(1,0),右下(1,1))
        //渲染的起始位置
        gradientLayer.startPoint = CGPoint.init(x: 0, y: 0)
        //渲染的终止位置
        gradientLayer.endPoint = CGPoint.init(x: 1, y: 0)
        //设置frame和插入view的layer
        gradientLayer.frame = CGRect(x: 0, y: 0, width: kScreenW, height: kStatuHeight+kNavigationBarHeight)
        view?.layer.insertSublayer(gradientLayer, at: 1)

//        setStatusBarBackgroundColor()
    }
    
    //MARK: 重写跳转
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        if self.viewControllers.count>0 {
            
            viewController.hidesBottomBarWhenPushed = true //跳转之后隐藏
        }
        
        super.pushViewController(viewController, animated: true)
    }
    
    // 修改状态栏背景色为渐变色
    func setStatusBarBackgroundColor() {
        let statusBarWindow : UIView = UIApplication.shared.value(forKey: "statusBarWindow") as! UIView
        let statusBar : UIView = statusBarWindow.value(forKey: "statusBar") as! UIView
        if statusBar.responds(to:#selector(setter: UIView.backgroundColor)) {
            // 设置背景渐变
            let gradientLayer: CAGradientLayer = CAGradientLayer()
            gradientLayer.colors = kGradientColors
            //(这里的起始和终止位置就是按照坐标系,四个角分别是左上(0,0),左下(0,1),右上(1,0),右下(1,1))
            //渲染的起始位置
            gradientLayer.startPoint = CGPoint.init(x: 0, y: 0)
            //渲染的终止位置
            gradientLayer.endPoint = CGPoint.init(x: 1, y: 0)
            //设置frame和插入view的layer
            gradientLayer.frame = statusBar.frame
            statusBar.layer.insertSublayer(gradientLayer, at: 0)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
