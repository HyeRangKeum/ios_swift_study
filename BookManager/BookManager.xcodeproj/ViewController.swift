//
//  ViewController.swift
//  VisualBookManager
//
//  Created by specupad on 2018. 6. 29..
//  Copyright © 2018년 hyerang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var myBookManager  = BookManager()
    
    @IBOutlet weak var outputTextView: UITextView!
    @IBOutlet weak var NameTextField : UITextField!
    @IBOutlet weak var AuthorTextField : UITextField!
    @IBOutlet weak var GenreTextField : UITextField!
    @IBOutlet weak var countLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let book1 = Book(name: "햄릿",genre: "비극", author:"세익스피어")
        //book1.bookPrint()
        let book2 = Book(name: "누구를위하여 종을 울리나",genre: "전쟁소설", author:"헤밍웨이")
        //book2.bookPrint()
        let book3 = Book(name: "죄와벌",genre: "사실주의", author:"톨스토이")
        //book3.bookPrint()
        
        
        myBookManager.registerBook(bookObject: book1)
        myBookManager.registerBook(bookObject: book2)
        myBookManager.registerBook(bookObject: book3)
         countLable.text = "\(myBookManager.countBooks())"
    }
    @IBAction func registerAction(_ sender:Any){
      var bookTemp = Book()
        bookTemp.name = NameTextField.text!
        bookTemp.author = AuthorTextField.text!
        bookTemp.genre = GenreTextField.text!
            myBookManager.registerBook(bookObject: bookTemp)
        outputTextView.text = "\(NameTextField.text!) has been registered."
                 countLable.text = "\(myBookManager.countBooks())"
    }
    
    
    @IBAction func ShowAllBookAction(_ sender: Any){
        print("showAllBooks")
        outputTextView.text = myBookManager.showAllBooks()
    }
    
    
    @IBAction func searchAction(_ sender:Any){
        let resultBook = myBookManager.searchBook(name:NameTextField.text!)
        if resultBook != nil {
            outputTextView.text = "\(NameTextField.text!)"
        }else{
            outputTextView.text = "we don't have book that you search."
        
        }
    }
    
    @IBAction func removeAaction(_ sender:Any){
        myBookManager.removeBook(name: NameTextField.text!)
        outputTextView.text = "\(NameTextField.text!) removed"
        countLable.text = "\(myBookManager.countBooks())"
    }
    
override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

