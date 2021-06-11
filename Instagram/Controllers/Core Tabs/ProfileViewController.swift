//
//  ProfileViewController.swift
//  Instagram
//
//  Created by dwKang on 2021/06/08.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        configureNavigationBar()
    }
    
    private func configureNavigationBar() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"),
                                                            style: .done,
                                                            target: self,
                                                            action: #selector(didTapSettingsButton))
    }
    
    @objc func didTapSettingsButton() {
        let vc = SettingsViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
