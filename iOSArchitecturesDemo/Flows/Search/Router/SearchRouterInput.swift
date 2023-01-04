//
//  SearchRouterInput.swift
//  iOSArchitecturesDemo
//
//  Created by Алексей Артамонов on 04.01.2023.
//  Copyright © 2023 ekireev. All rights reserved.
//

import UIKit

protocol SearchRouterInput {
    func openDetails(for app: ITunesApp)
    func openAppInItunes(_ app:ITunesApp)
}

final class SearchRouter: SearchRouterInput {
    
    weak var viewController: UIViewController?
    
    func openDetails(for app: ITunesApp) {
        let appDetailViewController = AppUpdateViewController(app: app)
        self.viewController?.navigationController?.pushViewController(appDetailViewController,
                                                                      animated: true)
    }
    
    func openAppInItunes(_ app: ITunesApp) {
        guard let urlString = app.appUrl,
              let url = URL(string: urlString) else {
            return
        }
        
        UIApplication.shared.open(url, options: [:])
    }
}
