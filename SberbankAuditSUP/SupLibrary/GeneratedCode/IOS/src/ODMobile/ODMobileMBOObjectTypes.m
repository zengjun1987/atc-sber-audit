/*
 Generated by Sybase Unwired Platform 
 Compiler version - 2.1.3.358
*/ 

#import "ODMobileMBOObjectTypes.h"
#import "ODMobileMBOObjectTypesMetaData.h"
#import "SUPJsonObject.h"
#import "ODMobileODMobileDB.h"
#import "SUPEntityDelegate.h"
#import "SUPEntityMetaDataRBS.h"
#import "SUPQuery.h"
#import "ODMobileKeyGenerator.h"
#import "ODMobileLocalKeyGenerator.h"
#import "ODMobileLogRecordImpl.h"

@implementation ODMobileMBOObjectTypes

@synthesize OBJECT_TYPE_ID = _OBJECT_TYPE_ID;
@synthesize SUBBRANCH_LEVEL_ID = _SUBBRANCH_LEVEL_ID;
@synthesize OBJECT_TYPE_NAME = _OBJECT_TYPE_NAME;
@synthesize OBJECT_TYPE_KEY = _OBJECT_TYPE_KEY;
@synthesize surrogateKey = _surrogateKey;

- (int64_t)surrogateKey
{
    return _surrogateKey;
}

- (void)setOBJECT_TYPE_ID:(NSString*)newOBJECT_TYPE_ID
{
    if (newOBJECT_TYPE_ID != self->_OBJECT_TYPE_ID)
    {
		[self->_OBJECT_TYPE_ID release];
        self->_OBJECT_TYPE_ID = [newOBJECT_TYPE_ID retain];
        self.isDirty = YES;
    }
}

- (void)setSUBBRANCH_LEVEL_ID:(NSString*)newSUBBRANCH_LEVEL_ID
{
    if (newSUBBRANCH_LEVEL_ID != self->_SUBBRANCH_LEVEL_ID)
    {
		[self->_SUBBRANCH_LEVEL_ID release];
        self->_SUBBRANCH_LEVEL_ID = [newSUBBRANCH_LEVEL_ID retain];
        self.isDirty = YES;
    }
}

- (void)setOBJECT_TYPE_NAME:(NSString*)newOBJECT_TYPE_NAME
{
    if (newOBJECT_TYPE_NAME != self->_OBJECT_TYPE_NAME)
    {
		[self->_OBJECT_TYPE_NAME release];
        self->_OBJECT_TYPE_NAME = [newOBJECT_TYPE_NAME retain];
        self.isDirty = YES;
    }
}

- (void)setOBJECT_TYPE_KEY:(NSString*)newOBJECT_TYPE_KEY
{
    if (newOBJECT_TYPE_KEY != self->_OBJECT_TYPE_KEY)
    {
		[self->_OBJECT_TYPE_KEY release];
        self->_OBJECT_TYPE_KEY = [newOBJECT_TYPE_KEY retain];
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

static SUPEntityDelegate *g_ODMobileMBOObjectTypes_delegate = nil;

+ (SUPEntityDelegate *) delegate
{
	@synchronized(self) {
		if (g_ODMobileMBOObjectTypes_delegate == nil) {
			g_ODMobileMBOObjectTypes_delegate = [[SUPEntityDelegate alloc] initWithName:@"ODMobileMBOObjectTypes" clazz:[self class]
				metaData:[self metaData] dbDelegate:[ODMobileODMobileDB delegate] database:[ODMobileODMobileDB instance]];
		}
	}
	
	return [[g_ODMobileMBOObjectTypes_delegate retain] autorelease];
}

static SUPEntityMetaDataRBS* ODMobileMBOObjectTypes_META_DATA;

+ (SUPEntityMetaDataRBS*)metaData
{
    if (ODMobileMBOObjectTypes_META_DATA == nil) {
		ODMobileMBOObjectTypes_META_DATA = [[ODMobileMBOObjectTypesMetaData alloc] init];
	}
	
	return ODMobileMBOObjectTypes_META_DATA;
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
        self.classMetaData = [ODMobileMBOObjectTypes metaData];
        [self setEntityDelegate:(SUPEntityDelegate*)[ODMobileMBOObjectTypes delegate]];
    }
    return self;    
}

- (void)dealloc
{
    if(_OBJECT_TYPE_ID)
    {
        [_OBJECT_TYPE_ID release];
        _OBJECT_TYPE_ID = nil;
    }
    if(_SUBBRANCH_LEVEL_ID)
    {
        [_SUBBRANCH_LEVEL_ID release];
        _SUBBRANCH_LEVEL_ID = nil;
    }
    if(_OBJECT_TYPE_NAME)
    {
        [_OBJECT_TYPE_NAME release];
        _OBJECT_TYPE_NAME = nil;
    }
    if(_OBJECT_TYPE_KEY)
    {
        [_OBJECT_TYPE_KEY release];
        _OBJECT_TYPE_KEY = nil;
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

+ (ODMobileMBOObjectTypes*)find:(int64_t)id_
{
    SUPObjectList *keys = [SUPObjectList getInstance];
    [keys add:[NSNumber numberWithLong:id_]];
    return (ODMobileMBOObjectTypes*)[(SUPEntityDelegate*)([[self class] delegate]) findEntityWithKeys:keys];
}

+ (SUPObjectList*)findWithQuery:(SUPQuery*)query
{
    return (SUPObjectList*)[(SUPEntityDelegate*)([[self class] delegate])  findWithQuery:query:[ODMobileMBOObjectTypes class]];
}

- (int64_t)_pk
{
    return (int64_t)[[self i_pk] longValue];
}

+ (ODMobileMBOObjectTypes*)load:(int64_t)id_
{
    return (ODMobileMBOObjectTypes*)[(SUPEntityDelegate*)([[self class] delegate]) load:[NSNumber numberWithLong:id_]];
}

+ (ODMobileMBOObjectTypes*)getInstance
{
    ODMobileMBOObjectTypes* me = [[ODMobileMBOObjectTypes alloc] init];
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
- (ODMobileMBOObjectTypes*)getDownloadState
{
    return (ODMobileMBOObjectTypes*)[self i_getDownloadState];
}

- (ODMobileMBOObjectTypes*) getOriginalState
{
    return (ODMobileMBOObjectTypes*)[self i_getOriginalState];
}
-(SUPLong) getAttributeLong:(int)id_
{
    switch(id_)
    {
    case 44:
        return self.surrogateKey;
    default:
         return [super getAttributeLong:id_];
    }
}

-(void) setAttributeLong:(int)id_:(SUPLong)v
{
    switch(id_)
    {
    case 44:
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
    case 41:
        return self.SUBBRANCH_LEVEL_ID;
    case 42:
        return self.OBJECT_TYPE_NAME;
    case 43:
        return self.OBJECT_TYPE_KEY;
    default:
         return [super getAttributeNullableString:id_];
    }
}

-(void) setAttributeNullableString:(int)id_:(SUPString)v
{
    switch(id_)
    {
    case 41:
        self.SUBBRANCH_LEVEL_ID = v;
        break;;
    case 42:
        self.OBJECT_TYPE_NAME = v;
        break;;
    case 43:
        self.OBJECT_TYPE_KEY = v;
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
    case 40:
        return self.OBJECT_TYPE_ID;
    default:
         return [super getAttributeString:id_];
    }
}

-(void) setAttributeString:(int)id_:(SUPString)v
{
    switch(id_)
    {
    case 40:
        self.OBJECT_TYPE_ID = v;
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
   return [ODMobileLogRecordImpl findByEntity:@"MBOObjectTypes":[self keyToString]];
}




- (NSString*)toString
{
	NSString* str = [NSString stringWithFormat:@"\
	MBOObjectTypes = \n\
	    OBJECT_TYPE_ID = %@,\n\
	    SUBBRANCH_LEVEL_ID = %@,\n\
	    OBJECT_TYPE_NAME = %@,\n\
	    OBJECT_TYPE_KEY = %@,\n\
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
    	,self.OBJECT_TYPE_ID
    	,self.SUBBRANCH_LEVEL_ID
    	,self.OBJECT_TYPE_NAME
    	,self.OBJECT_TYPE_KEY
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
	[_selectSQL appendString:@" x.\"a\",x.\"b\",x.\"c\",x.\"d\",x.\"_pf\",x.\"_pc\",x.\"_rp\",x.\"_rf\",x.\"e\",x.\"_rc\",x.\"_ds\" FROM \"odmobile_1_20_mboobjecttypes\" x where (((x.\"_pf\" = 1 or not exists (select x_os.\"e\" from \"odmobile_1_20_mboobjecttypes_os\" x_os where x_os.\"e\" = x.\"e\"))))"];
	sql = [[NSMutableString alloc] initWithFormat:@"select %@", _selectSQL];
	[sql autorelease];
	sql = [[NSMutableString alloc] initWithFormat:@"select %@", _selectSQL];
	[sql autorelease];
	SUPStringList *ids = [SUPStringList listWithCapacity:0];
	SUPObjectList *dts = [SUPObjectList getInstance];
	SUPObjectList* values = [SUPObjectList getInstance];
	return (SUPObjectList*)[[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withIDs:ids withSkip:skip withTake:take withClass:[ODMobileMBOObjectTypes class]];
}



+ (ODMobileMBOObjectTypes*)findByPrimaryKey:(NSString*)oBJECT_TYPE_ID
{
	NSMutableString *sql = nil;
	NSMutableString *_selectSQL = nil;
	_selectSQL = [[[NSMutableString alloc] initWithCapacity:300] autorelease];
	[_selectSQL appendString:@"SELECT x.\"a\",x.\"b\",x.\"c\",x.\"d\",x.\"_pf\",x.\"_pc\",x.\"_rp\",x.\"_rf\",x.\"e\",x.\"_rc\",x.\"_ds\" FROM \"odmobile_1_20_mboobjecttypes\" x WHERE (((x.\"_pf\" = 1 or not exists (select x_os.\"e\" from \"odmobile_1_20_mboobjecttypes_os\" x_os where x_os.\"e\" = x.\"e\")))) and ( x.\"a\" = ?)"];
	sql = [[NSMutableString alloc] initWithFormat:@"%@", _selectSQL];
	[sql autorelease];
	SUPStringList *ids = [SUPStringList listWithCapacity:0];
	SUPObjectList *dts = [SUPObjectList getInstance];
	[dts addObject:[SUPDataType forName:@"string"]];
	SUPObjectList* values = [SUPObjectList getInstance];
	[values addObject:oBJECT_TYPE_ID];
	
	SUPObjectList* res = (SUPObjectList*)[[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withIDs:ids withClass:[ODMobileMBOObjectTypes class]];
	if(res && ([res size] > 0))
	{   
		ODMobileMBOObjectTypes* cus = (ODMobileMBOObjectTypes*)[res item:0];
	    return cus;
	}
	else
	    return nil;
}



+ (ODMobileMBOObjectTypes*)getByKey:(NSString*)key
{
	NSMutableString *sql = nil;
	NSMutableString *_selectSQL = nil;
	_selectSQL = [[[NSMutableString alloc] initWithCapacity:300] autorelease];
	[_selectSQL appendString:@"SELECT x.\"a\",x.\"b\",x.\"c\",x.\"d\",x.\"_pf\",x.\"_pc\",x.\"_rp\",x.\"_rf\",x.\"e\",x.\"_rc\",x.\"_ds\" FROM \"odmobile_1_20_mboobjecttypes\" x WHERE (((x.\"_pf\" = 1 or not exists (select x_os.\"e\" from \"odmobile_1_20_mboobjecttypes_os\" x_os where x_os.\"e\" = x.\"e\")))) and ( x.\"d\" = ?)"];
	sql = [[NSMutableString alloc] initWithFormat:@"%@", _selectSQL];
	[sql autorelease];
	SUPStringList *ids = [SUPStringList listWithCapacity:0];
	SUPObjectList *dts = [SUPObjectList getInstance];
	[dts addObject:[SUPDataType forName:@"string?"]];
	SUPObjectList* values = [SUPObjectList getInstance];
	[values addObject:key];
	
	SUPObjectList* res = (SUPObjectList*)[[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withIDs:ids withClass:[ODMobileMBOObjectTypes class]];
	if(res && ([res size] > 0))
	{   
		ODMobileMBOObjectTypes* cus = (ODMobileMBOObjectTypes*)[res item:0];
	    return cus;
	}
	else
	    return nil;
}



+ (ODMobileMBOObjectTypes*)getBySubbranchLevelId:(NSString*)subbranchLevelId
{
	NSMutableString *sql = nil;
	NSMutableString *_selectSQL = nil;
	_selectSQL = [[[NSMutableString alloc] initWithCapacity:300] autorelease];
	[_selectSQL appendString:@"SELECT x.\"a\",x.\"b\",x.\"c\",x.\"d\",x.\"_pf\",x.\"_pc\",x.\"_rp\",x.\"_rf\",x.\"e\",x.\"_rc\",x.\"_ds\" FROM \"odmobile_1_20_mboobjecttypes\" x WHERE (((x.\"_pf\" = 1 or not exists (select x_os.\"e\" from \"odmobile_1_20_mboobjecttypes_os\" x_os where x_os.\"e\" = x.\"e\")))) and ( x.\"b\" = ?)"];
	sql = [[NSMutableString alloc] initWithFormat:@"%@", _selectSQL];
	[sql autorelease];
	SUPStringList *ids = [SUPStringList listWithCapacity:0];
	SUPObjectList *dts = [SUPObjectList getInstance];
	[dts addObject:[SUPDataType forName:@"string?"]];
	SUPObjectList* values = [SUPObjectList getInstance];
	[values addObject:subbranchLevelId];
	
	SUPObjectList* res = (SUPObjectList*)[[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withIDs:ids withClass:[ODMobileMBOObjectTypes class]];
	if(res && ([res size] > 0))
	{   
		ODMobileMBOObjectTypes* cus = (ODMobileMBOObjectTypes*)[res item:0];
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