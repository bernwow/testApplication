//
//  Row.m
//  TestApplication
//
//  Created by Bern on 26.09.2018.
//  Copyright © 2018 Bern. All rights reserved.
//

#import "MyRow.h"

@implementation MyRow

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (!self) return nil;
    
    _name = [name copy];
    
    return self;
}

@end
