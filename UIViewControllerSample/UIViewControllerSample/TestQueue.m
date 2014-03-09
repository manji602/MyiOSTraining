//
//  TestQueue.m
//  UIViewControllerSample
//
//  Created by 橋本 淳 on 2014/03/06.
//
//

#import "TestQueue.h"

@implementation TestQueue

-(id)init {
    self = [super init];
    return self;
}

-(void)push:(id)object {
    if (_entry == nil){
        _entry = [NSMutableArray array];
    }
    
    [_entry insertObject:object atIndex:0];
    
    return;
}

-(NSInteger)size {
    return [_entry count];
}

@end
