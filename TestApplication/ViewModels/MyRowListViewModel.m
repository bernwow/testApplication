//
//  RowListViewModel.m
//  TestApplication
//
//  Created by Bern on 27.09.2018.
//  Copyright © 2018 Bern. All rights reserved.
//

#import "MyRowListViewModel.h"
#import "MyRow.h"
#import <UIKit/UITableView.h>

@interface MyRowListViewModel ()

@property (nonatomic, strong) NSArray *myRows;

@end

@implementation MyRowListViewModel

- (instancetype)init {
    self = [super init];
    if (!self) return nil;
    self.myRows = [NSArray new];
    _hasUpdatedContent = [RACObserve(self, myRows) mapReplace:@(YES)];
    
    return self;
}

#pragma mark - Data Source

- (NSString *)title {
    return @"Rows";
}

- (NSUInteger)numberOfRowsInSection:(NSInteger)section {
    return self.myRows.count;
}

- (NSString *)nameAtIndexPath:(NSIndexPath *)indexPath {
    MyRow *row = [self rowAtIndexPath:indexPath];
    return [NSString stringWithFormat:@"Ячейка %@", row.name];
}

- (MyRow *)rowAtIndexPath:(NSIndexPath *)indexPath {
    return self.myRows[indexPath.row];
}

- (void)newRow {
    NSMutableArray *newRows = self.myRows.mutableCopy;
    MyRow *newRow = [[MyRow alloc] initWithName:[NSString stringWithFormat:@"%lu",self.myRows.count]];
    [newRows addObject:newRow];
    self.myRows = newRows.copy;
}

@end
