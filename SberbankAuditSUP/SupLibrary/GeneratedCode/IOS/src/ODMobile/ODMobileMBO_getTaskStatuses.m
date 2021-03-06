/*
 Generated by Sybase Unwired Platform 
 Compiler version - 2.1.3.358
*/ 

#import "ODMobileMBO_getTaskStatuses.h"
#import "ODMobileMBO_getTaskStatusesMetaData.h"
#import "SUPJsonObject.h"
#import "ODMobileODMobileDB.h"
#import "SUPEntityDelegate.h"
#import "SUPEntityMetaDataRBS.h"
#import "SUPQuery.h"
#import "ODMobileKeyGenerator.h"
#import "ODMobileLocalKeyGenerator.h"
#import "ODMobileLogRecordImpl.h"

@implementation ODMobileMBO_getTaskStatuses

@synthesize TASK_STATUS_ID = _TASK_STATUS_ID;
@synthesize TASK_STATUS_NAME = _TASK_STATUS_NAME;
@synthesize TASK_STATUS_KEY = _TASK_STATUS_KEY;
@synthesize surrogateKey = _surrogateKey;

- (int64_t)surrogateKey
{
    return _surrogateKey;
}

- (void)setTASK_STATUS_ID:(NSString*)newTASK_STATUS_ID
{
    if (newTASK_STATUS_ID != self->_TASK_STATUS_ID)
    {
		[self->_TASK_STATUS_ID release];
        self->_TASK_STATUS_ID = [newTASK_STATUS_ID retain];
        self.isDirty = YES;
    }
}

- (void)setTASK_STATUS_NAME:(NSString*)newTASK_STATUS_NAME
{
    if (newTASK_STATUS_NAME != self->_TASK_STATUS_NAME)
    {
		[self->_TASK_STATUS_NAME release];
        self->_TASK_STATUS_NAME = [newTASK_STATUS_NAME retain];
        self.isDirty = YES;
    }
}

- (void)setTASK_STATUS_KEY:(NSString*)newTASK_STATUS_KEY
{
    if (newTASK_STATUS_KEY != self->_TASK_STATUS_KEY)
    {
		[self->_TASK_STATUS_KEY release];
        self->_TASK_STATUS_KEY = [newTASK_STATUS_KEY retain];
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

static SUPEntityDelegate *g_ODMobileMBO_getTaskStatuses_delegate = nil;

+ (SUPEntityDelegate *) delegate
{
	@synchronized(self) {
		if (g_ODMobileMBO_getTaskStatuses_delegate == nil) {
			g_ODMobileMBO_getTaskStatuses_delegate = [[SUPEntityDelegate alloc] initWithName:@"ODMobileMBO_getTaskStatuses" clazz:[self class]
				metaData:[self metaData] dbDelegate:[ODMobileODMobileDB delegate] database:[ODMobileODMobileDB instance]];
		}
	}
	
	return [[g_ODMobileMBO_getTaskStatuses_delegate retain] autorelease];
}

static SUPEntityMetaDataRBS* ODMobileMBO_getTaskStatuses_META_DATA;

+ (SUPEntityMetaDataRBS*)metaData
{
    if (ODMobileMBO_getTaskStatuses_META_DATA == nil) {
		ODMobileMBO_getTaskStatuses_META_DATA = [[ODMobileMBO_getTaskStatusesMetaData alloc] init];
	}
	
	return ODMobileMBO_getTaskStatuses_META_DATA;
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
        self.classMetaData = [ODMobileMBO_getTaskStatuses metaData];
        [self setEntityDelegate:(SUPEntityDelegate*)[ODMobileMBO_getTaskStatuses delegate]];
    }
    return self;    
}

- (void)dealloc
{
    if(_TASK_STATUS_ID)
    {
        [_TASK_STATUS_ID release];
        _TASK_STATUS_ID = nil;
    }
    if(_TASK_STATUS_NAME)
    {
        [_TASK_STATUS_NAME release];
        _TASK_STATUS_NAME = nil;
    }
    if(_TASK_STATUS_KEY)
    {
        [_TASK_STATUS_KEY release];
        _TASK_STATUS_KEY = nil;
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

+ (ODMobileMBO_getTaskStatuses*)find:(int64_t)id_
{
    SUPObjectList *keys = [SUPObjectList getInstance];
    [keys add:[NSNumber numberWithLong:id_]];
    return (ODMobileMBO_getTaskStatuses*)[(SUPEntityDelegate*)([[self class] delegate]) findEntityWithKeys:keys];
}

+ (SUPObjectList*)findWithQuery:(SUPQuery*)query
{
    return (SUPObjectList*)[(SUPEntityDelegate*)([[self class] delegate])  findWithQuery:query:[ODMobileMBO_getTaskStatuses class]];
}

- (int64_t)_pk
{
    return (int64_t)[[self i_pk] longValue];
}

+ (ODMobileMBO_getTaskStatuses*)load:(int64_t)id_
{
    return (ODMobileMBO_getTaskStatuses*)[(SUPEntityDelegate*)([[self class] delegate]) load:[NSNumber numberWithLong:id_]];
}

+ (ODMobileMBO_getTaskStatuses*)getInstance
{
    ODMobileMBO_getTaskStatuses* me = [[ODMobileMBO_getTaskStatuses alloc] init];
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
- (ODMobileMBO_getTaskStatuses*)getDownloadState
{
    return (ODMobileMBO_getTaskStatuses*)[self i_getDownloadState];
}

- (ODMobileMBO_getTaskStatuses*) getOriginalState
{
    return (ODMobileMBO_getTaskStatuses*)[self i_getOriginalState];
}
-(SUPLong) getAttributeLong:(int)id_
{
    switch(id_)
    {
    case 820:
        return self.surrogateKey;
    default:
         return [super getAttributeLong:id_];
    }
}

-(void) setAttributeLong:(int)id_:(SUPLong)v
{
    switch(id_)
    {
    case 820:
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
    case 818:
        return self.TASK_STATUS_NAME;
    case 819:
        return self.TASK_STATUS_KEY;
    default:
         return [super getAttributeNullableString:id_];
    }
}

-(void) setAttributeNullableString:(int)id_:(SUPString)v
{
    switch(id_)
    {
    case 818:
        self.TASK_STATUS_NAME = v;
        break;;
    case 819:
        self.TASK_STATUS_KEY = v;
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
    case 817:
        return self.TASK_STATUS_ID;
    default:
         return [super getAttributeString:id_];
    }
}

-(void) setAttributeString:(int)id_:(SUPString)v
{
    switch(id_)
    {
    case 817:
        self.TASK_STATUS_ID = v;
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
   return [ODMobileLogRecordImpl findByEntity:@"MBO_getTaskStatuses":[self keyToString]];
}




- (NSString*)toString
{
	NSString* str = [NSString stringWithFormat:@"\
	MBO_getTaskStatuses = \n\
	    TASK_STATUS_ID = %@,\n\
	    TASK_STATUS_NAME = %@,\n\
	    TASK_STATUS_KEY = %@,\n\
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
    	,self.TASK_STATUS_ID
    	,self.TASK_STATUS_NAME
    	,self.TASK_STATUS_KEY
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
	_selectSQL = [[[NSMutableString alloc] initWithCapacity:277] autorelease];
	[_selectSQL appendString:@" x.\"a\",x.\"b\",x.\"c\",x.\"_pf\",x.\"_pc\",x.\"_rp\",x.\"_rf\",x.\"d\",x.\"_rc\",x.\"_ds\" FROM \"odmobile_1_21_mbo_gettaskstatuses\" x where (((x.\"_pf\" = 1 or not exists (select x_os.\"d\" from \"odmobile_1_21_mbo_gettaskstatuses_os\" x_os where x_os.\"d\" = x.\"d\"))))"];
	sql = [[NSMutableString alloc] initWithFormat:@"select %@", _selectSQL];
	[sql autorelease];
	sql = [[NSMutableString alloc] initWithFormat:@"select %@", _selectSQL];
	[sql autorelease];
	SUPStringList *ids = [SUPStringList listWithCapacity:0];
	SUPObjectList *dts = [SUPObjectList getInstance];
	SUPObjectList* values = [SUPObjectList getInstance];
	return (SUPObjectList*)[[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withIDs:ids withSkip:skip withTake:take withClass:[ODMobileMBO_getTaskStatuses class]];
}



+ (ODMobileMBO_getTaskStatuses*)findByPrimaryKey:(NSString*)tASK_STATUS_ID
{
	NSMutableString *sql = nil;
	NSMutableString *_selectSQL = nil;
	_selectSQL = [[[NSMutableString alloc] initWithCapacity:302] autorelease];
	[_selectSQL appendString:@"SELECT x.\"a\",x.\"b\",x.\"c\",x.\"_pf\",x.\"_pc\",x.\"_rp\",x.\"_rf\",x.\"d\",x.\"_rc\",x.\"_ds\" FROM \"odmobile_1_21_mbo_gettaskstatuses\" x WHERE (((x.\"_pf\" = 1 or not exists (select x_os.\"d\" from \"odmobile_1_21_mbo_gettaskstatuses_os\" x_os where x_os.\"d\" = x.\"d\")))) and ( x.\"a\" = ?)"];
	sql = [[NSMutableString alloc] initWithFormat:@"%@", _selectSQL];
	[sql autorelease];
	SUPStringList *ids = [SUPStringList listWithCapacity:0];
	SUPObjectList *dts = [SUPObjectList getInstance];
	[dts addObject:[SUPDataType forName:@"string"]];
	SUPObjectList* values = [SUPObjectList getInstance];
	[values addObject:tASK_STATUS_ID];
	
	SUPObjectList* res = (SUPObjectList*)[[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withIDs:ids withClass:[ODMobileMBO_getTaskStatuses class]];
	if(res && ([res size] > 0))
	{   
		ODMobileMBO_getTaskStatuses* cus = (ODMobileMBO_getTaskStatuses*)[res item:0];
	    return cus;
	}
	else
	    return nil;
}



+ (ODMobileMBO_getTaskStatuses*)getByKey:(NSString*)statusKey
{
	NSMutableString *sql = nil;
	NSMutableString *_selectSQL = nil;
	_selectSQL = [[[NSMutableString alloc] initWithCapacity:302] autorelease];
	[_selectSQL appendString:@"SELECT x.\"a\",x.\"b\",x.\"c\",x.\"_pf\",x.\"_pc\",x.\"_rp\",x.\"_rf\",x.\"d\",x.\"_rc\",x.\"_ds\" FROM \"odmobile_1_21_mbo_gettaskstatuses\" x WHERE (((x.\"_pf\" = 1 or not exists (select x_os.\"d\" from \"odmobile_1_21_mbo_gettaskstatuses_os\" x_os where x_os.\"d\" = x.\"d\")))) and ( x.\"c\" = ?)"];
	sql = [[NSMutableString alloc] initWithFormat:@"%@", _selectSQL];
	[sql autorelease];
	SUPStringList *ids = [SUPStringList listWithCapacity:0];
	SUPObjectList *dts = [SUPObjectList getInstance];
	[dts addObject:[SUPDataType forName:@"string?"]];
	SUPObjectList* values = [SUPObjectList getInstance];
	[values addObject:statusKey];
	
	SUPObjectList* res = (SUPObjectList*)[[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withIDs:ids withClass:[ODMobileMBO_getTaskStatuses class]];
	if(res && ([res size] > 0))
	{   
		ODMobileMBO_getTaskStatuses* cus = (ODMobileMBO_getTaskStatuses*)[res item:0];
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