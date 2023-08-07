//
//  NotificationController.swift
//  TwitterClone
//
//  Created by Student on 11/07/23.
//

import Foundation
import UIKit

class NotificationsController: UIViewController {
    
    //MARK: - PROPERTIES
    
    //MARK: - LIFECYCLE
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
       configureUI()
      
        
    }
    
    //MARK: - HELPERS
    
    func configureUI(){
        view.backgroundColor = .white
        navigationItem.title = "Notifications"
    }
    
}
