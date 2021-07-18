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

@property (nonatomic, strong) DKDrawingsView *drawView;
@property (nonatomic, strong) DKPaletteView *paletteView;





@end

@implementation DKArtistViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //navigation controller block
    [self.navigationItem setTitle:@"Artist"];
    
    NSDictionary *textAttributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                    [UIColor blackColor],NSForegroundColorAttributeName,
                                    [UIColor whiteColor],NSBackgroundColorAttributeName,nil];
    
    self.navigationController.navigationBar.titleTextAttributes = textAttributes;

    UIBarButtonItem* drawingsViewBtn = [[UIBarButtonItem alloc] initWithTitle:@"Drawings" style:UIBarButtonItemStylePlain target:self action:@selector(tapOnDrawings:)];
    [self.navigationItem setRightBarButtonItem:drawingsViewBtn];

    
    //view block
    self.drawView = [[DKDrawingsView alloc]initWithFrame:CGRectMake(38, 102, 300, 300)];
    [self.view addSubview:self.drawView];
    
    

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
    DKModalViewController *contentViewController = [[DKModalViewController alloc] init];
    [self addChildViewController:contentViewController];
    contentViewController.view.frame = CGRectMake(0, self.view.bounds.size.height / 2, self.view.bounds.size.width, self.view.bounds.size.height / 2);
    [self.view addSubview:contentViewController.view];
    [contentViewController didMoveToParentViewController:self];
    NSLog(@"1");
}
-(void)timerButtonTapped:(UIButton *)sender {
    NSLog(@"2");
}
-(void)drawButtonTapped:(UIButton *)sender {
    NSLog(@"3");
}
-(void)shareButtonTapped:(UIButton *)sender {
    NSLog(@"4");
}





@end
