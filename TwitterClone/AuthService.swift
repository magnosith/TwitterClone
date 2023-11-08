//
//  AuthService.swift
//  TwitterClone
//
//  Created by Mauro Magno on 02/11/23.
//

import UIKit
import Firebase
import FirebaseAuth

struct AuthCredentials {
    let email: String
    let password: String
    let fullname: String
    let username: String
    let profileImage: UIImage
}

struct AuthService {
    static let shared = AuthService()
    
    func logUserIn(withEmail email: String, password: String, completion: @escaping (Error?, Bool) -> Void){
        Auth.auth().signIn(withEmail: email, password: password){ (result, error) in
            if let error = error {
                print("DEBUG: Error logging in.... \(error.localizedDescription)")
                completion(error, false)
                return
            }

            print("DEBUG: Successful log in...")
        }
    }
    
    
    
    func registerUser(credentials: AuthCredentials, completition: @escaping(Error?, DatabaseReference) -> Void) {
        
        let email = credentials.email
        let password = credentials.password
        let fullName = credentials.fullname
        let userName = credentials.username
        
        guard let imageData = credentials.profileImage.jpegData(compressionQuality: 0.3) else {return}
        let filename = NSUUID().uuidString
        let storageRef = STORAGE_PROFILE_IMAGE.child(filename)
        
        storageRef.putData(imageData, metadata: nil) { (meta, error) in
            storageRef.downloadURL { (url, error) in
                guard let profileImageUrl = url?.absoluteString else {return}
                
                Auth.auth().self.createUser(withEmail: email, password: password) { (result, error) in
                    if let error = error {
                        print("DEBUG: Erros is \(error.localizedDescription)")
                        return
                    }
                    guard let uid = result?.user.uid else { return }
                    let values = ["email": email,
                                  "username": userName,
                                  "fullname": fullName,
                                  "profileImageUrl": profileImageUrl]
                    
                    REF_USERS.child(uid).updateChildValues(values, withCompletionBlock: completition)
                   
                }
            }
        }
        
        
    }
    
    
}
