//
//  DetailViewController.m
//  TouchHelper
//
//  Created by wwwins on 2014/11/27.
//  Copyright (c) 2014年 isobar. All rights reserved.
//

#import "DetailViewController.h"
#import "KAWModalWebViewController.h"

#define MY_URL (@"http://google.com")

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
  if (_detailItem != newDetailItem) {
      _detailItem = newDetailItem;
          
      // Update the view.
      [self configureView];
  }
}

- (void)configureView {
  // Update the user interface for the detail item.
  if (self.detailItem) {
      self.detailDescriptionLabel.text = [self.detailItem description];
  }
}

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  [self configureView];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


- (IBAction)clicked:(id)sender
{
  [self performSegueWithIdentifier:@"IdentifierToWebView" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
  if ([segue.identifier isEqualToString:@"IdentifierToWebView"]) {
    if ([segue.destinationViewController isKindOfClass:[KAWModalWebViewController class]]) {
      KAWModalWebViewController *kaw = (KAWModalWebViewController *)segue.destinationViewController;
      NSString *buf = MY_URL;
      if (self.textFieldForInputURL.text.length>0) {
        buf = [NSString stringWithFormat:@"http://%@",self.textFieldForInputURL.text];
      }
      kaw.url = [[NSURL alloc] initWithString:buf];
    }
  }
}

@end
