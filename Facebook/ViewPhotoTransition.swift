//
//  ViewPhotoTransition.swift
//  Facebook
//
//  Created by Adam Noffsinger on 11/13/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class ViewPhotoTransition: BaseTransition {
    let window = UIApplication.shared.keyWindow
    override func presentTransition(containerView: UIView, fromViewController: UIViewController, toViewController: UIViewController) {
        
        let tabViewController = fromViewController as! UITabBarController
        let navigationController = tabViewController.selectedViewController as! UINavigationController
        let newsFeedViewController = navigationController.topViewController as! NewsFeedViewController
        let toViewController = toViewController as! ViewPhotoViewController
        
        // get our selected image view from the news feed
        let selectedImageView = newsFeedViewController.selectedImageView
        
        // get position of the tapped image
        let frame = window!.convert((selectedImageView?.frame)!, from: containerView)
        
        // create fake photo for transition
        let imageView = UIImageView(frame: frame)
        imageView.image = selectedImageView?.image
        
        
        
        // add the fake photo
        window!.addSubview(imageView)
        
        
    }
    
    override func dismissTransition(containerView: UIView, fromViewController: UIViewController, toViewController: UIViewController) {
    }
    
    
    
    
    
//
//    // image view here needs to be selectedImageView, containerview should be selectedImageView's parent
//
//    window!.addSubview(imageView)
    
}
