//
//  AddListViewController.swift
//  TableViewApp
//
//  Created by 坪川和生 on 2021/10/31.
//

import UIKit

class AddListViewController: UIViewController {
    
    @IBOutlet weak var addTextField: UITextField!
    var taskArray: [String] = [] //追加したリストを格納する
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let userDefaults = UserDefaults.standard
        if userDefaults.object(forKey: "add") != nil {
            taskArray = userDefaults.object(forKey: "add") as! [String]
        }
    }
    
    @IBAction func addTask(_ sender: Any) {
        
        let userDefaults = UserDefaults.standard //変数に入れる
        //taskArray.append(addTextField.text!) //textFieldで入力されたテキストを入れる
        
        if (addTextField.text! != "") {
            taskArray.append(addTextField.text!)
        }
        
        userDefaults.set(taskArray, forKey: "add") //キーAddで配列をUserDefaultsに保存
        
        self.navigationController?.popViewController(animated: true) //ボタンが押されたら1つ前の画面に戻る雛形みたいなもん
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
