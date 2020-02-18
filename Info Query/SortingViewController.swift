//
//  SortingViewController.swift
//  Info Query
//
//  Created by abdallah shawky  on 2/17/20.
//  Copyright © 2020 abdallah shawky . All rights reserved.
//

import UIKit

class SortingViewController:UIViewController,UITableViewDelegate,UITableViewDataSource{
    let sortCriteria: [String] = ["اسم المندوب","حالة المعاملة","تاريخ الإنجاز"]
    @IBOutlet weak var sortingTableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        sortCriteria.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sort", for: indexPath)
        cell.textLabel?.textAlignment = .center
        cell.textLabel?.text = sortCriteria[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        dismiss(animated: true, completion: nil)

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sortingTableView.delegate = self
        sortingTableView.dataSource = self
    }
    
    
    
}
