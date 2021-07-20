//
//  DKModalViewController.m
//  RSSDraw
//
//  Created by Dmitriy Komar on 7/18/21.
//

#import "DKModalViewController.h"
#import "DKPaletteView.h"
#import "DKButton.h"
#import "DKColor.h"
#import "DKColorButtonView.h"

@implementation DKModalViewController

-(id)init:(NSString *) param{
    self = [super init];
    if(self) {
        NSLog(@"init dkmodel");
        self.view.backgroundColor = [UIColor whiteColor];
        self.view.frame = CGRectMake(0, self.view.bounds.size.height / 2, self.view.bounds.size.width, self.view.bounds.size.height / 2);
        [self.view.layer setCornerRadius:35.0];
        [self.view.layer setMaskedCorners:kCALayerMinXMinYCorner|kCALayerMaxXMinYCorner];
        [self.view.layer setShadowColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor];
        [self.view.layer setShadowOffset:CGSizeMake(0, 0)];
        [self.view.layer setShadowOpacity:1.0f];
        [self.view.layer setShadowRadius:4.0f];
        
        //save button
        self.save = [[DKButton alloc] initWithTitle:@"Save"];
        self.save.translatesAutoresizingMaskIntoConstraints = NO;
        [self.save addTarget:self action:@selector(saveButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:self.save];
        
        NSLayoutConstraint *buttonSaveTopHeight = [NSLayoutConstraint
                                                            constraintWithItem:self.save
                                                                     attribute:NSLayoutAttributeTop
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:self.view
                                                                     attribute:NSLayoutAttributeTop
                                                                    multiplier:1
                                                                      constant:20];
        NSLayoutConstraint *buttonSaveRightHeight = [NSLayoutConstraint
                                                            constraintWithItem:self.save
                                                                     attribute:NSLayoutAttributeRight
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:self.view
                                                                     attribute:NSLayoutAttributeRight
                                                                    multiplier:1.0
                                                                      constant:-40];

        //add buttons constrains
        [self.view addConstraints:@[buttonSaveTopHeight, buttonSaveRightHeight]];
        
        if([param isEqualToString:@"1"]){
            //palette
            DKColorButtonView* redButton = [[DKColorButtonView alloc] initWithFrame:CGRectMake(17, 92, 40, 40) andColor:[UIColor red]];
            DKColorButtonView* darkBluedButton = [[DKColorButtonView alloc] initWithFrame:CGRectMake(77, 92, 40, 40) andColor:[UIColor darkBlue]];
            DKColorButtonView* greenButton = [[DKColorButtonView alloc] initWithFrame:CGRectMake(137, 92, 40, 40) andColor:[UIColor green]];
            DKColorButtonView* grayButton = [[DKColorButtonView alloc] initWithFrame:CGRectMake(197, 92, 40, 40) andColor:[UIColor gray]];
            DKColorButtonView* violetteButton = [[DKColorButtonView alloc] initWithFrame:CGRectMake(257, 92, 40, 40) andColor:[UIColor viollete]];
            DKColorButtonView* middlePinkButton = [[DKColorButtonView alloc] initWithFrame:CGRectMake(317, 92, 40, 40) andColor:[UIColor middlePink]];
            DKColorButtonView* orangeButton = [[DKColorButtonView alloc] initWithFrame:CGRectMake(17, 152, 40, 40) andColor:[UIColor orange]];
            DKColorButtonView* blueButton = [[DKColorButtonView alloc] initWithFrame:CGRectMake(77, 152, 40, 40) andColor:[UIColor blue]];
            DKColorButtonView* pinkButton = [[DKColorButtonView alloc] initWithFrame:CGRectMake(137, 152, 40, 40) andColor:[UIColor pink]];
            DKColorButtonView* veryDarkGreenButton = [[DKColorButtonView alloc] initWithFrame:CGRectMake(197, 152, 40, 40) andColor:[UIColor veryDarkGreen]];
            DKColorButtonView* darkGreennButton = [[DKColorButtonView alloc] initWithFrame:CGRectMake(257, 152, 40, 40) andColor:[UIColor darkGreen]];
            DKColorButtonView* brownButton = [[DKColorButtonView alloc] initWithFrame:CGRectMake(317, 152, 40, 40) andColor:[UIColor brown]];
            [self.view addSubview:redButton];
            [self.view addSubview:darkBluedButton];
            [self.view addSubview:greenButton];
            [self.view addSubview:grayButton];
            [self.view addSubview:violetteButton];
            [self.view addSubview:middlePinkButton];
            [self.view addSubview:orangeButton];
            [self.view addSubview:blueButton];
            [self.view addSubview:pinkButton];
            [self.view addSubview:veryDarkGreenButton];
            [self.view addSubview:darkGreennButton];
            [self.view addSubview:brownButton];
        } else if ([param isEqualToString:@"2"]){
            //timer
            ///label 1
           // UIFont * customFont = [UIFont fontWithName:ProximaNovaSemibold size:12]; //custom font
            //NSString * text = [self fromSender];
            NSString * text = @"1";
            //CGSize labelSize = [text sizeWithFont:customFont constrainedToSize:CGSizeMake(380, 20) lineBreakMode:NSLineBreakByTruncatingTail];
            UILabel *minValue = [[UILabel alloc]initWithFrame:CGRectMake(26, 103, 10, 22)];
            minValue.text = text;
            //fromLabel.font = customFont;
            minValue.numberOfLines = 1;
            minValue.baselineAdjustment = UIBaselineAdjustmentAlignBaselines; // or UIBaselineAdjustmentAlignCenters, or UIBaselineAdjustmentNone
            minValue.adjustsFontSizeToFitWidth = YES;
            minValue.minimumScaleFactor = 10.0f/12.0f;
            minValue.clipsToBounds = YES;
            minValue.backgroundColor = [UIColor clearColor];
            minValue.textColor = [UIColor blackColor];
            minValue.textAlignment = NSTextAlignmentLeft;
            [self.view addSubview:minValue];
            
            ///label 2
            UILabel *maxValue = [[UILabel alloc]initWithFrame:CGRectMake(338, 103, 10, 22)];
            maxValue.text = @"5";
            maxValue.numberOfLines = 1;
            maxValue.baselineAdjustment = UIBaselineAdjustmentAlignBaselines; // or UIBaselineAdjustmentAlignCenters, or UIBaselineAdjustmentNone
            maxValue.adjustsFontSizeToFitWidth = YES;
            maxValue.minimumScaleFactor = 10.0f/12.0f;
            maxValue.clipsToBounds = YES;
            maxValue.backgroundColor = [UIColor clearColor];
            maxValue.textColor = [UIColor blackColor];
            maxValue.textAlignment = NSTextAlignmentLeft;
            [self.view addSubview:maxValue];
            ///label 3
            self.resultValue = [[UILabel alloc]initWithFrame:CGRectMake(161, 161, 55, 52)];
            self.resultValue.text = @"1.00 s";
            self.resultValue.numberOfLines = 1;
            self.resultValue.baselineAdjustment = UIBaselineAdjustmentAlignBaselines; // or UIBaselineAdjustmentAlignCenters, or UIBaselineAdjustmentNone
            self.resultValue.adjustsFontSizeToFitWidth = YES;
            self.resultValue.minimumScaleFactor = 10.0f/12.0f;
            self.resultValue.clipsToBounds = YES;
            self.resultValue.backgroundColor = [UIColor clearColor];
            self.resultValue.textColor = [UIColor blackColor];
            self.resultValue.textAlignment = NSTextAlignmentLeft;
            [self.view addSubview:self.resultValue];
            
            CGRect frame = CGRectMake(74, 112, 223, 4);
            UISlider *slider = [[UISlider alloc] initWithFrame:frame];
            [slider addTarget:self action:@selector(sliderAction:) forControlEvents:UIControlEventValueChanged];
            [slider setBackgroundColor:[UIColor clearColor]];
            slider.tintColor = [UIColor green];
            slider.minimumValue = 1.0;
            slider.maximumValue = 5.0;
            slider.continuous = YES;
            slider.value = 1.0;
            [self.view addSubview:slider];
            
        } else if ([param isEqualToString:@"3"]){
            
            // SHARE
            
           // CGRect rect = [self.drawings.myDrawingView bounds];
           // UIGraphicsBeginImageContext(rect.size);
          //  CGContextRef context = UIGraphicsGetCurrentContext();
           // [self.drawings.myDrawingView.layer renderInContext:context];
            UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
            UIGraphicsEndImageContext();
            NSArray *activityItems = @[img];
            UIActivityViewController *activityViewControntroller = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
            activityViewControntroller.excludedActivityTypes = @[];
            activityViewControntroller.popoverPresentationController.sourceView = self.view;
            activityViewControntroller.popoverPresentationController.sourceRect = CGRectMake(self.view.bounds.size.width/2, self.view.bounds.size.height/4, 0, 0);
            [self presentViewController:activityViewControntroller animated:YES completion:nil];
        }
        

        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"EEE");
    NSLog(@"%@ - value is HERE",_setModalViewPresentation);

    
}

//MARK: -Actions

-(void)saveButtonTapped:(UIBarButtonItem*)item{
    NSLog(@"save");
    [self.view removeFromSuperview];
    [self removeFromParentViewController];
}

-(void)sliderAction:(UISlider*)sender{
    self.resultValue.text = [NSString stringWithFormat:@"%1.2f s",sender.value];

    
}

//MARK: -Model View Presentation


@end



