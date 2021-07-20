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
        self.view.backgroundColor = [UIColor whiteColor];
        [self setupButtons];
       
    }
return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationItem setTitle:@"Drawings"];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

-(void)setupButtons{
    //planet
    self.buttonPlanet = [[DKButton alloc] initWithTitle:@"Planet"];
    [self.buttonPlanet setFrame:CGRectMake(88, 114, 200, 40)];
    [self.view addSubview:self.buttonPlanet];
 
 //head
    self.buttonHead = [[DKButton alloc] initWithTitle:@"Head"];
    [self.buttonHead setFrame:CGRectMake(88, 169, 200, 40)];
    [self.view addSubview:self.buttonHead];

 //tree
    self.buttonTree = [[DKButton alloc] initWithTitle:@"Tree"];
    [self.buttonTree setFrame:CGRectMake(88, 224, 200, 40)];
    [self.view addSubview:self.buttonTree];
 
 //landscape
    self.buttonLandscape = [[DKButton alloc] initWithTitle:@"Landscape"];
    [self.buttonLandscape setFrame:CGRectMake(88, 279, 200, 40)];
    [self.view addSubview:self.buttonLandscape];

 //add buttons actions
 [self.buttonPlanet addTarget:self action:@selector(buttonPlanetTapped:) forControlEvents:UIControlEventTouchUpInside];
 [self.buttonHead addTarget:self action:@selector(buttonHeadTapped:) forControlEvents:UIControlEventTouchUpInside];
 [self.buttonTree addTarget:self action:@selector(buttonTreeTapped:) forControlEvents:UIControlEventTouchUpInside];
 [self.buttonLandscape addTarget:self action:@selector(buttonLandscapeTapped:) forControlEvents:UIControlEventTouchUpInside];
 
    
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
