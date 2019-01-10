//
//  YellowViewController.swift
//  test7
//
//  Created by Andrey Kedr on 10/01/2019.
//  Copyright © 2019 Andrey Kedr. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        guard let redVC = tabBarController?.viewControllers?.first as? RedViewController else {return}
        redVC.count += 1
        tabBarItem.badgeValue = "\(redVC.count)"
    }
    override func viewWillDisappear(_ animated: Bool) {
        guard let redVC = tabBarController?.viewControllers?.first as? RedViewController else {return}
        redVC.count += 1
        tabBarItem.badgeValue = "\(redVC.count)"
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
