//
//  DetailViewController.h
//  TouchHelper
//
//  Created by wwwins on 2014/11/27.
//  Copyright (c) 2014年 isobar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textFieldForInputURL;
@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

