//
//  ViewController.swift
//  test7
//
//  Created by Andrey Kedr on 09/01/2019.
//  Copyright © 2019 Andrey Kedr. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {
    
    var count = 0 {
        didSet {
            tabBarItem.badgeValue = "\(count)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(#function, tabBarController?.viewControllers?.count ?? "nil")
    }

    override func viewWillDisappear(_ animated: Bool) {
        count += 1
    }
    
    override func viewWillAppear(_ animated: Bool) {
        count += 1
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(#function)
    }
}

