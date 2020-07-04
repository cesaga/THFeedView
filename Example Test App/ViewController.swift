//
//  ViewController.swift
//  Example Test App
//
//  Created by Juan Andres Vasquez Ferrer on 5/11/20.
//  Copyright © 2020 Juan Andres Vasquez Ferrer. All rights reserved.
//

import UIKit
import THFeedView

class ViewController: UIViewController {
    
    var sectionsMock: [BaseSection] = []
    
    let sectionProvider = CustomSectionProvider()

    lazy var feedView: THFeedView = {
        let feedView = THFeedView(sectionProvider: self.sectionProvider)
        feedView.dataSource = self
        feedView.backgroundColor = .blue
        self.view.addSubview(feedView)
        return feedView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        sectionProvider.controller = self
        sectionsMock = Helpers.generateMocks()
        feedView.reloadData()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        feedView.frame = view.bounds
    }
}

extension ViewController: THFeedViewDataSource {
    
    func getSections(for feedView: THFeedView) -> [BaseSection] {
        return sectionsMock
    }
}

