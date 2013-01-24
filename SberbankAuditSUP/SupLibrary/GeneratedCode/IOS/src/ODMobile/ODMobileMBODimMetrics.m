/*
 Generated by Sybase Unwired Platform 
 Compiler version - 2.1.3.358
*/ 

#import "ODMobileMBODimMetrics.h"
#import "ODMobileMBODimMetricsMetaData.h"
#import "SUPJsonObject.h"
#import "ODMobileODMobileDB.h"
#import "SUPEntityDelegate.h"
#import "SUPEntityMetaDataRBS.h"
#import "SUPQuery.h"
#import "ODMobileKeyGenerator.h"
#import "ODMobileLocalKeyGenerator.h"
#import "ODMobileLogRecordImpl.h"

@implementation ODMobileMBODimMetrics

@synthesize METRIC_ID = _METRIC_ID;
@synthesize METRIC_NAME = _METRIC_NAME;
@synthesize METRIC_KEY = _METRIC_KEY;
@synthesize surrogateKey = _surrogateKey;

- (int64_t)surrogateKey
{
    return _surrogateKey;
}

- (void)setMETRIC_ID:(NSString*)newMETRIC_ID
{
    if (newMETRIC_ID != self->_METRIC_ID)
    {
		[self->_METRIC_ID release];
        self->_METRIC_ID = [newMETRIC_ID retain];
        self.isDirty = YES;
    }
}

- (void)setMETRIC_NAME:(NSString*)newMETRIC_NAME
{
    if (newMETRIC_NAME != self->_METRIC_NAME)
    {
		[self->_METRIC_NAME release];
        self->_METRIC_NAME = [newMETRIC_NAME retain];
        self.isDirty = YES;
    }
}

- (void)setMETRIC_KEY:(NSString*)newMETRIC_KEY
{
    if (newMETRIC_KEY != self->_METRIC_KEY)
    {
		[self->_METRIC_KEY release];
        self->_METRIC_KEY = [newMETRIC_KEY retain];
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

static SUPEntityDelegate *g_ODMobileMBODimMetrics_delegate = nil;

+ (SUPEntityDelegate *) delegate
{
	@synchronized(self) {
		if (g_ODMobileMBODimMetrics_delegate == nil) {
			g_ODMobileMBODimMetrics_delegate = [[SUPEntityDelegate alloc] initWithName:@"ODMobileMBODimMetrics" clazz:[self class]
				metaData:[self metaData] dbDelegate:[ODMobileODMobileDB delegate] database:[ODMobileODMobileDB instance]];
		}
	}
	
	return [[g_ODMobileMBODimMetrics_delegate retain] autorelease];
}

static SUPEntityMetaDataRBS* ODMobileMBODimMetrics_META_DATA;

+ (SUPEntityMetaDataRBS*)metaData
{
    if (ODMobileMBODimMetrics_META_DATA == nil) {
		ODMobileMBODimMetrics_META_DATA = [[ODMobileMBODimMetricsMetaData alloc] init];
	}
	
	return ODMobileMBODimMetrics_META_DATA;
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
        self.classMetaData = [ODMobileMBODimMetrics metaData];
        [self setEntityDelegate:(SUPEntityDelegate*)[ODMobileMBODimMetrics delegate]];
    }
    return self;    
}

- (void)dealloc
{
    if(_METRIC_ID)
    {
        [_METRIC_ID release];
        _METRIC_ID = nil;
    }
    if(_METRIC_NAME)
    {
        [_METRIC_NAME release];
        _METRIC_NAME = nil;
    }
    if(_METRIC_KEY)
    {
        [_METRIC_KEY release];
        _METRIC_KEY = nil;
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

+ (ODMobileMBODimMetrics*)find:(int64_t)id_
{
    SUPObjectList *keys = [SUPObjectList getInstance];
    [keys add:[NSNumber numberWithLong:id_]];
    return (ODMobileMBODimMetrics*)[(SUPEntityDelegate*)([[self class] delegate]) findEntityWithKeys:keys];
}

+ (SUPObjectList*)findWithQuery:(SUPQuery*)query
{
    return (SUPObjectList*)[(SUPEntityDelegate*)([[self class] delegate])  findWithQuery:query:[ODMobileMBODimMetrics class]];
}

- (int64_t)_pk
{
    return (int64_t)[[self i_pk] longValue];
}

+ (ODMobileMBODimMetrics*)load:(int64_t)id_
{
    return (ODMobileMBODimMetrics*)[(SUPEntityDelegate*)([[self class] delegate]) load:[NSNumber numberWithLong:id_]];
}

+ (ODMobileMBODimMetrics*)getInstance
{
    ODMobileMBODimMetrics* me = [[ODMobileMBODimMetrics alloc] init];
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
- (ODMobileMBODimMetrics*)getDownloadState
{
    return (ODMobileMBODimMetrics*)[self i_getDownloadState];
}

- (ODMobileMBODimMetrics*) getOriginalState
{
    return (ODMobileMBODimMetrics*)[self i_getOriginalState];
}
-(SUPLong) getAttributeLong:(int)id_
{
    switch(id_)
    {
    case 28:
        return self.surrogateKey;
    default:
         return [super getAttributeLong:id_];
    }
}

-(void) setAttributeLong:(int)id_:(SUPLong)v
{
    switch(id_)
    {
    case 28:
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
    case 26:
        return self.METRIC_NAME;
    case 27:
        return self.METRIC_KEY;
    default:
         return [super getAttributeNullableString:id_];
    }
}

-(void) setAttributeNullableString:(int)id_:(SUPString)v
{
    switch(id_)
    {
    case 26:
        self.METRIC_NAME = v;
        break;;
    case 27:
        self.METRIC_KEY = v;
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
    case 25:
        return self.METRIC_ID;
    default:
         return [super getAttributeString:id_];
    }
}

-(void) setAttributeString:(int)id_:(SUPString)v
{
    switch(id_)
    {
    case 25:
        self.METRIC_ID = v;
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
   return [ODMobileLogRecordImpl findByEntity:@"MBODimMetrics":[self keyToString]];
}




- (NSString*)toString
{
	NSString* str = [NSString stringWithFormat:@"\
	MBODimMetrics = \n\
	    METRIC_ID = %@,\n\
	    METRIC_NAME = %@,\n\
	    METRIC_KEY = %@,\n\
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
    	,self.METRIC_ID
    	,self.METRIC_NAME
    	,self.METRIC_KEY
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
	[_selectSQL appendString:@" x.\"a\",x.\"b\",x.\"c\",x.\"_pf\",x.\"_pc\",x.\"_rp\",x.\"_rf\",x.\"d\",x.\"_rc\",x.\"_ds\" FROM \"odmobile_1_20_mbodimmetrics\" x where (((x.\"_pf\" = 1 or not exists (select x_os.\"d\" from \"odmobile_1_20_mbodimmetrics_os\" x_os where x_os.\"d\" = x.\"d\"))))"];
	sql = [[NSMutableString alloc] initWithFormat:@"select %@", _selectSQL];
	[sql autorelease];
	sql = [[NSMutableString alloc] initWithFormat:@"select %@", _selectSQL];
	[sql autorelease];
	SUPStringList *ids = [SUPStringList listWithCapacity:0];
	SUPObjectList *dts = [SUPObjectList getInstance];
	SUPObjectList* values = [SUPObjectList getInstance];
	return (SUPObjectList*)[[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withIDs:ids withSkip:skip withTake:take withClass:[ODMobileMBODimMetrics class]];
}



+ (ODMobileMBODimMetrics*)findByPrimaryKey:(NSString*)mETRIC_ID
{
	NSMutableString *sql = nil;
	NSMutableString *_selectSQL = nil;
	_selectSQL = [[[NSMutableString alloc] initWithCapacity:290] autorelease];
	[_selectSQL appendString:@"SELECT x.\"a\",x.\"b\",x.\"c\",x.\"_pf\",x.\"_pc\",x.\"_rp\",x.\"_rf\",x.\"d\",x.\"_rc\",x.\"_ds\" FROM \"odmobile_1_20_mbodimmetrics\" x WHERE (((x.\"_pf\" = 1 or not exists (select x_os.\"d\" from \"odmobile_1_20_mbodimmetrics_os\" x_os where x_os.\"d\" = x.\"d\")))) and ( x.\"a\" = ?)"];
	sql = [[NSMutableString alloc] initWithFormat:@"%@", _selectSQL];
	[sql autorelease];
	SUPStringList *ids = [SUPStringList listWithCapacity:0];
	SUPObjectList *dts = [SUPObjectList getInstance];
	[dts addObject:[SUPDataType forName:@"string"]];
	SUPObjectList* values = [SUPObjectList getInstance];
	[values addObject:mETRIC_ID];
	
	SUPObjectList* res = (SUPObjectList*)[[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withIDs:ids withClass:[ODMobileMBODimMetrics class]];
	if(res && ([res size] > 0))
	{   
		ODMobileMBODimMetrics* cus = (ODMobileMBODimMetrics*)[res item:0];
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