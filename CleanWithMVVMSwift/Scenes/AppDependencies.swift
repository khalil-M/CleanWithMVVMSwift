//
//  AppDependencies.swift
//  CleanWithMVVMSwift
//
//  Created by Khalil-Mhelheli on 19/4/2022.
//

import Foundation
import UIKit

class AppDependencies {
    
    //vars
    var window: UIWindow?
    private init(){
        
    }
    
    // shared
    static let shared = AppDependencies()
    
    //MARK: configure and attach the UIWindow `window` & initialize router
    public func setScene(_ scene: UIScene) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        let vc = makeHomeViewController()
        let navController = CatNavigationController(rootViewController: vc)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
    }
    
    //MARK: Create  HomeViewController
    func makeHomeViewController() -> UIViewController {
        let viewModel = HomeViewModel()
        let router = HomeViewRouter()
        let viewController = HomeViewController(viewModel: viewModel, router: router)
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.title = "Home"
        navigationController.tabBarItem.image = UIImage(systemName: "house")
        router.navigationController = navigationController
        return viewController
    }
    
    public func start() {
        
        let isLoggedIn:Bool = true
        
        if isLoggedIn {
//            setRootViewController(makeMainTabBarController(manager: self.imdbManager))
        } else {
//            setRootViewController(LoginViewController())
        }

    }
}
