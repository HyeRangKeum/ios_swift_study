//
//  Books.swift
//  BookManager
//
//  Created by specupad on 2018. 6. 29..
//  Copyright © 2018년 specupad. All rights reserved.
//

struct Book {
    var name:String?
    var genre:String?
    var author:String?
    
    func bookPrint(){
        print("Name : \(name!)")
        print("Name : \(genre!)")
        print("Name : \(author!)")
        print("---------------------")
    }
}
