//
//  DetailViewController.m
//  AppDev Directory
//
//  Created by Patrick Slough on 4/15/14.
//  Copyright (c) 2014 Patrick Slough. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.nameLabel.textLabel.text = self.detailName;
    self.yearLabel.textLabel.text = [NSString stringWithFormat:@"Class of %@", self.detailYear];
    self.roleLabel.textLabel.text = self.detailRole;
    self.emailLabel.textLabel.text = self.detailEmail;
    
    NSString *cellP1 = [self.detailCellphone substringToIndex:3];
    NSString *cellP2= [self.detailCellphone substringWithRange:NSMakeRange(3, 3)];
    NSString *cellP3 = [self.detailCellphone substringFromIndex:6];
    NSString *formattedCellNum = [NSString stringWithFormat:@"(%@)-%@-%@", cellP1, cellP2, cellP3];
    
    self.cellphoneLabel.textLabel.text = formattedCellNum;
    
    NSURL *imageURL = [NSURL URLWithString:self.detailImage];
    NSData *imageData = [NSData dataWithContentsOfURL:imageURL];
    UIImage *newImage = [UIImage imageWithData:imageData];
    self.detailPicture.image = newImage;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)callPhone:(id)sender {
    NSString *callString = [NSString stringWithFormat:@"telprompt://%@", self.detailCellphone];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:callString]];
}

- (IBAction)makeEmail:(id)sender {
    NSString *emailString = [NSString stringWithFormat:@"mailto:%@", self.detailEmail];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:emailString]];
}
@end
