//
//  Helpers.swift
//  Example Test App
//
//  Created by Juan Andres Vasquez Ferrer on 5/11/20.
//  Copyright © 2020 Juan Andres Vasquez Ferrer. All rights reserved.
//

import Foundation
import THFeedView

class Helpers {
    
    class func generateMocks() -> [BaseSection] {
        return [
            CustomSection(
                id: "id1",
                type: .trending,
                data: [
                    TrendingModel(id: "id1",
                                  image_url: "geek",
                                  title: "Geek",
                                  description: "Descubre")
                ]
            ),
            CustomSection(
                id: "id11",
                type: .quickReco,
                data: [
                    QuickRecomendationsSectionModel(
                        id: "id2",
                        price: 1000.0,
                        image_url: "laptop",
                        title: "Asus",
                        description: "laptop x409fb-ek016t"),
                    QuickRecomendationsSectionModel(
                                        id: "id3",
                                        price: 1000.0,
                                        image_url: "laptop2",
                                        title: "Asus",
                                        description: "laptop x409fb-ek016t"),
                    QuickRecomendationsSectionModel(
                                        id: "id4",
                                        price: 1000.0,
                                        image_url: "laptop",
                                        title: "Geek",
                                        description: "Descubre"),
                    QuickRecomendationsSectionModel(
                                        id: "id5",
                                        price: 1000.0,
                                        image_url: "laptop2",
                                        title: "Geek",
                                        description: "Descubre")
                ]
            )]
    }
}
