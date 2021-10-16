//
//  ViewController.swift
//  Swift_Training
//
//  Created by Taku Funakoshi on 2021/10/16.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var testView: Test!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //作ったテーブルビューに作ったセルを紐づける
        testView.testTableView.register(UINib(nibName: "testTableViewCell", bundle: nil), forCellReuseIdentifier: "testCell")
        testView.testTableView.dataSource = self
        testView.testTableView.delegate = self
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "testCell", for: indexPath) as? testTableViewCell
        else { return UITableViewCell() }
        cell.labelL.text = "lllll"
        cell.labelR.text = "rrrrr"
        return cell
    }
}

