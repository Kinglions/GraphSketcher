// Copyright 2003-2013 Omni Development, Inc.  All rights reserved.
//
// This software may only be used and reproduced according to the
// terms in the file OmniSourceLicense.html, which should be
// distributed with this project and can also be found at
// <http://www.omnigroup.com/developer/sourcecode/sourcelicense/>.

#import "RSGraphElementSelector.h"


@implementation RSGraphElementSelector

- (void)dealloc;
{
    [_selection release];
    [super dealloc];
}

@synthesize selection = _selection;

- (BOOL)deselect;
{
    BOOL wasSelected = [self selected];
    
    self.selection = nil;
    
    return wasSelected;
}

- (BOOL)selected;
{
    return _selection != nil;
}

@end
