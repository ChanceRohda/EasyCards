//
//  ViewController.swift
//  EasyCards
//
//  Created by Chance Rohda on 6/26/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var setName: UILabel!
    @IBOutlet weak var setListTableView: UITableView!
    var setNames : [String] = ["Set 1"]
    let cellReuseIdentifier = "setCell"
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setListTableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        setListTableView.delegate = self
        setListTableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return setNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell = (self.setListTableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell?)!
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        return
    }
    
    @IBAction func didTapEditButton(_ sender: Any) {
    }
    
    @IBAction func didTapSelectButton(_ sender: Any) {
    }
}

