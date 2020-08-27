//
//  ViewController.swift
//  MVVM Arc
//
//  Created by Johnnie Walker on 26.08.2020.
//

import UIKit

class ProfileViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet private weak var tableView: UITableView!
    
    // MARK: - Props
    // Экземпляр ViewModel должен предоставлять свойства и методы, которые будут использованы этим контроллером лишь для вывода данных в верстку
    // Далее мы инициализируем его во viewDidLoad
    var viewModel: ProfileViewVM?
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemIndigo
        
        viewModel = ProfileViewVM()
        
        setupView()
    }
    
    // MARK: - Setup
    func setupView() {
        
        self.navigationItem.title = "Profiles"
        
        tableView.dataSource = self
        tableView.delegate = self
        let nib = UINib(nibName: "ProfileTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "Cell")
        tableView.separatorStyle = .none
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

// MARK: - UITableViewDelegate
extension ProfileViewController: UITableViewDelegate { }
