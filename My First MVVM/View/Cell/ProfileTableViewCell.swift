//
//  ProfileTableViewCell.swift
//  My First MVVM
//
//  Created by Johnnie Walker on 26.08.2020.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    @IBOutlet private weak var fullNameLabel: UILabel!
    @IBOutlet private weak var ageLabel: UILabel!
    
    weak var viewModel: ProfileTableViewCellViewModelProtocol? {
        willSet(viewModel) {
            guard let viewMode = viewModel else { return }
            fullNameLabel.text = viewModel?.fullName
            ageLabel.text = viewModel?.age
        }
    }
}
