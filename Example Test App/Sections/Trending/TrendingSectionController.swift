//
//  TrendingSectionController.swift
//  Example Test App
//
//  Created by Juan Andres Vasquez Ferrer on 5/11/20.
//  Copyright © 2020 Juan Andres Vasquez Ferrer. All rights reserved.
//

import Foundation
import UIKit
import THFeedView

struct TrendingModel: Codable & Hashable {
    let id: String
    let image_url: String
    let title: String
    let description: String
}

class TrendingSectionController: BaseSectionController<TrendingModel> {
    
    override func createCell(in collectionView: UICollectionView, indexPath: IndexPath, model: TrendingModel) -> UICollectionViewCell {
        
        let cell: TrendingCell = collectionView.dequeueReusableCell(indexPath: indexPath)
        cell.backgroundColor = .red
        return cell
    }
    
    override func createLayout(isWide: Bool) -> NSCollectionLayoutSection {
        THFeedLayouts.fullWindowLayout(isWide: isWide)
    }
}

extension TrendingSectionController: SectionSupplementaryView {
    func layoutBoundarySuplementaryView() -> [NSCollectionLayoutBoundarySupplementaryItem] {
        
        let size = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1.0),
            heightDimension: .estimated(44.0)
        )

        let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
            layoutSize: size,
            elementKind:  UICollectionView.elementKindSectionHeader,
            alignment: .top
        )
        
        return [sectionHeader]
    }

    func createSupplementaryView(in collectionView: UICollectionView, kind: String, indexPath: IndexPath) -> UICollectionReusableView? {
                
        let header: TitleHeaderView = collectionView.dequeueReusableView(indexPath: indexPath, supplementaryViewOfKind: kind)
        
        header.label.text = self.section.sectionType
        return header
    }
}
