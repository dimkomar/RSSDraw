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

@property (nonatomic, strong) DKModalViewController *contentViewController;




@end

@implementation DKArtistViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupNavigationController];
    //draw view controller
    self.drawView = [[DKDrawingsView alloc]initWithFrame:CGRectMake(38, 102, 300, 300)];
    //color and timer controller
    self.contentViewController = [[DKModalViewController alloc] init:@"1"];
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
    [self.navigationItem.rightBarButtonItem setTitleTextAttributes:@{NSFontAttributeName:[UIFont fontWithName:@"Montserrat-Regular" size:17.0f]}
                                                          forState:UIControlStateNormal];
    self.navigationItem.rightBarButtonItem.tintColor = [UIColor lightGreenSea];
}
    
-(void)setupButtons {
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
            NSLayoutConstraint *buttonDrawRightConstraint = [NSLayoutConstraint
                                                                constraintWithItem:self.buttonDraw
                                                                         attribute:NSLayoutAttributeRight
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:self.view
                                                                         attribute:NSLayoutAttributeRight
                                                                        multiplier:1.0
                                                                          constant:-41];
            
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
            NSLayoutConstraint *buttonShareRightHeight = [NSLayoutConstraint
                                                                constraintWithItem:self.buttonShare
                                                                         attribute:NSLayoutAttributeRight
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:self.view
                                                                         attribute:NSLayoutAttributeRight
                                                                        multiplier:1.0
                                                                          constant:-41];

            //add buttons constrains
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

-(void)tapOnDrawings:(UIBarButtonItem*)item{
    DKDrawingsViewController *drawingsViewController = [[DKDrawingsViewController alloc] init];
    [[self navigationController] pushViewController:drawingsViewController animated:YES];
}
    
    

-(void)paletteButtonTapped:(UIButton *)sender {
    
    [self addChildViewController:self.contentViewController];
    [self.view addSubview:self.contentViewController.view];
    [self.contentViewController didMoveToParentViewController:self];
    NSLog(@"1");
}
-(void)timerButtonTapped:(UIButton *)sender {
    self.contentViewController = [[DKModalViewController alloc] init:@"2"];
    [self addChildViewController:self.contentViewController];
    [self.view addSubview:self.contentViewController.view];
    [self.contentViewController didMoveToParentViewController:self];
    NSLog(@"2");
}
-(void)drawButtonTapped:(UIButton *)sender {
    NSLog(@"3");
}
-(void)shareButtonTapped:(UIButton *)sender {
    NSLog(@"4");
}


///delegate

- (void)hideContentController:(nonnull UIViewController *)content {
    [content willMoveToParentViewController:nil];
    [content.view removeFromSuperview];
    [content removeFromParentViewController];
}


@end
