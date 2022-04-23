//
//  HomeRouter.swift
//  CleanWithMVVMSwift
//
//  Created by Amais Sheikh on 03/04/2022.
//

import UIKit


protocol Routing {
    var navigationController: UINavigationController? { set get }
}

// Routes

// routeToMovieDetails

protocol HomeViewRouting: Routing {
    func routeToMovieDetails(catSaid: String)
}

//protocol HomeRouterProtocol{
//    func routeToPokeViewController(catSaid: String)
//    func routeToBaka()
//}

class HomeViewRouter: HomeViewRouting {
    
    var navigationController: UINavigationController?
    
    func routeToMovieDetails(catSaid: String) {
        let vc = PokeViewController(catSaid: catSaid)
        navigationController?.pushViewController(vc, animated: true)
    }
}

//class HomeRouter: HomeRouterProtocol
//{
//    //----------------------------------------------------------------------------------
//    //MARK:- SectionName
//    //----------------------------------------------------------------------------------
//    
//    weak var viewController: UIViewController?
//    
//    //----------------------------------------------------------------------------------
//    //MARK:- SectionName
//    //----------------------------------------------------------------------------------
//    
//    func routeToPokeViewController(catSaid: String)
//    {
//        let vc = PokeViewController(catSaid: catSaid)
//        self.viewController?.present(vc, animated: true)
//    }
//    
//    func routeToBaka()
//    {
//        let vc = BakaViewController()
//        self.viewController?.navigationController?.pushViewController(vc, animated: true)
//    }
//}
