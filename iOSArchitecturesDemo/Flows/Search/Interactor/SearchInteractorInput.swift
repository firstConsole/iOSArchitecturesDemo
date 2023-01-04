//
//  SearchInteractorInput.swift
//  iOSArchitecturesDemo
//
//  Created by Алексей Артамонов on 04.01.2023.
//  Copyright © 2023 ekireev. All rights reserved.
//

import Alamofire

protocol SearchInteractorInput {
    func requestApps(with query: String,
                     completion: @escaping (Result<[ITunesApp]>) -> Void)
}

final class SearchInteractor: SearchInteractorInput {
    let searchService = ITunesSearchService()
    
    func requestApps(with query: String,
                     completion: @escaping (Result<[ITunesApp]>) -> Void) {
        searchService.getApps(forQuery: query, then: completion)
    }
}
