//
//  AppUpdateView.swift
//  iOSArchitecturesDemo
//
//  Created by Алексей Артамонов on 04.01.2023.
//  Copyright © 2023 ekireev. All rights reserved.
//

import UIKit

// MARK: - AppUpdateView class

final class AppUpdateView: UIView {
    
    // MARK: - Properties
    
    let titleLabel = UILabel()
    let appVersion = UILabel()
    let updateDescription = UITextView()
    let dateUpdate = UILabel()
    let updateStory = UIButton()
    let mainView = UIView()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configureUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.configureUI()
    }
    
    // MARK: - Configure UI
    
    private func configureUI() {
        self.backgroundColor = .white
        self.addTitleLabel()
        self.addAppVersion()
        self.addUpdateDescription()
        self.addDateUpdate()
        self.addUpdateStory()
    }
    
    private func addTitleLabel() {
        self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.titleLabel.textColor = .black
        self.mainView.addSubview(self.titleLabel)
    }
    
    private func addAppVersion() {
        self.appVersion.translatesAutoresizingMaskIntoConstraints = false
        self.appVersion.textColor = .lightGray
        self.mainView.addSubview(self.appVersion)
    }
    
    private func addUpdateDescription() {
        self.updateDescription.translatesAutoresizingMaskIntoConstraints = false
        self.updateDescription.textColor = .black
        self.updateDescription.textAlignment = .left
        self.mainView.addSubview(self.updateDescription)
    }
    
    private func addDateUpdate() {
        self.dateUpdate.translatesAutoresizingMaskIntoConstraints = false
        self.dateUpdate.textColor = .lightGray
        self.mainView.addSubview(self.dateUpdate)
    }
    
    private func addUpdateStory() {
        self.updateStory.translatesAutoresizingMaskIntoConstraints = false
        self.updateStory.titleLabel?.textColor = .blue
        self.mainView.addSubview(self.updateStory)
    }
    
    // MARK: - Setup constraints
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            self.mainView.heightAnchor.constraint(equalToConstant: 100.0)
        ])
    }
}
