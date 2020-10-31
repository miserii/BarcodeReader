//
//  ViewController.swift
//  BarcodeReader
//
//  Created by osakamiseri on 2020/10/31.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var cameraBurron: UIButton!
    
    @IBAction func tapedCamera(_ sender: UIButton) {
        self.present(BarCodeReaderViewController(), animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()
        tableView.delegate = self
        tableView.dataSource = self
        
        cameraBurron.layer.cornerRadius = cameraBurron.frame.width / 2
        cameraBurron.layer.shadowColor = UIColor.darkGray.cgColor
        cameraBurron.layer.shadowOffset = CGSize(width: 0, height: 3)
        cameraBurron.layer.shadowOpacity = 0.7
        cameraBurron.layer.shadowRadius = 10
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellId", for: indexPath)
        cell.backgroundColor = UIColor.lightGray
        return cell
    }
    
}

