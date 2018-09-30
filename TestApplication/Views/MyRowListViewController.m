//
//  RowListViewController.m
//  TestApplication
//
//  Created by Bern on 27.09.2018.
//  Copyright © 2018 Bern. All rights reserved.
//

#import "MyRowListViewController.h"
#import <libextobjc/EXTScope.h>

@interface MyRowListViewController ()

@property (nonatomic, strong, readonly) MyRowListViewModel *viewModel;

@end

@implementation MyRowListViewController

- (instancetype)initWithViewModel:(MyRowListViewModel *)viewModel {
    self = [super initWithStyle:UITableViewStylePlain];
    if (!self) return nil;
    
    _viewModel = viewModel;
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:@"Cell"];
    
    [self bindViewModel];
    
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"+" style:UIBarButtonItemStylePlain target:_viewModel action:@selector(newRow)];
}


- (void)bindViewModel {
    
    self.title = [self.viewModel title];
    
    @weakify(self);
    
    [[self.viewModel.hasUpdatedContent deliverOnMainThread]
     subscribeNext:^(id _) {
         @strongify(self);
         [self.tableView reloadData];
     }];
}

#pragma mark - TableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.viewModel numberOfRowsInSection:section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.textLabel.text = [self.viewModel nameAtIndexPath:indexPath];
    
    return cell;
}

@end
