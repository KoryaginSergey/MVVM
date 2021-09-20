//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___ All rights reserved.
//

import UIKit

extension ___VARIABLE_sceneName___ {
    enum Assembly {}
}

extension ___VARIABLE_sceneName___.Assembly {
    static func createModule(with viewModel: ___VARIABLE_sceneName___ViewModelProtocol) -> UIViewController {
        let viewController = ___VARIABLE_sceneName___ViewController.instantiate()
        viewController.setDependencies(viewModel: viewModel)
        return viewController
    }
}
