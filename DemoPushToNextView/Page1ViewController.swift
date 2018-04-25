//
//  Page1ViewController.swift
//  DemoPushToNextView
//
//  Created by Chao Shin on 2018/4/25.
//  Copyright © 2018 Chao Shin. All rights reserved.
//

import UIKit

class Page1ViewController: UIViewController {
    
    @IBAction func pushButtonPress(_ sender: UIButton) {
        if let controller = storyboard?.instantiateViewController(withIdentifier: "Page2") as? Page2ViewController { // 利用as? 轉型為 Page2ViewController
            controller.buttonText = "I will be back." // 利用property方式修改Page2ViewController的property
            navigationController?.pushViewController(controller, animated: true) // 顯示下一個畫面
        }
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
