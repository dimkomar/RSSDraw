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
#import "DKModalViewController.h"
#import "DKPaletteView.h"



@interface DKArtistViewController () <UIViewControllerTransitioningDelegate>

@property (nonatomic, strong) DKButton *buttonPalette;
@property (nonatomic, strong) DKButton *buttonTimer;
@property (nonatomic, strong) DKButton *buttonDraw;
@property (nonatomic, strong) DKButton *buttonShare;
@property (nonatomic, strong) DKButton *buttonSave;

@property (nonatomic, strong) DKDrawingsView *drawView;
@property (nonatomic, strong) DKPaletteView *paletteView;

@property (nonatomic, strong) DKModalViewController *palleteView;
@property (nonatomic, strong) DKModalViewController *timerView;


@end



@implementation DKArtistViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupNavigationController];
    //draw view controller
    self.drawView = [[DKDrawingsView alloc]initWithFrame:CGRectMake(38, 102, 300, 300)];
    //color and timer controller
    self.palleteView = [[DKModalViewController alloc] init:@"showPalette"];
    self.timerView = [[DKModalViewController alloc] init:@"showTimer"];
    [self.view addSubview:self.drawView];
    [self setupButtons];
}

-(void)setupNavigationController {
    [self.navigationItem setTitle:@"Artist"];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont fontWithName:@"Montserrat-Regular" size:17.0f]}];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Drawings"
                                                                              style:UIBarButtonItemStylePlain
                                                                             target:self
                                                                             action:@selector(tapOnDrawings:)];
    [self.navigationItem.rightBarButtonItem setTitleTextAttributes:@{NSFontAttributeName:[UIFont fontWithName:@"Montserrat-Regular" size:17.0f]} forState:UIControlStateNormal];
    [self.navigationItem.rightBarButtonItem setTitleTextAttributes:@{NSFontAttributeName:[UIFont fontWithName:@"Montserrat-Regular" size:17.0f]} forState:UIControlStateHighlighted];
    self.navigationController.navigationBar.tintColor = [UIColor lightGreenSea];
}
    
-(void)setupButtons {
    //"Open Palette" button
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
            
    //"Open Timer" button
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

    //"Draw" button
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
            NSLayoutConstraint *buttonDrawRightConstraint = [NSLayoutConstraint
                                                                constraintWithItem:self.buttonDraw
                                                                         attribute:NSLayoutAttributeRight
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:self.view
                                                                         attribute:NSLayoutAttributeRight
                                                                        multiplier:1.0
                                                                          constant:-41];
            
    //"Share" button
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
            NSLayoutConstraint *buttonShareRightHeight = [NSLayoutConstraint
                                                                constraintWithItem:self.buttonShare
                                                                         attribute:NSLayoutAttributeRight
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:self.view
                                                                         attribute:NSLayoutAttributeRight
                                                                        multiplier:1.0
                                                                          constant:-41];

    //add buttons constraints
    [self.view addConstraints:@[buttonPalettetTopConstraint, buttonPaletteLeftConstraint,
                                buttonOpenTimerTopConstraint, buttonOpenTimerLeftConstraint,
                                buttonDrawTopConstraint, buttonDrawRightConstraint,
                                buttonShareHeight, buttonShareRightHeight]];

         
    //add buttons actions
    [self.buttonPalette addTarget:self action:@selector(paletteButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.buttonTimer addTarget:self action:@selector(timerButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.buttonDraw addTarget:self action:@selector(drawButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.buttonShare addTarget:self action:@selector(shareButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
            
}
    
    
    

//MARK: - Actions

//navigation
-(void)tapOnDrawings:(UIBarButtonItem*)item{
    DKDrawingsViewController *drawingsViewController = [[DKDrawingsViewController alloc] init];
    [[self navigationController] pushViewController:drawingsViewController animated:YES];
}
    
//buttons actions
-(void)paletteButtonTapped:(UIButton *)sender {
    [self addChildViewController:self.palleteView];
    [self.view addSubview:self.palleteView.view];
    [self.palleteView didMoveToParentViewController:self];
}
-(void)timerButtonTapped:(UIButton *)sender {
    [self addChildViewController:self.timerView];
    [self.view addSubview:self.timerView.view];
    [self.timerView didMoveToParentViewController:self];
}
-(void)drawButtonTapped:(UIButton *)sender {
    NSLog(@"3");
}
-(void)shareButtonTapped:(UIButton *)sender {
    NSArray* sharedObjects=[NSArray arrayWithObjects:@"sharecontent",  nil];
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:sharedObjects applicationActivities:nil];
    activityViewController.popoverPresentationController.sourceView = self.view;
    [self presentViewController:activityViewController animated:YES completion:nil];

}


@end
