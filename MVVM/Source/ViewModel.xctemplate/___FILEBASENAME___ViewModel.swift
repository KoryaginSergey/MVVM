//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___ All rights reserved.
//

import Foundation
import Combine

protocol ___VARIABLE_sceneName___ViewModelProtocol: AnyObject {
    var viewState: AnyPublisher<___VARIABLE_sceneName___.Models.ViewState, Never> { get }
    var viewAction: AnyPublisher<___VARIABLE_sceneName___.Models.ViewAction, Never> { get }
    var route: AnyPublisher<___VARIABLE_sceneName___.Models.ViewRoute, Never> { get }

    func process(input: ___VARIABLE_sceneName___.Models.ViewModelInput)
}

final class ___VARIABLE_sceneName___ViewModel {
    
    // MARK: - Properties
//    @Injected(container: .shared)
//    private var hapticService: HapticFeedbackServiceProtocol
    
    private let viewStateSubj = CurrentValueSubject<___VARIABLE_sceneName___.Models.ViewState, Never>(.idle)
    private let viewActionSubj = PassthroughSubject<___VARIABLE_sceneName___.Models.ViewAction, Never>()
    private let routeSubj = PassthroughSubject<___VARIABLE_sceneName___.Models.ViewRoute, Never>()
    
    private var subscriptions = Set<AnyCancellable>()
}

// MARK: - ___VARIABLE_sceneName___ViewModelProtocol
extension ___VARIABLE_sceneName___ViewModel: ___VARIABLE_sceneName___ViewModelProtocol {

    var viewState: AnyPublisher<___VARIABLE_sceneName___.Models.ViewState, Never> { viewStateSubj.eraseToAnyPublisher() }
    var viewAction: AnyPublisher<___VARIABLE_sceneName___.Models.ViewAction, Never> { viewActionSubj.eraseToAnyPublisher() }
    var route: AnyPublisher<___VARIABLE_sceneName___.Models.ViewRoute, Never> { routeSubj.eraseToAnyPublisher() }
    
    func process(input: ___VARIABLE_sceneName___.Models.ViewModelInput) {
//        input.onLoad.sink { [weak self] _ in
//            self?.fetch()
//        }.store(in: &subscriptions)
    }
}

// MARK: - Private
private extension ___VARIABLE_sceneName___ViewModel {
//    func fetch() {
//        viewStateSubj.send(.loading)
//        service.fetch.sink { [weak self] result in
//            guard let self = self else { return }
//            switch result {
//            case .success([]):
//                self.viewStateSubj.send(.empty)
//            case let .success(items):
//                self.viewStateSubj.send(.loaded(items)
//            case let .failure(error):
//                self.viewStateSubj.send(.failure(error)
//            }
//        }.store(in: &subscriptions)
//    }
}
