//
//  PageTableViewCell.m
//  CCTVSE
//
//  Created by cctv-person on 2018/12/13.
//  Copyright © 2018 刘茜童. All rights reserved.
//

#import "PageTableViewCell.h"
@interface PageTableViewCell ()
@property (nonatomic , strong) UILabel *label;
@end
@implementation PageTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self addSubview:self.label];
    }
    return self;
}

- (UILabel *)label{
    if (!_label) {
        _label = [[UILabel alloc]initWithFrame:self.frame];
        _label.textColor = UIColor.redColor;
        _label.text = @"你好";
        _label.textAlignment = NSTextAlignmentCenter;
    }
    return _label;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
