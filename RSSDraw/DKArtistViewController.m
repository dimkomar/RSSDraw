//
//  DKArtistViewController.m
//  RSSDraw
//
//  Created by Dmitriy Komar on 7/17/21.
//

#import "DKArtistViewController.h"
#import "DKDrawingsViewController.h"


@interface DKArtistViewController ()




@end

@implementation DKArtistViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationItem setTitle:@"Artist"];
    //create uibutton item
    UIBarButtonItem* drawingsViewBtn = [[UIBarButtonItem alloc] initWithTitle:@"Drawings" style:UIBarButtonItemStylePlain target:self action:@selector(tapOnDrawings:)];
    [self.navigationItem setRightBarButtonItem:drawingsViewBtn];


}








//MARK: - Actions

-(void)tapOnDrawings:(UIBarButtonItem*)item{
    DKDrawingsViewController *drawingsViewController = [[DKDrawingsViewController alloc] init];
    [[self navigationController] pushViewController:drawingsViewController animated:YES];
    
}



@end
