//
//  ViewController.swift
//  AlternateIcon
//
//  Created by guoxmei on 2018/2/1.
//  Copyright © 2018年 huayang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func changeBlueIcon(_ sender: Any) {
        
        if UIApplication.shared.supportsAlternateIcons {
            print("支持切换 icon 图标")
            UIApplication.shared.setAlternateIconName("blue-icon", completionHandler: nil)
        }
    }
    
    @IBAction func changeGreenIcon(_ sender: Any) {
        
        if UIApplication.shared.supportsAlternateIcons {
            print("支持切换 icon 图标")
            UIApplication.shared.setAlternateIconName("green-icon", completionHandler: { error in
                print("nothing")
            })
            //"green-icon"为 Info.plist 文件中,CFBundleAlternateIcons对应字典中的 key 值
            //CFBundleIconFiles 为一个数组,保存图片名称的字符串
        }
    }
    
    
    @IBAction func resetIcon(_ sender: Any) {
        
        if UIApplication.shared.supportsAlternateIcons {
            print("支持切换回默认 icon")
            UIApplication.shared.setAlternateIconName(nil, completionHandler: nil)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

