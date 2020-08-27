//
//  ProfileTableViewCell.swift
//  MVVM Arc
//
//  Created by Johnnie Walker on 26.08.2020.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    // MARK: - Outlets
    @IBOutlet private weak var fullNameLabel: UILabel!
    @IBOutlet private weak var ageLabel: UILabel!
    
    // MARK: - Props
    // По сути, MVVM говорит, что у любого View должна быть ссылка на собственню ViewModel
    // Когда в следующий раз потребуется создать экземпляр нового View, нужно помнить, что она будет бесполезной без данных, которые нужно имплементировать в ее viewModel
    weak var viewModel: ProfileTableViewCellVMProtocol? {
        willSet(viewModel) {
            guard viewModel != nil else { return }
            fullNameLabel.text = viewModel?.fullName
            ageLabel.text = viewModel?.age
        }
    }
}
