//
//  UpdateCell.swift
//  iOSArchitecturesDemo
//
//  Created by Алексей Артамонов on 04.01.2023.
//  Copyright © 2023 ekireev. All rights reserved.
//

import UIKit

final class UpdateCell: UIView {
    
    // MARK: - Views
    
    private(set) lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font = UIFont.systemFont(ofSize: 20.0, weight: .bold)
        
        return titleLabel
    }()
    
    private(set) lazy var appVersion: UILabel = {
        let appVersion = UILabel()
        appVersion.translatesAutoresizingMaskIntoConstraints = false
        appVersion.font = UIFont.systemFont(ofSize: 16.0, weight: .thin)
        
        return appVersion
    }()
    
    private(set) lazy var updateDescription: UITextView = {
        let updateDescription = UITextView()
        updateDescription.translatesAutoresizingMaskIntoConstraints = false
        updateDescription.font = UIFont.systemFont(ofSize: 16.0, weight: .regular)
        
        return updateDescription
    }()
    
    private(set) lazy var dateUpdate: UILabel = {
        let dateUpdate = UILabel()
        dateUpdate.translatesAutoresizingMaskIntoConstraints = false
        dateUpdate.font = UIFont.systemFont(ofSize: 16.0, weight: .thin)
        
        return dateUpdate
    }()
    
    private(set) lazy var updateStory: UIButton = {
        let updateStory = UIButton()
        updateStory.translatesAutoresizingMaskIntoConstraints = false
        updateStory.titleLabel?.text = "История изменений"
        updateStory.titleLabel?.font = UIFont.systemFont(ofSize: 18.0, weight: .regular)
        
        return updateStory
    }()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setupLayout()
    }
    
    // MARK: - UI setup layouts
    
    private func setupLayout() {
        self.addSubview(titleLabel)
        self.addSubview(appVersion)
        self.addSubview(updateDescription)
        self.addSubview(dateUpdate)
        self.addSubview(updateStory)
        
        NSLayoutConstraint.activate([
            self.titleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor,
                                                 constant: 8.0),
            self.titleLabel.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor,
                                                  constant: 12.0),
            self.appVersion.topAnchor.constraint(equalTo: self.titleLabel.topAnchor,
                                                 constant: 8.0),
            self.appVersion.leftAnchor.constraint(equalTo: self.titleLabel.leftAnchor),
            self.updateDescription.topAnchor.constraint(equalTo: self.appVersion.topAnchor),
            self.updateDescription.leftAnchor.constraint(equalTo: self.appVersion.leftAnchor),
            self.dateUpdate.topAnchor.constraint(equalTo: self.appVersion.topAnchor),
            self.dateUpdate.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor,
                                                   constant: 12.0),
            self.updateStory.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor,
                                                  constant: 8.0),
            self.updateStory.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor,
                                                    constant: 12.0)
        ])
    }
}
