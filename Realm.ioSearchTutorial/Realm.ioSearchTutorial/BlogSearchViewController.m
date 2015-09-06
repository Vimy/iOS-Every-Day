//
//  BlogSearchViewController.m
//  Realm.ioSearchTutorial
//
//  Created by Matthias Vermeulen on 6/09/15.
//  Copyright © 2015 Noizy. All rights reserved.
//

#import "BlogSearchViewController.h"
#import "BlogObject.h"
#import "BlogPostTableViewCell.h"


@interface BlogSearchViewController ()

@end

@implementation BlogSearchViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Blogs";
    self.tableView.estimatedRowHeight = 88.f;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    [self.tableView registerNib:[UINib nibWithNibName:@"BlogPostTableViewCell" bundle:nil] forCellReuseIdentifier:@"blogCell"];
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableViewCell *)searchViewController:(ABFRealmSearchViewController *)searchViewController cellForObject:(id)anObject atIndexPath:(NSIndexPath *)indexPath
{
    BlogPostTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"blogCell" forIndexPath:indexPath];
    
    BlogObject *blog = anObject;
    cell.titleLabel.text = [blog.title capitalizedString];
    cell.emojiLabel.text = blog.emoji;
    cell.contentLabel.text = blog.content;
    
    return cell;
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
