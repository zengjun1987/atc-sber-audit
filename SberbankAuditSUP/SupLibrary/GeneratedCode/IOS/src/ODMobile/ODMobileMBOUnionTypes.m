/*
 Generated by Sybase Unwired Platform 
 Compiler version - 2.1.3.358
*/ 

#import "ODMobileMBOUnionTypes.h"
#import "ODMobileMBOUnionTypesMetaData.h"
#import "SUPJsonObject.h"
#import "ODMobileODMobileDB.h"
#import "SUPEntityDelegate.h"
#import "SUPEntityMetaDataRBS.h"
#import "SUPQuery.h"
#import "ODMobileKeyGenerator.h"
#import "ODMobileLocalKeyGenerator.h"
#import "ODMobileLogRecordImpl.h"

@implementation ODMobileMBOUnionTypes

@synthesize UNION_TYPE_ID = _UNION_TYPE_ID;
@synthesize UNION_TYPE_NAME = _UNION_TYPE_NAME;
@synthesize UNION_TYPE_KEY = _UNION_TYPE_KEY;
@synthesize surrogateKey = _surrogateKey;

- (int64_t)surrogateKey
{
    return _surrogateKey;
}

- (void)setUNION_TYPE_ID:(NSString*)newUNION_TYPE_ID
{
    if (newUNION_TYPE_ID != self->_UNION_TYPE_ID)
    {
		[self->_UNION_TYPE_ID release];
        self->_UNION_TYPE_ID = [newUNION_TYPE_ID retain];
        self.isDirty = YES;
    }
}

- (void)setUNION_TYPE_NAME:(NSString*)newUNION_TYPE_NAME
{
    if (newUNION_TYPE_NAME != self->_UNION_TYPE_NAME)
    {
		[self->_UNION_TYPE_NAME release];
        self->_UNION_TYPE_NAME = [newUNION_TYPE_NAME retain];
        self.isDirty = YES;
    }
}

- (void)setUNION_TYPE_KEY:(NSString*)newUNION_TYPE_KEY
{
    if (newUNION_TYPE_KEY != self->_UNION_TYPE_KEY)
    {
		[self->_UNION_TYPE_KEY release];
        self->_UNION_TYPE_KEY = [newUNION_TYPE_KEY retain];
        self.isDirty = YES;
    }
}

- (void)setSurrogateKey:(int64_t)newSurrogateKey
{
    if (newSurrogateKey != self->_surrogateKey)
    {
        self->_surrogateKey = newSurrogateKey;
        self.isNew = YES;
    }
}

static SUPEntityDelegate *g_ODMobileMBOUnionTypes_delegate = nil;

+ (SUPEntityDelegate *) delegate
{
	@synchronized(self) {
		if (g_ODMobileMBOUnionTypes_delegate == nil) {
			g_ODMobileMBOUnionTypes_delegate = [[SUPEntityDelegate alloc] initWithName:@"ODMobileMBOUnionTypes" clazz:[self class]
				metaData:[self metaData] dbDelegate:[ODMobileODMobileDB delegate] database:[ODMobileODMobileDB instance]];
		}
	}
	
	return [[g_ODMobileMBOUnionTypes_delegate retain] autorelease];
}

static SUPEntityMetaDataRBS* ODMobileMBOUnionTypes_META_DATA;

+ (SUPEntityMetaDataRBS*)metaData
{
    if (ODMobileMBOUnionTypes_META_DATA == nil) {
		ODMobileMBOUnionTypes_META_DATA = [[ODMobileMBOUnionTypesMetaData alloc] init];
	}
	
	return ODMobileMBOUnionTypes_META_DATA;
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
        self.classMetaData = [ODMobileMBOUnionTypes metaData];
        [self setEntityDelegate:(SUPEntityDelegate*)[ODMobileMBOUnionTypes delegate]];
    }
    return self;    
}

- (void)dealloc
{
    if(_UNION_TYPE_ID)
    {
        [_UNION_TYPE_ID release];
        _UNION_TYPE_ID = nil;
    }
    if(_UNION_TYPE_NAME)
    {
        [_UNION_TYPE_NAME release];
        _UNION_TYPE_NAME = nil;
    }
    if(_UNION_TYPE_KEY)
    {
        [_UNION_TYPE_KEY release];
        _UNION_TYPE_KEY = nil;
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

+ (ODMobileMBOUnionTypes*)find:(int64_t)id_
{
    SUPObjectList *keys = [SUPObjectList getInstance];
    [keys add:[NSNumber numberWithLong:id_]];
    return (ODMobileMBOUnionTypes*)[(SUPEntityDelegate*)([[self class] delegate]) findEntityWithKeys:keys];
}

+ (SUPObjectList*)findWithQuery:(SUPQuery*)query
{
    return (SUPObjectList*)[(SUPEntityDelegate*)([[self class] delegate])  findWithQuery:query:[ODMobileMBOUnionTypes class]];
}

- (int64_t)_pk
{
    return (int64_t)[[self i_pk] longValue];
}

+ (ODMobileMBOUnionTypes*)load:(int64_t)id_
{
    return (ODMobileMBOUnionTypes*)[(SUPEntityDelegate*)([[self class] delegate]) load:[NSNumber numberWithLong:id_]];
}

+ (ODMobileMBOUnionTypes*)getInstance
{
    ODMobileMBOUnionTypes* me = [[ODMobileMBOUnionTypes alloc] init];
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
- (ODMobileMBOUnionTypes*)getDownloadState
{
    return (ODMobileMBOUnionTypes*)[self i_getDownloadState];
}

- (ODMobileMBOUnionTypes*) getOriginalState
{
    return (ODMobileMBOUnionTypes*)[self i_getOriginalState];
}
-(SUPLong) getAttributeLong:(int)id_
{
    switch(id_)
    {
    case 74:
        return self.surrogateKey;
    default:
         return [super getAttributeLong:id_];
    }
}

-(void) setAttributeLong:(int)id_:(SUPLong)v
{
    switch(id_)
    {
    case 74:
        self.surrogateKey = v;
        break;;
    default:
        [super setAttributeLong:id_:v];
        break;;
    }
}
-(SUPString) getAttributeNullableString:(int)id_
{
    switch(id_)
    {
    case 72:
        return self.UNION_TYPE_NAME;
    case 73:
        return self.UNION_TYPE_KEY;
    default:
         return [super getAttributeNullableString:id_];
    }
}

-(void) setAttributeNullableString:(int)id_:(SUPString)v
{
    switch(id_)
    {
    case 72:
        self.UNION_TYPE_NAME = v;
        break;;
    case 73:
        self.UNION_TYPE_KEY = v;
        break;;
    default:
        [super setAttributeNullableString:id_:v];
        break;;
    }
}
-(SUPString) getAttributeString:(int)id_
{
    switch(id_)
    {
    case 71:
        return self.UNION_TYPE_ID;
    default:
         return [super getAttributeString:id_];
    }
}

-(void) setAttributeString:(int)id_:(SUPString)v
{
    switch(id_)
    {
    case 71:
        self.UNION_TYPE_ID = v;
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
   return [ODMobileLogRecordImpl findByEntity:@"MBOUnionTypes":[self keyToString]];
}




- (NSString*)toString
{
	NSString* str = [NSString stringWithFormat:@"\
	MBOUnionTypes = \n\
	    UNION_TYPE_ID = %@,\n\
	    UNION_TYPE_NAME = %@,\n\
	    UNION_TYPE_KEY = %@,\n\
	    pending = %i,\n\
	    pendingChange = %c,\n\
	    replayPending = %qi,\n\
	    replayFailure = %qi,\n\
	    surrogateKey = %qi,\n\
	    replayCounter = %qi,\n\
	    disableSubmit = %i,\n\
	    isNew = %i,\n\
        isDirty = %i,\n\
        isDeleted = %i,\n\
	\n"
    	,self.UNION_TYPE_ID
    	,self.UNION_TYPE_NAME
    	,self.UNION_TYPE_KEY
    	,self.pending
    	,self.pendingChange
    	,self.replayPending
    	,self.replayFailure
    	,self.surrogateKey
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




+ (SUPObjectList*)findAll
{
	return [self findAll:0 take:INT_MAX]; 
}


	

+ (SUPObjectList*)findAll:(int32_t)skip take:(int32_t)take
{
	NSMutableString *sql = nil;
	NSMutableString *_selectSQL = nil;
	_selectSQL = [[[NSMutableString alloc] initWithCapacity:265] autorelease];
	[_selectSQL appendString:@" x.\"a\",x.\"b\",x.\"c\",x.\"_pf\",x.\"_pc\",x.\"_rp\",x.\"_rf\",x.\"d\",x.\"_rc\",x.\"_ds\" FROM \"odmobile_1_20_mbouniontypes\" x where (((x.\"_pf\" = 1 or not exists (select x_os.\"d\" from \"odmobile_1_20_mbouniontypes_os\" x_os where x_os.\"d\" = x.\"d\"))))"];
	sql = [[NSMutableString alloc] initWithFormat:@"select %@", _selectSQL];
	[sql autorelease];
	sql = [[NSMutableString alloc] initWithFormat:@"select %@", _selectSQL];
	[sql autorelease];
	SUPStringList *ids = [SUPStringList listWithCapacity:0];
	SUPObjectList *dts = [SUPObjectList getInstance];
	SUPObjectList* values = [SUPObjectList getInstance];
	return (SUPObjectList*)[[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withIDs:ids withSkip:skip withTake:take withClass:[ODMobileMBOUnionTypes class]];
}



+ (ODMobileMBOUnionTypes*)findByPrimaryKey:(NSString*)uNION_TYPE_ID
{
	NSMutableString *sql = nil;
	NSMutableString *_selectSQL = nil;
	_selectSQL = [[[NSMutableString alloc] initWithCapacity:290] autorelease];
	[_selectSQL appendString:@"SELECT x.\"a\",x.\"b\",x.\"c\",x.\"_pf\",x.\"_pc\",x.\"_rp\",x.\"_rf\",x.\"d\",x.\"_rc\",x.\"_ds\" FROM \"odmobile_1_20_mbouniontypes\" x WHERE (((x.\"_pf\" = 1 or not exists (select x_os.\"d\" from \"odmobile_1_20_mbouniontypes_os\" x_os where x_os.\"d\" = x.\"d\")))) and ( x.\"a\" = ?)"];
	sql = [[NSMutableString alloc] initWithFormat:@"%@", _selectSQL];
	[sql autorelease];
	SUPStringList *ids = [SUPStringList listWithCapacity:0];
	SUPObjectList *dts = [SUPObjectList getInstance];
	[dts addObject:[SUPDataType forName:@"string"]];
	SUPObjectList* values = [SUPObjectList getInstance];
	[values addObject:uNION_TYPE_ID];
	
	SUPObjectList* res = (SUPObjectList*)[[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withIDs:ids withClass:[ODMobileMBOUnionTypes class]];
	if(res && ([res size] > 0))
	{   
		ODMobileMBOUnionTypes* cus = (ODMobileMBOUnionTypes*)[res item:0];
	    return cus;
	}
	else
	    return nil;
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