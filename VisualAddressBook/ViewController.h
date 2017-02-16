//
//  ViewController.h
//  VisualAddressBook
//
//  Created by Dan Hyunchan Kim on 2/13/17.
//  Copyright © 2017 hyunchan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BookManager;
@interface ViewController : UIViewController {
    BookManager *myBook;
}

@property (atomic, strong) IBOutlet UITextView *resultTextView;
@property (atomic, strong) IBOutlet UITextField *nameTextField;
@property (atomic, strong) IBOutlet UITextField *genreTextField;
@property (atomic, strong) IBOutlet UITextField *authorTextField;
@property (atomic, strong) IBOutlet UILabel *countLabel;

-(IBAction)showAllBookAction:(id)sender;
-(IBAction)registerBookAction:(id)sender;
-(IBAction)searchBookAction:(id)sender;
-(IBAction)removeBookAction:(id)sender;
@end

  
