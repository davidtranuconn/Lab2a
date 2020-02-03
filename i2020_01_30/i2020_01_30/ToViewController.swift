//
//  ToViewController.swift
//  i2020_01_30
//
//  Created by David Tran on 2/2/20.
//  Copyright © 2020 David Tran. All rights reserved.
//

import UIKit

class ToViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        if segue.destination is ViewController
        {
            let vc = segue.destination as? ViewController
            
            vc?.myMessage = "New info!"
        }
    }
}
