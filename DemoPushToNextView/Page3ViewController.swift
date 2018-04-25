//
//  Page3ViewController.swift
//  DemoPushToNextView
//
//  Created by Chao Shin on 2018/4/25.
//  Copyright © 2018 Chao Shin. All rights reserved.
//

import UIKit

class Page3ViewController: UIViewController {
    
    @IBAction func popToRootButtonPress(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true) // 利用popToRootViewController()回到第一頁

/* 利用popToViewController()回到上一頁
        let count = self.navigationController!.viewControllers.count
        if let preController = self.navigationController?.viewControllers[count-2] {
            self.navigationController?.popToViewController(preController, animated: true)
        }
*/
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
