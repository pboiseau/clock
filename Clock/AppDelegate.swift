//
//  AppDelegate.swift
//  clock
//
//  Created by Paul on 14/12/2015.
//  Copyright © 2015 paulboiseau. All rights reserved.
//

import UIKit
import Parse
import GoogleMaps

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var storyboard = UIStoryboard(name: "Main", bundle: nil)
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        Parse.setApplicationId("TMtoD0wxvIu5J62wNs8N22Febgn7CvMDhbGFviLW", clientKey: "qVnhWzCZtdw5SkJvJ7uz7wubUH2SXRDnra4Fq1pV")
        PFAnalytics.trackAppOpenedWithLaunchOptions(launchOptions)
        
        GMSServices.provideAPIKey("AIzaSyB5CFNfES73KgHOJKDDYt5a8ZtWnHSF0UE")
        
        UINavigationBar.appearance().barTintColor = UIColorFromRGBA("006195")
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        
        UIStatusBarStyle.LightContent
        
        checkLoginUser()
        
        return true
    }
    
    func checkLoginUser() {
        let currentUser = PFUser.currentUser()
        
        let loginView = storyboard.instantiateViewControllerWithIdentifier("loginView")
        let HomeController = storyboard.instantiateViewControllerWithIdentifier("homeViewNav") as! UITabBarController
        
        if currentUser != nil {
            if let window = self.window {
                window.rootViewController = HomeController
            }
        } else {
            if let window = self.window {
                window.rootViewController = loginView
            }
        }
    }
    
    
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
}

