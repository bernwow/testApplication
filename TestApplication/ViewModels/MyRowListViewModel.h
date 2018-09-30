//
//  RowListViewModel.h
//  TestApplication
//
//  Created by Bern on 27.09.2018.
//  Copyright © 2018 Bern. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ReactiveCocoa/ReactiveCocoa.h>
//#import "MyRowStore.h"

@interface MyRowListViewModel : NSObject

@property (nonatomic, readonly) RACSignal *hasUpdatedContent;

- (instancetype)init;

- (NSString *)title;
- (NSUInteger)numberOfRowsInSection:(NSInteger)section;
- (NSString *)nameAtIndexPath:(NSIndexPath *)indexPath;

- (void)newRow;

@end
