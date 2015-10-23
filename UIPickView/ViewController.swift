//
//  ViewController.swift
//  UIPickView
//
//  Created by Deki on 15/10/23.
//  Copyright © 2015年 Deki. All rights reserved.
//
/**五个步骤
1  实例化UIPickView
2 让主视图遵循代理和数据源协议
3 实现数据源协议所需要的两个方法
4 实现代理协议所需要的一个方法
5 给实例设置代理和数据源

**/

import UIKit

class ViewController: UIViewController , UIPickerViewDataSource, UIPickerViewDelegate {
    // 声明pickview
    var picked:UIPickerView!

    override func viewDidLoad() {
        super.viewDidLoad()
        picked = UIPickerView(frame: CGRect(x: 160, y: 160, width: 70, height: 70))
        picked.center = view.center
        view.addSubview(picked)
        //  一定要设置数据源和代理
        picked.delegate = self
        picked.dataSource = self
        
    }
    
    // 设置pickview的列数
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        if pickerView == picked {
            return 1
        }
        return 0
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == picked {
            return 10
        }
        return 0
    }
    
    // 实现代理协议所实现的方法
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(row + 1)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

