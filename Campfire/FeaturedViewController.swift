//
//  FeaturedViewController.swift
//  Campfire
//
//  Created by Matthew Turk on 6/16/16.
//  Copyright © 2016 Turk. All rights reserved.
//

import UIKit

class FeaturedViewController: UIViewController {

    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    // MARK: - Data model for each walkthrough screen
    var index = 0               // the current page index
    var headerText = ""
    var imageName = ""
    var descriptionText = ""
    
    // Just to make sure that the status bar is white - it depends on your preference
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    // 1 - Let's configure a walkthrough screen with the data model
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headerLabel.text = headerText
        descriptionLabel.text = descriptionText
        imageView.image = UIImage(named: imageName)
        pageControl.currentPage = index
        
        descriptionLabel.removeFromSuperview()
        
        // customize the next and start button
    }
    
    // 2-  if the user click the start button, we will just dismiss the page VC as we are displaying this PageVC via a modal segue
    
    // if the user clicks the next button, we'll show the next page view controller

}
