//
//  SceneDelegate.swift
//  TabBar_code
//
//  Created by Rafael Gonzalez on 04/03/25.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        //Create window
        window = UIWindow(windowScene: windowScene)
        
        //Create instances of controllers A,B & C
        let aVC = AViewController()
        let bVC = BViewController()
        let cVC = CViewController()
        
        //Create Tabbar
        let tabBarController = UITabBarController()
        
        //Set up tabs items
        let tabBarItemA = UITabBarItem(title: "", image: UIImage(systemName: "character"), tag: 0)
        aVC.tabBarItem = tabBarItemA
        
        let tabBarItemB = UITabBarItem(title: "", image: UIImage(systemName: "calendar"), tag: 1)
        bVC.tabBarItem = tabBarItemB
        
        let tabBarItemC = UITabBarItem(title: "", image: UIImage(systemName: "bell"), tag: 2)
        cVC.tabBarItem = tabBarItemC
        
        //setup cVC as root to NavigationController
        let navController = UINavigationController(rootViewController: cVC)
        
        tabBarController.viewControllers = [aVC,bVC,navController]
        
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}


