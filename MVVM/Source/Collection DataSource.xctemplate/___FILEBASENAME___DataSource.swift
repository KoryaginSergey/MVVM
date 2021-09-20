//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___ All rights reserved.
//

import UIKit

final class ___VARIABLE_sceneName___DataSource {

    // TODO: remove typealias or DataSource class from this file
    fileprivate typealias DataSource = UICollectionViewDiffableDataSource<___VARIABLE_sceneName___.Models.Section, ___VARIABLE_sceneName___.Models.Item>
    private typealias Snapshot = NSDiffableDataSourceSnapshot<___VARIABLE_sceneName___.Models.Section, ___VARIABLE_sceneName___.Models.Item>

    // MARK: - Properties
    private let collectionView: UICollectionView
    private lazy var dataSource = makeDataSource()

    // MARK: - Initializators
    init(collectionView: UICollectionView) {
        self.collectionView = collectionView
        collectionView.collectionViewLayout = makeLayout()
        collectionView.dataSource = dataSource
        makeSupplementaryProvider()
        registerReusable(in: collectionView)
    }

    // MARK: - Interface
    func updateSnapshot(_ items: [___VARIABLE_sceneName___.Models.Item], animated: Bool = true) {
        var snapshot = Snapshot()
        snapshot.appendSections([.main])
        snapshot.appendItems(items)
        dataSource.apply(snapshot, animatingDifferences: animated)
    }
}

// MARK: - Private
private extension ___VARIABLE_sceneName___DataSource {

    func registerReusable(in collectionView: UICollectionView) {
//        collectionView.register(cellType: MyCollectionCell.self)
//        collectionView.register(supplementaryViewType: MySectionView.self, ofKind: MySectionView.reuseIdentifier)
    }
}

// MARK: - DataSource
private extension ___VARIABLE_sceneName___DataSource {

    func makeDataSource() -> DataSource {
        DataSource(collectionView: collectionView) { collectionView, indexPath, item -> UICollectionViewCell? in
            switch item {
            }
        }
    }

    func makeSupplementaryProvider() {
        dataSource.supplementaryViewProvider = { [weak self] collectionView, kind, indexPath in
            return nil
//            guard let self = self else { return  nil }
//
//            let section = self.dataSource.snapshot().sectionIdentifiers[indexPath.section]
//            switch section {
//
//            }
        }
    }
}

// MARK: - Layout
private extension ___VARIABLE_sceneName___DataSource {

    func makeLayout() -> UICollectionViewCompositionalLayout {
        UICollectionViewCompositionalLayout { [weak self] index, _ -> NSCollectionLayoutSection? in
            return nil
        }
    }
}

// MARK: - DataSource class
//private extension ___VARIABLE_sceneName___DataSource {
//
//    final class DataSource: UICollectionViewDiffableDataSource<___VARIABLE_sceneName___.Models.Section, ___VARIABLE_sceneName___.Models.Item>,
//                            SkeletonCollectionViewDataSource {
//
//        func collectionSkeletonView(_ skeletonView: UICollectionView, cellIdentifierForItemAt indexPath: IndexPath) -> ReusableCellIdentifier {
//
//        }
//    }
//}
