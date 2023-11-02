//
//  ConversationsController.swift
//  TwitterClone
//
//  Created by Student on 11/07/23.
//

import Foundation
import UIKit

class ConversationsController: UIViewController {
    
    //MARK: - PROPERTIES
    
    //MARK: - LIFECYCLE
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        
    }
    
    //MARK: - HELPERS
    
    func configureUI(){
        view.backgroundColor = .white
        navigationItem.title = "Messages"
    
}
}
