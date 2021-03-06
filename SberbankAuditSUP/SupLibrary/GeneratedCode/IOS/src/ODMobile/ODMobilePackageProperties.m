/*
 Generated by Sybase Unwired Platform 
 Compiler version - 2.1.3.358
*/ 

#import "ODMobilePackageProperties.h"
#import "ODMobilePackagePropertiesMetaData.h"
#import "SUPJsonObject.h"
#import "ODMobileODMobileDB.h"
#import "SUPEntityDelegate.h"
#import "SUPEntityMetaDataRBS.h"
#import "SUPQuery.h"
#import "ODMobileKeyGenerator.h"
#import "ODMobileLocalKeyGenerator.h"
#import "ODMobileLogRecordImpl.h"

@implementation ODMobilePackageProperties

@synthesize value = _value;
@synthesize key = _key;

- (NSString*)value
{

    return _value;
}




- (NSString*)key
{
    return _key;
}

- (void)setValue:(NSString*)newValue
{
    if (newValue != self->_value)
    {
		[self->_value release];
        self->_value = [newValue retain];
        self.isDirty = YES;
    }
}

- (void)setKey:(NSString*)newKey
{
    if (newKey != self->_key)
    {
		[self->_key release];
        self->_key = [newKey retain];
        self.isNew = YES;
    }
}

static SUPEntityDelegate *g_ODMobilePackageProperties_delegate = nil;

+ (SUPEntityDelegate *) delegate
{
	@synchronized(self) {
		if (g_ODMobilePackageProperties_delegate == nil) {
			g_ODMobilePackageProperties_delegate = [[SUPEntityDelegate alloc] initWithName:@"ODMobilePackageProperties" clazz:[self class]
				metaData:[self metaData] dbDelegate:[ODMobileODMobileDB delegate] database:[ODMobileODMobileDB instance]];
		}
	}
	
	return [[g_ODMobilePackageProperties_delegate retain] autorelease];
}

static SUPEntityMetaDataRBS* ODMobilePackageProperties_META_DATA;

+ (SUPEntityMetaDataRBS*)metaData
{
    if (ODMobilePackageProperties_META_DATA == nil) {
		ODMobilePackageProperties_META_DATA = [[ODMobilePackagePropertiesMetaData alloc] init];
	}
	
	return ODMobilePackageProperties_META_DATA;
}

- (SUPClassMetaDataRBS*)getClassMetaData
{
    return [[self class] metaData];
}

- (void)clearRelationshipObjects
{
}

+ (NSObject<SUPCallbackHandler>*)callbackHandler
{
	return [[self delegate] callbackHandler];
}

+ (void)registerCallbackHandler:(NSObject<SUPCallbackHandler>*)newCallbackHandler
{
	[[self delegate] registerCallbackHandler:newCallbackHandler];
}
- (id) init
{
    if ((self = [super init]))
    {
        self.classMetaData = [ODMobilePackageProperties metaData];
        [self setEntityDelegate:(SUPEntityDelegate*)[ODMobilePackageProperties delegate]];
    }
    return self;    
}

- (void)dealloc
{
    if(_value)
    {
        [_value release];
        _value = nil;
    }
    if(_key)
    {
        [_key release];
        _key = nil;
    }
	[super dealloc];
}


- (SUPJsonObject*)getAttributeJson:(int)id_
{
    switch(id_)
    {
        default:
        return [super getAttributeJson:id_];
    }

}
- (void)setAttributeJson:(int)id_:(SUPJsonObject*)value
{
    switch(id_)
    { 
        default:
            [super setAttributeJson:id_:value];
            break;
    }

}

+ (ODMobilePackageProperties*)find:(NSString*)id_
{
    SUPObjectList *keys = [SUPObjectList getInstance];
    [keys add:id_];
    return (ODMobilePackageProperties*)[(SUPEntityDelegate*)([[self class] delegate]) findEntityWithKeys:keys];
}

+ (SUPObjectList*)findWithQuery:(SUPQuery*)query
{
    return (SUPObjectList*)[(SUPEntityDelegate*)([[self class] delegate])  findWithQuery:query:[ODMobilePackageProperties class]];
}

- (NSString*)_pk
{
    return (NSString*)[self i_pk];
}

+ (ODMobilePackageProperties*)load:(NSString*)id_
{
    return (ODMobilePackageProperties*)[(SUPEntityDelegate*)([[self class] delegate]) load:id_];
}

+ (ODMobilePackageProperties*)getInstance
{
    ODMobilePackageProperties* me = [[ODMobilePackageProperties alloc] init];
    [me autorelease];
    return me;
}
- (SUPString)getLastOperation
{
    if (self.pendingChange == 'C')
    {
        return @"create";
    }
    else if (self.pendingChange == 'D')
    {
        return @"delete";
    }
    else if (self.pendingChange == 'U')
    {
        return @"update";
    }
    return @"";

}
+ (void)submitPendingOperations
{
    [[[self class] delegate] submitPendingOperations];
}

+ (void)cancelPendingOperations
{
    [[[self class] delegate] cancelPendingOperations];
}
- (ODMobilePackageProperties*)getDownloadState
{
    return (ODMobilePackageProperties*)[self i_getDownloadState];
}

- (ODMobilePackageProperties*) getOriginalState
{
    return (ODMobilePackageProperties*)[self i_getOriginalState];
}
-(SUPString) getAttributeString:(int)id_
{
    switch(id_)
    {
    case 914:
        return self.value;
    case 913:
        return self.key;
    default:
         return [super getAttributeString:id_];
    }
}

-(void) setAttributeString:(int)id_:(SUPString)v
{
    switch(id_)
    {
    case 914:
        self.value = v;
        break;;
    case 913:
        self.key = v;
        break;;
    default:
        [super setAttributeString:id_:v];
        break;;
    }
}
- (id)getAttributeLargeObject:(int)id_ loadFromDB:(BOOL)loadFromDB
{
    switch(id_)
    {
        default:
        return [super getAttributeJson:id_];
    }
}
- (void)setAttributeLargeObject:(int)id_:(id)value
{
    switch(id_)
    {
        default:
            [super setAttributeJson:id_:value];
            break;
    }

}
- (SUPObjectList*)getLogRecords
{
   return [ODMobileLogRecordImpl findByEntity:@"PackageProperties":[self keyToString]];
}




- (NSString*)toString
{
	NSString* str = [NSString stringWithFormat:@"\
	PackageProperties = \n\
	    value = %@,\n\
	    pending = %i,\n\
	    pendingChange = %c,\n\
	    replayPending = %qi,\n\
	    replayFailure = %qi,\n\
	    key = %@,\n\
	    replayCounter = %qi,\n\
	    disableSubmit = %i,\n\
	    isNew = %i,\n\
        isDirty = %i,\n\
        isDeleted = %i,\n\
	\n"
    	,self.value
    	,self.pending
    	,self.pendingChange
    	,self.replayPending
    	,self.replayFailure
    	,self.key
    	,self.replayCounter
    	,self.disableSubmit
		,self.isNew
		,self.isDirty
		,self.isDeleted
	];
	return str;

}

- (NSString*)description
{
	return [self toString];
}
+ (SUPObjectList*)getPendingObjects
{
    return (SUPObjectList*)[(SUPEntityDelegate*)[[self class] delegate] getPendingObjects];
}

+ (SUPObjectList*)getPendingObjects:(int32_t)skip take:(int32_t)take
{
    return (SUPObjectList*)[(SUPEntityDelegate*)[[self class] delegate] getPendingObjects:skip:take];
}


/*!
  @method
  @abstract Generated class method 
  @param query
  @throws SUPPersistenceException
 */
+ (int32_t)getSize:(SUPQuery*)query
{
    return [(SUPEntityDelegate*)([[self class] delegate]) getSize:query];
}

@end