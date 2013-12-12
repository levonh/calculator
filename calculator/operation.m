//
//  operation.m
//  calculator
//
//  Created by Levon on 12/7/13.
//  Copyright (c) 2013 Levon. All rights reserved.
//

#import "operation.h"

@implementation operation
   
-(id)initWithValue:(float)firstValue operation:(char)op;{
    if (self = [super init]) {
        _value = firstValue;
        _operation = op;
    }
    return self;
}
-(float)calculate:(float)secondValue forOperation:(char)op;{
    switch (op){
        case '=':
            break;
        default:
            _value = [self calculate:secondValue forOperation:op];
            _operation = op;
            break;
    }
    return secondValue;
}


-(float)calculate:(float)secondValue{
        float result = _value;
    switch (self.operation) {
        case '+':{
            result += secondValue;
            break;
        }
        case '-':{
            result -= secondValue;
            break;
        }
        case '*':{
            result *= secondValue;
            break;
        }
        case '/':{
            //TODO: exeption, if second value == 0;
            result /= secondValue;
            break;
        }
        default:
            _value = [self calculate:secondValue];
            break;
    }
    return secondValue;
    }
@end