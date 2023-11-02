//
//  Constants.swift
//  TwitterClone
//
//  Created by Mauro Magno on 01/11/23.
//

import Firebase
import FirebaseStorage

let DB_REF = Database.database().reference()
let REF_USERS = DB_REF.child("users")

let STORAGE_REF = Storage.storage().reference()
let STORAGE_PROFILE_IMAGE = STORAGE_REF.child("profile_images")
