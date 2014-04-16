//
//  DetailViewController.h
//  AppDev Directory
//
//  Created by Patrick Slough on 4/15/14.
//  Copyright (c) 2014 Patrick Slough. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITableViewCell *nameLabel;
@property (strong, nonatomic) NSString *detailName;
@property (strong, nonatomic) IBOutlet UITableViewCell *yearLabel;
@property (strong, nonatomic) NSString * detailYear;
@end
