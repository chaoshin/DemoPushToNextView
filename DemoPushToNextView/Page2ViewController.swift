//
//  Page2ViewController.swift
//  DemoPushToNextView
//
//  Created by Chao Shin on 2018/4/25.
//  Copyright © 2018 Chao Shin. All rights reserved.
//

import UIKit

class Page2ViewController: UIViewController {
    var buttonText: String?
    
    @IBOutlet weak var backButton: UIButton!
    
    @IBAction func goToPage3ButtonPress(_ sender: UIButton) {
        if let controller = storyboard?.instantiateViewController(withIdentifier: "Page3") {
            navigationController?.pushViewController(controller, animated: true)
        }
    }
    
    @IBAction func backButtonPress(_ sender: UIButton) {
         navigationController?.popViewController(animated: true)  //使用pop回到上一頁
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let title = buttonText {
            backButton.setTitle(title, for: .normal) // 更新Button Title
        }
        

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
