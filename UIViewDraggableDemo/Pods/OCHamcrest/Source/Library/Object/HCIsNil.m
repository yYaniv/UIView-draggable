//  OCHamcrest by Jon Reid, http://qualitycoding.org/about/
//  Copyright 2016 hamcrest.org. See LICENSE.txt

#import "HCIsNil.h"

#import "HCIsNot.h"


@implementation HCIsNil

- (BOOL)matches:(id)item
{
    return item == nil;
}

- (void)describeTo:(id <HCDescription>)description
{
    [description appendText:@"nil"];
}

@end


id HC_nilValue()
{
    return [[HCIsNil alloc] init];
}

id HC_notNilValue()
{
    return HC_isNot([[HCIsNil alloc] init]);
}
