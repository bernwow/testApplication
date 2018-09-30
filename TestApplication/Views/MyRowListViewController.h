//
//  RowListViewController.h
//  TestApplication
//
//  Created by Bern on 27.09.2018.
//  Copyright © 2018 Bern. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyRowListViewModel.h"

@interface MyRowListViewController : UITableViewController

- (instancetype)initWithViewModel:(MyRowListViewModel *)viewModel;

@end
