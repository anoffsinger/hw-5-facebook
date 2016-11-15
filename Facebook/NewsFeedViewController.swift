//
//  NewsFeedViewController.swift
//  Facebook
//
//  Created by Timothy Lee on 8/3/14.
//  Copyright (c) 2014 codepath. All rights reserved.
//

import UIKit

class NewsFeedViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var feedImageView: UIImageView!
    
    var selectedImageView: UIImageView!
    var viewPhotoTransition: ViewPhotoTransition!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Configure the content size of the scroll view
        scrollView.contentSize = CGSize(width: 320, height: feedImageView.image!.size.height)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        scrollView.contentInset.top = 0
        scrollView.contentInset.bottom = 50
        scrollView.scrollIndicatorInsets.top = 0
        scrollView.scrollIndicatorInsets.bottom = 50
    }
    
    @IBAction func didTapPhoto(_ sender: UITapGestureRecognizer) {
        
        selectedImageView = sender.view as! UIImageView
        performSegue(withIdentifier: "DidTapPhoto", sender: nil)
        // destination view controller.image should equal the image just tapped
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // casting the incoming viewcontroller type
        let destinationViewController = segue.destination as! ViewPhotoViewController
        
        // set custom modal style
        destinationViewController.modalPresentationStyle = UIModalPresentationStyle.custom
        
        // create new instance of transition
        viewPhotoTransition = ViewPhotoTransition()
        
        // tell destination view controller to look at our transition file for instructions
        destinationViewController.transitioningDelegate = viewPhotoTransition
        
        // to change anything in transition, address like this: fadeTransition.duration = 1.0
        
        // I don't understand how we should correctly identify the right image here
        destinationViewController.image = selectedImageView.image
        
    }
    
    
}
