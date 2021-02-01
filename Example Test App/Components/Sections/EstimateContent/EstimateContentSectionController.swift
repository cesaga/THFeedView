//
//  EstimateContentSectionController.swift
//  Example Test App
//
//  Created by Cesar on 01-02-21.
//  Copyright © 2021 Juan Andres Vasquez Ferrer. All rights reserved.
//

import Foundation
import UIKit
import THFeedView

struct EstimateContentModel: Hashable & Decodable {
    let id: String
    let price: Float
    let image_url: String
    let title: String
    let description: String
}

class EstimateContentSectionController: BaseSectionController<EstimateContentModel> {
    
    override func createCell(in collectionView: UICollectionView, indexPath: IndexPath, model: EstimateContentModel) -> UICollectionViewCell {
        
        let cell: EstimateContentCell = collectionView.dequeueReusableCell(indexPath: indexPath)
        cell.titleLabel.text = model.title
        return cell
    }
    
    override func createLayout(isWide: Bool) -> NSCollectionLayoutSection {
        THFeedLayouts.estimatedContentLayout()
    }
}


