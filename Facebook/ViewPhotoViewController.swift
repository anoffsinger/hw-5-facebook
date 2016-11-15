//
//  ViewPhotoViewController.swift
//  Facebook
//
//  Created by Adam Noffsinger on 11/13/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class ViewPhotoViewController: UIViewController {
    
    var image: UIImage!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func didTapDone(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
