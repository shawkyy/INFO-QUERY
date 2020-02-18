//
//  SearchViewController.swift
//  Info Query
//
//  Created by abdallah shawky  on 2/17/20.
//  Copyright © 2020 abdallah shawky . All rights reserved.
//

import UIKit

class SearchViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
 
    var processes:[String] = ["0","1","2"]
    @IBOutlet weak var searchTableView:UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        searchTableView.dataSource = self
        searchTableView.delegate = self 
        registerCell()
        searchTableView.reloadData()
    }
    func registerCell(){
        searchTableView.register(UINib(nibName: "InfoCell", bundle: nil), forCellReuseIdentifier: "InfoCell")
       }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        processes.count
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InfoCell", for: indexPath)
        return cell
     }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: "ProcessDetailsViewController") as! ProcessDetailsViewController
//        navigationController?.pushViewController(vc, animated: true)
        performSegue(withIdentifier: "details", sender: self)
    
    }
}
