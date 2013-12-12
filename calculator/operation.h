//
//  operation.h
//  calculator
//
//  Created by Levon on 12/7/13.
//  Copyright (c) 2013 Levon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface operation : NSObject

@property (nonatomic, readonly) float value;
@property (nonatomic) char operation;

-(id)initWithValue:(float)firstValue operation:(char)op;
-(float)calculate:(float)secondValue forOperation:(char)op;
@end
