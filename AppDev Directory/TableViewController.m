//
//  TableViewController.m
//  AppDev Directory
//
//  Created by Patrick Slough on 4/15/14.
//  Copyright (c) 2014 Patrick Slough. All rights reserved.
//

#import "TableViewController.h"
#import "Profile.h"
#import "DetailViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSURL *directoryURL = [NSURL URLWithString:@"http://grinnellappdev.com/tutorials/appdev_directory.json"];
    
    NSData *directoryData = [NSData dataWithContentsOfURL:directoryURL];
    
    NSError *error = nil;
    
    NSDictionary *dataDictionary = [NSJSONSerialization JSONObjectWithData:directoryData options:0 error:&error];
    
    self.profiles = [NSMutableArray array];
    
    NSArray *profileArray = [dataDictionary objectForKey:@"members"];
    
    for (NSDictionary *profDict in profileArray) {
        Profile * profile = [Profile profileWithName:[profDict objectForKey:@"name"]];
        profile.year = [profDict objectForKey:@"year"];
        profile.image = [profDict objectForKey:@"image"];
        profile.role = [profDict objectForKey:@"role"];
        profile.email = [profDict objectForKey:@"email"];
        profile.cellphone = [profDict objectForKey:@"cellphone"];
        [self.profiles addObject:profile];
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.profiles count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    Profile *profile = [self.profiles objectAtIndex:indexPath.row];
    
    NSData *imageData = [NSData dataWithContentsOfURL:profile.imageURL];
    UIImage *image = [UIImage imageWithData:imageData];
    
    cell.imageView.image = image;
    cell.textLabel.text = profile.name;
    
    return cell;
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSLog(@"%@", segue.identifier);
    if ([segue.identifier isEqualToString:@"showDetail"]){
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Profile *profile = [self.profiles objectAtIndex:indexPath.row];
        [segue.destinationViewController setDetailName: profile.name];
        [segue.destinationViewController setDetailYear: profile.year];
        [segue.destinationViewController setDetailImage: profile.image];
        [segue.destinationViewController setDetailRole: profile.role];
        [segue.destinationViewController setDetailEmail: profile.email];
        [segue.destinationViewController setDetailCellphone: profile.cellphone];
    }
}


@end
