//
//  ViewController.m
//  WKCoreData
//
//  Created by apple on 15/4/13.
//  Copyright (c) 2015年 wenkai. All rights reserved.
//

#import "ViewController.h"
#import "Persion.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *dataTextView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)addBtnClicked:(UIButton *)sender
{
    Persion *persion = [Persion MR_createEntity];
    persion.firstname = @"Zhang";
    persion.lastname = @"San";
    persion.age = @23;
    [NSObject ]
    [[NSManagedObjectContext MR_context] MR_saveToPersistentStoreAndWait];
}
- (IBAction)queryBtnClicked:(UIButton *)sender
{
    //查找数据库中的所有Person。
    NSArray *persons = [Persion MR_findAll];
    NSLog(@"%@",persons);
    self.dataTextView.text = [persons description];
//    //查找所有的Person并按照first name排序。
//    NSArray *personsSorted = [Person MR_findAllSortedBy:@"firstname" ascending:YES];
//    //查找所有age属性为25的Person记录。
//    NSArray *personsAgeEuqals25   = [Person MR_findByAttribute:@"age" withValue:[NSNumber numberWithInt:25]];
//    //查找数据库中的第一条记录
//    Person *person = [Person MR_findFirst];
}

@end
