//
//  UserPresenter.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 27/08/21.
//

import Foundation

final class UserPresenter: ObservableObject, UserPresenterProtocol {
    var output: UserInteractorOutputProtocol?
    
    weak var view: UserViewHelperProtocol?
    var interactor: UserInteractorInputProtocol?
    var router: UserRouter?
    
    init(view: UserViewHelperProtocol, interactor: UserInteractorInputProtocol, router: UserRouter) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

extension UserPresenter: UserInteractorOutputProtocol {
    func getInitData() {
        interactor?.fetchUsers()
    }
    
    func usersLoaded(users: [UserItem]) {
        view?.showUsers(users: users)
    }
    
    func usersFailedToLoad(error: Error) {
        view?.showError()
    }
    
    func viewUserPosts(id: Int, name: String) {
        router?.pushToUserPostsScreen(id: id, name: name)
    }
}
