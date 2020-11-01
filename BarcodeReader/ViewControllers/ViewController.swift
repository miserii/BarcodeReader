//
//  ViewController.swift
//  BarcodeReader
//
//  Created by osakamiseri on 2020/10/31.
//

import UIKit

protocol ViewDelegate: class {
    func tappedSendButton(text: String)
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var cameraBurron: UIButton!
    
    @IBAction func tapedCamera(_ sender: UIButton) {
        self.present(BarCodeReaderViewController(), animated: true, completion: nil)
    }
    
    class Item {
        var barcode: String
        
        init(barcode: String) {
            self.barcode = barcode
        }
    }
    
    var barcodeList: [Item] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // アイテム追加処理
        barcodeList.insert(Item(barcode: "(例) バーコード1"), at: 0)
        barcodeList.insert(Item(barcode: "(例) バーコード2"), at: 1)
        barcodeList.insert(Item(barcode: "(例) バーコード3"), at: 2)
        
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
        return barcodeList.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 56
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellId", for: indexPath)
        let code = barcodeList[indexPath.row]
        cell.textLabel?.text = code.barcode
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        // アイテム削除処理
        barcodeList.remove(at: indexPath.row)
        let indexPaths = [indexPath]
        tableView.deleteRows(at: indexPaths, with: .automatic)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

