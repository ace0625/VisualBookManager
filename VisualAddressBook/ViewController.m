//
//  ViewController.m
//  VisualAddressBook
//
//  Created by Dan Hyunchan Kim on 2/13/17.
//  Copyright © 2017 hyunchan. All rights reserved.
//

#import "ViewController.h"
#import "BookManager.h"
#import "Book.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Book *book1 = [[Book alloc]init];
    book1.name = @"Facebook1";
    book1.genre = @"Genre1";
    book1.author = @"Author1";
    
    //        [book1 bookPrint];
    
    Book *book2 = [[Book alloc]init];
    book2.name = @"Facebook2";
    book2.genre = @"Genre2";
    book2.author = @"Author2";
    
    //        [book2 bookPrint];
    
    Book *book3 = [[Book alloc]init];
    book3.name = @"Facebook3";
    book3.genre = @"Genre3";
    book3.author = @"Author3";
    
    //        [book3 bookPrint];
    
    myBook = [[BookManager alloc]init];
    [myBook addBook:book1];
    [myBook addBook:book2];
    [myBook addBook:book3];
    
    _countLabel.text = [NSString stringWithFormat:@"%li", [myBook countBook]];
}

-(IBAction)showAllBookAction:(id)sender {
    _resultTextView.text = [myBook showAllBook];
//    [_resultTextView setText:[myBook showAllBook]];
//    NSLog(@"%@", [myBook showAllBook]);
}

-(IBAction)registerBookAction:(id)sender {
    Book *newBook = [[Book alloc]init];
    newBook.name = _nameTextField.text;
    newBook.genre = _genreTextField.text;
    newBook.author = _authorTextField.text;
    
    [myBook addBook:newBook];
    _resultTextView.text = @"New book has been added";
    _countLabel.text = [NSString stringWithFormat:@"%li", [myBook countBook]];
}

-(IBAction)searchBookAction:(id)sender {
    NSString *findName = [myBook findBook:_nameTextField.text];
    if (findName != nil) {
        _resultTextView.text = findName;
    } else {
        _resultTextView.text = @"No result";
    }
}

-(IBAction)removeBookAction:(id)sender {
    NSString *findName = [myBook removeBook:_nameTextField.text];
    if (findName != nil) {
        NSMutableString *str = [[NSMutableString alloc]init];
        [str appendString:findName];
        [str appendString:@" has been removed"];
        _resultTextView.text = str;
//        _resultTextView.text = [NSString stringWithFormat:@"%@ has been removed", findName];
        
        _countLabel.text = [NSString stringWithFormat:@"%li", [myBook countBook]];
    } else {
        _resultTextView.text = @"No result";
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
