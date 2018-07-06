//
//  BookManager.swift
//  BookManager
//
//  Created by hyerang on 2018. 6. 29..
//  Copyright © 2018년 specupad. All rights reserved.
//

import Foundation

class BookManager{
    var bookList = [Book]()
    
    func registerBook(bookObject:Book) {
        bookList += [bookObject]
        
    }
    func showAllBooks() -> String { //
        var strTemp = ""
        for bookTemp in bookList{
            strTemp += "Name : \(bookTemp.name!)\n"
            strTemp += "Genre : \(bookTemp.genre!)\n"
            strTemp += "Author : \(bookTemp.author!)\n"
            strTemp += "==================\n"
        }
        return strTemp
    }
    
    func countBooks() -> Int { // booklist count
        return bookList.count
    }
    
    func searchBook(name:String) -> String?{ //name/genre/author
        var strTemp = ""
        for bookTemp in bookList {
            if bookTemp.name == name {
                strTemp += "Name : \(String(describing: bookTemp.name))\n" // stirng insert
                strTemp += "Genre : \(bookTemp.genre!)\n"
                strTemp += "Author : \(bookTemp.author!)\n"
                strTemp += "==================\n"
                return strTemp
            }
        }
        return nil // 
        
    }
    
   func removeBook(name:String){
    for (index,value) in bookList.enumerated(){// enumerated() method to iterate over the array. It returns a sequence of pairs composed of the index and the value for each item in the array
        if value.name == name{
            bookList.remove(at: index)
            
        }
    }
   }
}
