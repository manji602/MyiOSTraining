//
//  MySampleEntity.m
//  UIViewControllerSample
//
//  Created by 橋本 淳 on 2014/03/06.
//
//

#import "MySampleEntity.h"

@interface MySampleEntity()

@end

@implementation MySampleEntity

-(id)init {
    self = [super init];
    if (self) {
        NSMutableDictionary *domain_1 = [NSMutableDictionary dictionary];
        domain_1[@"domain"] = @"mixi.jp";
        NSMutableArray *entry = [NSMutableArray array];
        [entry addObject:@"list_voice.pl"];
        [entry addObject:@"list_diary.pl"];
        [entry addObject:@"list_mymall_item.pl"];
        domain_1[@"entry"] = entry;

        _entry = [NSMutableArray array];
        [_entry addObject:domain_1];
    }
    return self;
}

@end
