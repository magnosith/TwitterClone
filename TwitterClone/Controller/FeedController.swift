//
//  FeedController.swift
//  TwitterClone
//
//  Created by Student on 11/07/23.
//

import Foundation
import UIKit

class FeedController: UIViewController {
    
    //MARK: - PROPERTIES
    
    //MARK: - LIFECYCLE
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        configureUI()
        
    }
    
    //MARK: - HELPERS
    
    func configureUI(){
        view.backgroundColor = .white
        let imageView = UIImageView(image: UIImage(named: "twitter_logo_blue"))
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
    }

}
