//
//  BlogPostTableViewCell.h
//  Realm.ioSearchTutorial
//
//  Created by Matthias Vermeulen on 6/09/15.
//  Copyright © 2015 Noizy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BlogPostTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UILabel *emojiLabel;
@property (strong, nonatomic) IBOutlet UILabel *contentLabel;

@end
