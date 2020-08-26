//
//  ViewController.swift
//  My First MVVM
//
//  Created by Johnnie Walker on 26.08.2020.
//

import UIKit

class ProfileViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet private weak var tableView: UITableView!
    
    // MARK: - Props
    var viewModel: ProfileViewViewModel?

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = ProfileViewViewModel()
        
        setupView()
    }
    
    // MARK: - Setup
    func setupView() {
        
        tableView.register(ProfileTableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.dataSource = self
    }

}

// MARK: - UITableViewDataSource
extension ProfileViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel?.numberOfRows() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? ProfileTableViewCell, let viewModel = viewModel else { return UITableViewCell() }
        
        let cellModel = viewModel.cellViewModel(forIndexPath: indexPath)
        
        cell.viewModel = cellModel
        
        return cell
    }
}
