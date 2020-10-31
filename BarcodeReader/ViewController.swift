//
//  ViewController.swift
//  BarcodeReader
//
//  Created by osakamiseri on 2020/10/31.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func tapedCamera(_ sender: UIButton) {
        self.present(BarCodeReaderViewController(), animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

