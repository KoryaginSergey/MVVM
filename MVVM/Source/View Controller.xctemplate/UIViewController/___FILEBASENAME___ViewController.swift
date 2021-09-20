//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___ All rights reserved.
//

import UIKit
import Combine

final class ___VARIABLE_sceneName___ViewController: UIViewController, StoryboardBased {

    // MARK: - Properties
    private var viewModel: ___VARIABLE_sceneName___ViewModelProtocol?
    private let onLoad = PassthroughSubject<Void, Never>()

    public var subscriptions = Set<AnyCancellable>()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        bind(to: viewModel)
        onLoad.send(())
    }
}

// MARK: - Internal methods
extension ___VARIABLE_sceneName___ViewController {

    func setDependencies(viewModel: ___VARIABLE_sceneName___ViewModelProtocol) {
        self.viewModel = viewModel
    }
}

// MARK: - Bind
private extension ___VARIABLE_sceneName___ViewController {
    func bind(to viewModel: ___VARIABLE_sceneName___ViewModelProtocol?) {
        subscriptions.forEach { $0.cancel() }
        subscriptions.removeAll()
        
        let input = ___VARIABLE_sceneName___.Models.ViewModelInput(onLoad: onLoad.eraseToAnyPublisher())
        viewModel?.process(input: input)
        
        viewModel?.viewState
            .removeDuplicates()
            .receive(on: DispatchQueue.main)
            .sink(receiveValue: { [weak self] state in
                self?.render(state)
            }).store(in: &subscriptions)

        viewModel?.route
            .receive(on: DispatchQueue.main)
            .sink(receiveValue: { [weak self] route in
                self?.handleRoute(route)
            }).store(in: &subscriptions)

        viewModel?.viewAction
            .receive(on: DispatchQueue.main)
            .sink(receiveValue: { [weak self] action in
                self?.handleAction(action)
            }).store(in: &subscriptions)
    }
    
    func render(_ state: ___VARIABLE_sceneName___.Models.ViewState) {
        switch state {
        case .idle:
            break
        case .loading:
            startLoading()
        case .loaded:
            stopLoading()
        case .empty:
            stopLoading()
        case .failure:
            stopLoading()
        }
    }

    func handleAction(_ action: ___VARIABLE_sceneName___.Models.ViewAction) {
        switch action {
            //show alert
            //scrollToTop
            // ...
        }
    }
    
    func handleRoute(_ route: ___VARIABLE_sceneName___.Models.ViewRoute) {
        switch route {
        }
    }
}

// MARK: - Private
private extension ___VARIABLE_sceneName___ViewController {

    func setup() {
    }
    
    func startLoading() {
    }
    
    func stopLoading() {
    }
}
