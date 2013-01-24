/*
 Generated by Sybase Unwired Platform 
 Compiler version - 2.1.3.358
*/ 

#import "ODMobileMBOBusinessProcess.h"
#import "ODMobileMBOBusinessProcessMetaData.h"
#import "SUPJsonObject.h"
#import "ODMobileODMobileDB.h"
#import "SUPEntityDelegate.h"
#import "SUPEntityMetaDataRBS.h"
#import "SUPQuery.h"
#import "ODMobileKeyGenerator.h"
#import "ODMobileLocalKeyGenerator.h"
#import "ODMobileLogRecordImpl.h"

@implementation ODMobileMBOBusinessProcess

@synthesize BUSINESS_PROCESS_ID = _BUSINESS_PROCESS_ID;
@synthesize BUSINESS_PROCESS_KEY = _BUSINESS_PROCESS_KEY;
@synthesize BUSINESS_PROCESS_NAME = _BUSINESS_PROCESS_NAME;
@synthesize surrogateKey = _surrogateKey;

- (int64_t)surrogateKey
{
    return _surrogateKey;
}

- (void)setBUSINESS_PROCESS_ID:(NSString*)newBUSINESS_PROCESS_ID
{
    if (newBUSINESS_PROCESS_ID != self->_BUSINESS_PROCESS_ID)
    {
		[self->_BUSINESS_PROCESS_ID release];
        self->_BUSINESS_PROCESS_ID = [newBUSINESS_PROCESS_ID retain];
        self.isDirty = YES;
    }
}

- (void)setBUSINESS_PROCESS_KEY:(NSString*)newBUSINESS_PROCESS_KEY
{
    if (newBUSINESS_PROCESS_KEY != self->_BUSINESS_PROCESS_KEY)
    {
		[self->_BUSINESS_PROCESS_KEY release];
        self->_BUSINESS_PROCESS_KEY = [newBUSINESS_PROCESS_KEY retain];
        self.isDirty = YES;
    }
}

- (void)setBUSINESS_PROCESS_NAME:(NSString*)newBUSINESS_PROCESS_NAME
{
    if (newBUSINESS_PROCESS_NAME != self->_BUSINESS_PROCESS_NAME)
    {
		[self->_BUSINESS_PROCESS_NAME release];
        self->_BUSINESS_PROCESS_NAME = [newBUSINESS_PROCESS_NAME retain];
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

static SUPEntityDelegate *g_ODMobileMBOBusinessProcess_delegate = nil;

+ (SUPEntityDelegate *) delegate
{
	@synchronized(self) {
		if (g_ODMobileMBOBusinessProcess_delegate == nil) {
			g_ODMobileMBOBusinessProcess_delegate = [[SUPEntityDelegate alloc] initWithName:@"ODMobileMBOBusinessProcess" clazz:[self class]
				metaData:[self metaData] dbDelegate:[ODMobileODMobileDB delegate] database:[ODMobileODMobileDB instance]];
		}
	}
	
	return [[g_ODMobileMBOBusinessProcess_delegate retain] autorelease];
}

static SUPEntityMetaDataRBS* ODMobileMBOBusinessProcess_META_DATA;

+ (SUPEntityMetaDataRBS*)metaData
{
    if (ODMobileMBOBusinessProcess_META_DATA == nil) {
		ODMobileMBOBusinessProcess_META_DATA = [[ODMobileMBOBusinessProcessMetaData alloc] init];
	}
	
	return ODMobileMBOBusinessProcess_META_DATA;
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
        self.classMetaData = [ODMobileMBOBusinessProcess metaData];
        [self setEntityDelegate:(SUPEntityDelegate*)[ODMobileMBOBusinessProcess delegate]];
    }
    return self;    
}

- (void)dealloc
{
    if(_BUSINESS_PROCESS_ID)
    {
        [_BUSINESS_PROCESS_ID release];
        _BUSINESS_PROCESS_ID = nil;
    }
    if(_BUSINESS_PROCESS_KEY)
    {
        [_BUSINESS_PROCESS_KEY release];
        _BUSINESS_PROCESS_KEY = nil;
    }
    if(_BUSINESS_PROCESS_NAME)
    {
        [_BUSINESS_PROCESS_NAME release];
        _BUSINESS_PROCESS_NAME = nil;
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

+ (ODMobileMBOBusinessProcess*)find:(int64_t)id_
{
    SUPObjectList *keys = [SUPObjectList getInstance];
    [keys add:[NSNumber numberWithLong:id_]];
    return (ODMobileMBOBusinessProcess*)[(SUPEntityDelegate*)([[self class] delegate]) findEntityWithKeys:keys];
}

+ (SUPObjectList*)findWithQuery:(SUPQuery*)query
{
    return (SUPObjectList*)[(SUPEntityDelegate*)([[self class] delegate])  findWithQuery:query:[ODMobileMBOBusinessProcess class]];
}

- (int64_t)_pk
{
    return (int64_t)[[self i_pk] longValue];
}

+ (ODMobileMBOBusinessProcess*)load:(int64_t)id_
{
    return (ODMobileMBOBusinessProcess*)[(SUPEntityDelegate*)([[self class] delegate]) load:[NSNumber numberWithLong:id_]];
}

+ (ODMobileMBOBusinessProcess*)getInstance
{
    ODMobileMBOBusinessProcess* me = [[ODMobileMBOBusinessProcess alloc] init];
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
- (ODMobileMBOBusinessProcess*)getDownloadState
{
    return (ODMobileMBOBusinessProcess*)[self i_getDownloadState];
}

- (ODMobileMBOBusinessProcess*) getOriginalState
{
    return (ODMobileMBOBusinessProcess*)[self i_getOriginalState];
}
-(SUPLong) getAttributeLong:(int)id_
{
    switch(id_)
    {
    case 21:
        return self.surrogateKey;
    default:
         return [super getAttributeLong:id_];
    }
}

-(void) setAttributeLong:(int)id_:(SUPLong)v
{
    switch(id_)
    {
    case 21:
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
    case 19:
        return self.BUSINESS_PROCESS_KEY;
    case 20:
        return self.BUSINESS_PROCESS_NAME;
    default:
         return [super getAttributeNullableString:id_];
    }
}

-(void) setAttributeNullableString:(int)id_:(SUPString)v
{
    switch(id_)
    {
    case 19:
        self.BUSINESS_PROCESS_KEY = v;
        break;;
    case 20:
        self.BUSINESS_PROCESS_NAME = v;
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
    case 18:
        return self.BUSINESS_PROCESS_ID;
    default:
         return [super getAttributeString:id_];
    }
}

-(void) setAttributeString:(int)id_:(SUPString)v
{
    switch(id_)
    {
    case 18:
        self.BUSINESS_PROCESS_ID = v;
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
   return [ODMobileLogRecordImpl findByEntity:@"MBOBusinessProcess":[self keyToString]];
}




- (NSString*)toString
{
	NSString* str = [NSString stringWithFormat:@"\
	MBOBusinessProcess = \n\
	    BUSINESS_PROCESS_ID = %@,\n\
	    BUSINESS_PROCESS_KEY = %@,\n\
	    BUSINESS_PROCESS_NAME = %@,\n\
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
    	,self.BUSINESS_PROCESS_ID
    	,self.BUSINESS_PROCESS_KEY
    	,self.BUSINESS_PROCESS_NAME
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
	_selectSQL = [[[NSMutableString alloc] initWithCapacity:275] autorelease];
	[_selectSQL appendString:@" x.\"a\",x.\"b\",x.\"c\",x.\"_pf\",x.\"_pc\",x.\"_rp\",x.\"_rf\",x.\"d\",x.\"_rc\",x.\"_ds\" FROM \"odmobile_1_20_mbobusinessprocess\" x where (((x.\"_pf\" = 1 or not exists (select x_os.\"d\" from \"odmobile_1_20_mbobusinessprocess_os\" x_os where x_os.\"d\" = x.\"d\"))))"];
	sql = [[NSMutableString alloc] initWithFormat:@"select %@", _selectSQL];
	[sql autorelease];
	sql = [[NSMutableString alloc] initWithFormat:@"select %@", _selectSQL];
	[sql autorelease];
	SUPStringList *ids = [SUPStringList listWithCapacity:0];
	SUPObjectList *dts = [SUPObjectList getInstance];
	SUPObjectList* values = [SUPObjectList getInstance];
	return (SUPObjectList*)[[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withIDs:ids withSkip:skip withTake:take withClass:[ODMobileMBOBusinessProcess class]];
}



+ (ODMobileMBOBusinessProcess*)findByPrimaryKey:(NSString*)bUSINESS_PROCESS_ID
{
	NSMutableString *sql = nil;
	NSMutableString *_selectSQL = nil;
	_selectSQL = [[[NSMutableString alloc] initWithCapacity:300] autorelease];
	[_selectSQL appendString:@"SELECT x.\"a\",x.\"b\",x.\"c\",x.\"_pf\",x.\"_pc\",x.\"_rp\",x.\"_rf\",x.\"d\",x.\"_rc\",x.\"_ds\" FROM \"odmobile_1_20_mbobusinessprocess\" x WHERE (((x.\"_pf\" = 1 or not exists (select x_os.\"d\" from \"odmobile_1_20_mbobusinessprocess_os\" x_os where x_os.\"d\" = x.\"d\")))) and ( x.\"a\" = ?)"];
	sql = [[NSMutableString alloc] initWithFormat:@"%@", _selectSQL];
	[sql autorelease];
	SUPStringList *ids = [SUPStringList listWithCapacity:0];
	SUPObjectList *dts = [SUPObjectList getInstance];
	[dts addObject:[SUPDataType forName:@"string"]];
	SUPObjectList* values = [SUPObjectList getInstance];
	[values addObject:bUSINESS_PROCESS_ID];
	
	SUPObjectList* res = (SUPObjectList*)[[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withIDs:ids withClass:[ODMobileMBOBusinessProcess class]];
	if(res && ([res size] > 0))
	{   
		ODMobileMBOBusinessProcess* cus = (ODMobileMBOBusinessProcess*)[res item:0];
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