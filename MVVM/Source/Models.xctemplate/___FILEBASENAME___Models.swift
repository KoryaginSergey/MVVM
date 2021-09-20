//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___ All rights reserved.
//

import Foundation
import Combine

enum ___VARIABLE_sceneName___ {}

extension ___VARIABLE_sceneName___ {
    enum Models {}
}

// MARK: - Models View Input/Output
extension ___VARIABLE_sceneName___.Models {

    // MARK: Input
    struct ViewModelInput {
        let onLoad: AnyPublisher<Void, Never>
    }

    // MARK: Output
    enum ViewState: Equatable {
        case idle
        case loading
        case loaded
        case empty
        case failure
    }

    enum ViewAction {
    }

    enum ViewRoute {
    }
}

// MARK: - Scene Models
//extension ___VARIABLE_sceneName___.Models {
//
//    // MARK: List Models
//    enum Section: Hashable {
//        case main
//    }
//
//    enum Item: Hashable {
//    }
//}
