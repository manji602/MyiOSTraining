//
//  TestQueue.h
//  UIViewControllerSample
//
//  Created by 橋本 淳 on 2014/03/06.
//
//

#import <Foundation/Foundation.h>

@interface TestQueue : NSObject

@property (nonatomic, strong) NSMutableArray *entry;

-(id)init;
-(void)push:(id)object;
-(NSInteger)size;

@end
