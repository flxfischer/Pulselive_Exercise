//
//  ViewController.swift
//  PulseExercise
//
//  Created by Felix Fischer on 09.02.19.
//  Copyright © 2019 Felix Fischer. All rights reserved.
//

import UIKit

class ArticleListViewController: UIViewController {

    @IBOutlet private var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ArticleListViewController: UITableViewDelegate {
    
}

extension ArticleListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

