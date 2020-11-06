//
//  SettingsTableViewController.swift
//  BarcodeReader
//
//  Created by osakamiseri on 2020/11/01.
//

import UIKit

class SettingsTableViewController: UITableViewController {
    
    //    設定項目 1.バージョン
    //    2.利用規約 3.ぷライバシーポリシー 4.ライセンス
    //    5.シェア 6.レビュー 7.マルシー
    
    class Item {
        var title : String

        init(title: String) {
            self.title = title
        }
    }
    
    private let cellId = "cellId"
    
    var itemArray: [Item] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let item1: Item = Item(title: "アプリ設定")
        let item2: Item = Item(title: "アカウント設定")
        let item3: Item = Item(title: "利用規約")
        let item4: Item = Item(title: "プライバシーポリシー")
        let item5: Item = Item(title: "レビューする")
        let item6: Item = Item(title: "シェアする")
        let item7: Item = Item(title: "お問い合わせ")
        
        itemArray.append(item1)
        itemArray.append(item2)
        itemArray.append(item3)
        itemArray.append(item4)
        itemArray.append(item5)
        itemArray.append(item6)
        itemArray.append(item7)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        let item = itemArray[indexPath.row]
        cell.textLabel?.text = item.title
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            
        }
        
    }
    
}
