//
//  DetailViewController.h
//  AppDev Directory
//
//  Created by Patrick Slough on 4/15/14.
//  Copyright (c) 2014 Patrick Slough. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITableViewCell *nameLabel;
@property (strong, nonatomic) NSString *detailName;
@property (strong, nonatomic) IBOutlet UITableViewCell *yearLabel;
@property (strong, nonatomic) NSString *detailYear;
@property (strong, nonatomic) IBOutlet UIImageView *detailPicture;
@property (strong, nonatomic) NSString *detailImage;
@property (strong, nonatomic) IBOutlet UITableViewCell *roleLabel;
@property (strong, nonatomic) NSString *detailRole;
@property (strong, nonatomic) IBOutlet UITableViewCell *emailLabel;
@property (strong, nonatomic) NSString *detailEmail;
@property (strong, nonatomic) IBOutlet UITableViewCell *cellphoneLabel;
@property (strong, nonatomic) NSString *detailCellphone;
- (IBAction)callPhone:(id)sender;
- (IBAction)makeEmail:(id)sender;

@end
