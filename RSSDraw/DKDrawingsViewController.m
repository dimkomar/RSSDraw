//
//  DKDrawingsViewController.m
//  RSSDraw
//
//  Created by Dmitriy Komar on 7/17/21.
//

#import "DKDrawingsViewController.h"
#import "DKButton.h"


@interface DKDrawingsViewController ()

@property (nonatomic, strong) DKButton *buttonPlanet;
@property (nonatomic, strong) DKButton *buttonHead;
@property (nonatomic, strong) DKButton *buttonTree;
@property (nonatomic, strong) DKButton *buttonLandscape;

@end

@implementation DKDrawingsViewController

-(id)init{
    self = [super init];
    if(self) {
        
        //planet
        self.buttonPlanet = [[DKButton alloc] initWithTitle:@"Planet"];
        [self.buttonPlanet setFrame:CGRectMake(0, 0, 200, 40)];
        self.buttonPlanet.translatesAutoresizingMaskIntoConstraints = NO;
        [self.view addSubview:self.buttonPlanet];
        
        
        NSLayoutConstraint *buttonPlanetTopConstraint = [NSLayoutConstraint
                                                            constraintWithItem:self.buttonPlanet
                                                                     attribute:NSLayoutAttributeTop
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:self.view
                                                                     attribute:NSLayoutAttributeTop
                                                                    multiplier:1
                                                                      constant:114];
        NSLayoutConstraint *buttonPlanetLeftConstraint = [NSLayoutConstraint
                                                            constraintWithItem:self.buttonPlanet
                                                                     attribute:NSLayoutAttributeLeft
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:self.view
                                                                     attribute:NSLayoutAttributeLeft
                                                                    multiplier:1.0
                                                                      constant:88];
        
     
     //head
        self.buttonHead = [[DKButton alloc] initWithTitle:@"Head"];
        self.buttonHead.translatesAutoresizingMaskIntoConstraints = NO;
        [self.view addSubview:self.buttonHead];
     
     NSLayoutConstraint *buttonHeadTopConstraint = [NSLayoutConstraint
                                                         constraintWithItem:self.buttonHead
                                                                  attribute:NSLayoutAttributeTop
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self.view
                                                                  attribute:NSLayoutAttributeTop
                                                                 multiplier:1
                                                                   constant:169];
     NSLayoutConstraint *buttonHeadLeftConstraint = [NSLayoutConstraint
                                                         constraintWithItem:self.buttonHead
                                                                  attribute:NSLayoutAttributeLeft
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self.view
                                                                  attribute:NSLayoutAttributeLeft
                                                                 multiplier:1.0
                                                                   constant:88];
     //tree
        self.buttonTree = [[DKButton alloc] initWithTitle:@"Tree"];
        self.buttonTree.translatesAutoresizingMaskIntoConstraints = NO;
        [self.view addSubview:self.buttonTree];
     
     NSLayoutConstraint *buttonTreeTopConstraint = [NSLayoutConstraint
                                                         constraintWithItem:self.buttonTree
                                                                  attribute:NSLayoutAttributeTop
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self.view
                                                                  attribute:NSLayoutAttributeTop
                                                                 multiplier:1
                                                                   constant:224];
     NSLayoutConstraint *buttonTreeLeftConstraint = [NSLayoutConstraint
                                                         constraintWithItem:self.buttonTree
                                                                  attribute:NSLayoutAttributeLeft
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self.view
                                                                  attribute:NSLayoutAttributeLeft
                                                                 multiplier:1.0
                                                                   constant:88];
     //landscape
        self.buttonLandscape = [[DKButton alloc] initWithTitle:@"Landscape"];
        self.buttonLandscape.translatesAutoresizingMaskIntoConstraints = NO;
        [self.view addSubview:self.buttonLandscape];
     
     NSLayoutConstraint *buttonLandscapeTopConstraint = [NSLayoutConstraint
                                                         constraintWithItem:self.buttonLandscape
                                                                  attribute:NSLayoutAttributeTop
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self.view
                                                                  attribute:NSLayoutAttributeTop
                                                                 multiplier:1
                                                                   constant:279];
     NSLayoutConstraint *buttonLandscapeLeftConstraint = [NSLayoutConstraint
                                                         constraintWithItem:self.buttonLandscape
                                                                  attribute:NSLayoutAttributeLeft
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self.view
                                                                  attribute:NSLayoutAttributeLeft
                                                                 multiplier:1.0
                                                                   constant:88];
     
     //add buttons constrains
        [self.view addConstraints:@[buttonPlanetTopConstraint, buttonPlanetLeftConstraint,
                                    buttonHeadTopConstraint, buttonHeadLeftConstraint,
                                    buttonTreeTopConstraint, buttonTreeLeftConstraint,
                                    buttonLandscapeTopConstraint, buttonLandscapeLeftConstraint]];

     //add buttons actions
     [self.buttonPlanet addTarget:self action:@selector(buttonPlanetTapped:) forControlEvents:UIControlEventTouchUpInside];
     [self.buttonHead addTarget:self action:@selector(buttonHeadTapped:) forControlEvents:UIControlEventTouchUpInside];
     [self.buttonTree addTarget:self action:@selector(buttonTreeTapped:) forControlEvents:UIControlEventTouchUpInside];
     [self.buttonLandscape addTarget:self action:@selector(buttonLandscapeTapped:) forControlEvents:UIControlEventTouchUpInside];
     
        
    }
return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationItem setTitle:@"Drawings"];
    
}


//MARK: -Action
-(void)buttonPlanetTapped:(UIBarButtonItem*)item{
    NSLog(@"buttonPlanetTapped");
  
}
-(void)buttonHeadTapped:(UIBarButtonItem*)item{
    NSLog(@"buttonHeadTapped");
  
}
-(void)buttonTreeTapped:(UIBarButtonItem*)item{
    NSLog(@"buttonTreeTapped");
  
}
-(void)buttonLandscapeTapped:(UIBarButtonItem*)item{
    NSLog(@"buttonLandscapeTapped");
  
}

@end
