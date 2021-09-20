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
    fileprivate typealias DataSource = UITableViewDiffableDataSource<___VARIABLE_sceneName___.Models.Section, ___VARIABLE_sceneName___.Models.Item>
    private typealias Snapshot = NSDiffableDataSourceSnapshot<___VARIABLE_sceneName___.Models.Section, ___VARIABLE_sceneName___.Models.Item>

    // MARK: - Properties
    private let tableView: UITableView
    private lazy var dataSource = makeDataSource()

    // MARK: - Initializators
    init(tableView: UITableView) {
        self.tableView = tableView
        tableView.dataSource = dataSource
        registerReusable(in: tableView)
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

    func registerReusable(in tableView: UITableView) {
//        tableView.register(cellType: MyTableCell.self)
    }
}

// MARK: - DataSource
private extension ___VARIABLE_sceneName___DataSource {

    func makeDataSource() -> DataSource {
        let source = DataSource(tableView: tableView) { tableView, indexPath, item -> UITableViewCell? in
            switch item {
            }
        }
        source.defaultRowAnimation = .fade
        return source
    }
}

// MARK: - DataSource class
//private extension ___VARIABLE_sceneName___DataSource {
//
//    final class DataSource: UITableViewDiffableDataSource<___VARIABLE_sceneName___.Models.Section, ___VARIABLE_sceneName___.Models.Item>,
//                            SkeletonTableViewDataSource {
//
//        func collectionSkeletonView(_ skeletonView: UITableView, cellIdentifierForRowAt indexPath: IndexPath) -> ReusableCellIdentifier {
//
//        }
//    }
//}
