//
//  ViewController.swift
//  Delegate
//
//  Created by Амиргали Туралинов on 27.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
    }

    func showSecondVC() {
        let storyboard = UIStoryboard(name: "SecondVC", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SecondVC") as! SecondVC
        vc.delegate = self
        present(vc, animated: true)
    }
}


// MARK: - SecondScreenDelegate
extension ViewController: SecondScreenDelegate {
    func didEnterText(text: String?) {
        print(text)
    }
}

// MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
}

// MARK: - UITableViewDelegate
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected Row", indexPath.row)
    }
}
