//
//  Row.h
//  TestApplication
//
//  Created by Bern on 26.09.2018.
//  Copyright © 2018 Bern. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyRow : NSObject

@property (nonatomic, copy, readonly) NSString *name;

- (instancetype)initWithName:(NSString *)name;

@end
