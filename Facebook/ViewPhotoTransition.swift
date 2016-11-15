//
//  ViewPhotoTransition.swift
//  Facebook
//
//  Created by Adam Noffsinger on 11/13/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class ViewPhotoTransition: BaseTransition {
    
    let tabViewController = fromViewController as! UITabBarController
    let navigationController = tabViewController.selectedViewController as! UINavigationController
    let feedViewController = navigationController.topViewController as! FeedViewController
    let toViewController = toViewController as! PhotoViewController
    
    let newsFeedViewController = fromViewController as! NewsFeedViewController
    
    let window = UIApplication.shared.keyWindow
    
    // image view here needs to be selectedImageView, containerview should be selectedImageView's parent
    let frame = window!.convert(imageView.frame, from: containerView)
    
    window!.addSubview(imageView)
    
}
