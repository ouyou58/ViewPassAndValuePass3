//
//  ViewController.swift
//  ViewJumpAndValuePass3
//
//  Created by ouyou on 2019/06/09.
//  Copyright © 2019 ouyou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var str = "我要把这句话传递到下一个界面"
    let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "second")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.lightGray
        
        let label = UILabel(frame: CGRect(x: 100, y: 100, width: 300, height: 50))
        label.backgroundColor = UIColor.yellow
        label.text = str
        
        
        let button = UIButton(frame: CGRect(x: 100, y: 200, width: 200, height: 50))
        button.setTitle("跳转到下一个界面", for: .normal)
        button.backgroundColor = UIColor.red
        
        button.setTitleColor(UIColor.black, for: .normal)
        
        button.addTarget(self, action: #selector(gotoSecondView), for: .touchUpInside)
        
        self.view.addSubview(label)
        self.view.addSubview(button)
        
        
    }
    
    @objc func gotoSecondView(){
       self.present(viewController, animated: true, completion: nil)
    }

}

/*方法三：第一个界面是代码，第二个界面是storyboard
 界面跳转：获得故事版中的viewcontroller（14行代码是获得故事版中的viewcontroller）
 值传递：查了好久都没找到x实现的方法
 */
