//
//  AppUpdateViewController.swift
//  iOSArchitecturesDemo
//
//  Created by Алексей Артамонов on 04.01.2023.
//  Copyright © 2023 ekireev. All rights reserved.
//

import UIKit

final class AppUpdateViewController: UIViewController {
    
    // MARK: - Private properties
    
    private let app: ITunesApp
    private var appUpdateView: AppUpdateView {
        return self.view as! AppUpdateView
    }
    
    // MARK: - Init
    
    init(app: ITunesApp) {
        self.app = app
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    
    override func loadView() {
        super.loadView()
        self.view = AppDetailHeaderView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fillData()
    }
    
    // MARK: - Private functions
    
    private func fillData() {
        self.appUpdateView.titleLabel.text = "Что нового"
        self.appUpdateView.updateDescription.text = "Пояснение..."
    }
    
}
