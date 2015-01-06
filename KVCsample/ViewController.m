//
//  ViewController.m
//  KVCsample
//
//  Created by TriClouds on 2015/1/6.
//  Copyright (c) 2015年 TriClouds. All rights reserved.
//

#import "ViewController.h"
#import "Book.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Book *book = [[Book alloc] init];
    //NSMutableString *name = [[NSMutableString alloc] initWithFormat:@"jack"];
    
    //如果要給book 設值,不透過kvc的話,
    //1.就是要用property 來產生　getter & setter
    //2.或是要把屬性改成public -> 但是這樣會破壞封裝性
    //  只能透過方法(method)把值報出去
    //[book setValue:name forKey:@"name"];
    book->_name = @"this is test!";
    NSLog(@"%@",book->_name);
    //NSLog(@"jaack name: %@", [book valueForKey:@"name"]);
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}

@end
