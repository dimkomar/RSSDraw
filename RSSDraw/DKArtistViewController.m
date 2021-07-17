//
//  DKArtistViewController.m
//  RSSDraw
//
//  Created by Dmitriy Komar on 7/17/21.
//

#import "DKArtistViewController.h"
#import "DKDrawingsViewController.h"
#import "DKDrawingsView.h"
#import "DKButton.h"




@interface DKArtistViewController ()

@property (nonatomic, strong) DKButton *buttonPalette;
@property (nonatomic, strong) DKButton *buttonTimer;
@property (nonatomic, strong) DKButton *buttonDraw;
@property (nonatomic, strong) DKButton *buttonShare;

@property (nonatomic, strong) DKDrawingsView *drawView;




@end

@implementation DKArtistViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //navigation controller block
    [self.navigationItem setTitle:@"Artist"];
    UIBarButtonItem* drawingsViewBtn = [[UIBarButtonItem alloc] initWithTitle:@"Drawings" style:UIBarButtonItemStylePlain target:self action:@selector(tapOnDrawings:)];
    [self.navigationItem setRightBarButtonItem:drawingsViewBtn];

    
    //view block  (инит можно потом вытнянуть)
    self.drawView = [[DKDrawingsView alloc]initWithFrame:CGRectMake(38, 102, 300, 300)];
    self.drawView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.drawView];
    
    //add buttonPalette

    
    



//MARK: - buttons
    
    //open pallete button
       self.buttonPalette = [[DKButton alloc] initWithTitle:@"Open Palette"];
       self.buttonPalette.translatesAutoresizingMaskIntoConstraints = NO;
       [self.view addSubview:self.buttonPalette];
    
    NSLayoutConstraint *buttonPalettetTopConstraint = [NSLayoutConstraint
                                                        constraintWithItem:self.buttonPalette
                                                                 attribute:NSLayoutAttributeTop
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.view
                                                                 attribute:NSLayoutAttributeTop
                                                                multiplier:1
                                                                  constant:454];
    NSLayoutConstraint *buttonPaletteLeftConstraint = [NSLayoutConstraint
                                                        constraintWithItem:self.buttonPalette
                                                                 attribute:NSLayoutAttributeLeft
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.view
                                                                 attribute:NSLayoutAttributeLeft
                                                                multiplier:1.0
                                                                  constant:20];
    
    //open timer button
    self.buttonTimer = [[DKButton alloc] initWithTitle:@"Open Timer"];
    self.buttonTimer.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.buttonTimer];
    
    NSLayoutConstraint *buttonOpenTimerTopConstraint = [NSLayoutConstraint
                                                        constraintWithItem:self.buttonTimer
                                                                 attribute:NSLayoutAttributeTop
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.view
                                                                 attribute:NSLayoutAttributeTop
                                                                multiplier:1
                                                                  constant:506];
    NSLayoutConstraint *buttonOpenTimerLeftConstraint = [NSLayoutConstraint
                                                        constraintWithItem:self.buttonTimer
                                                                 attribute:NSLayoutAttributeLeft
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.view
                                                                 attribute:NSLayoutAttributeLeft
                                                                multiplier:1.0
                                                                  constant:20];

    //open draw button
    self.buttonDraw = [[DKButton alloc] initWithTitle:@"Draw"];
    self.buttonDraw.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.buttonDraw];
    
    NSLayoutConstraint *buttonDrawTopConstraint = [NSLayoutConstraint
                                                        constraintWithItem:self.buttonDraw
                                                                 attribute:NSLayoutAttributeTop
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.view
                                                                 attribute:NSLayoutAttributeTop
                                                                multiplier:1
                                                                  constant:454];
    NSLayoutConstraint *buttonDrawLeftConstraint = [NSLayoutConstraint
                                                        constraintWithItem:self.buttonDraw
                                                                 attribute:NSLayoutAttributeLeft
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.view
                                                                 attribute:NSLayoutAttributeLeft
                                                                multiplier:1.0
                                                                  constant:243];
    
    //share button
    self.buttonShare = [[DKButton alloc] initWithTitle:@"Share"];
    self.buttonShare.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.buttonShare];
    
    NSLayoutConstraint *buttonShareHeight = [NSLayoutConstraint
                                                        constraintWithItem:self.buttonShare
                                                                 attribute:NSLayoutAttributeTop
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.view
                                                                 attribute:NSLayoutAttributeTop
                                                                multiplier:1
                                                                  constant:506];
    NSLayoutConstraint *buttonShareLeftHeight = [NSLayoutConstraint
                                                        constraintWithItem:self.buttonShare
                                                                 attribute:NSLayoutAttributeLeft
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.view
                                                                 attribute:NSLayoutAttributeLeft
                                                                multiplier:1.0
                                                                  constant:243];

    //add button constrains
    [self.view addConstraints:@[buttonPalettetTopConstraint, buttonPaletteLeftConstraint,
                                buttonOpenTimerTopConstraint, buttonOpenTimerLeftConstraint,
                                buttonDrawTopConstraint, buttonDrawLeftConstraint,
                                buttonShareHeight, buttonShareLeftHeight]];

}



//MARK: - Actions

-(void)tapOnDrawings:(UIBarButtonItem*)item{
    DKDrawingsViewController *drawingsViewController = [[DKDrawingsViewController alloc] init];
    [[self navigationController] pushViewController:drawingsViewController animated:YES];
    
}



@end
