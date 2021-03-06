/*
 Generated by Sybase Unwired Platform 
 Compiler version - 2.1.3.358
*/ 

#import "ODMobileMBOCategoryPrivs.h"
#import "ODMobileMBOCategoryPrivsMetaData.h"
#import "SUPJsonObject.h"
#import "ODMobileODMobileDB.h"
#import "SUPEntityDelegate.h"
#import "SUPEntityMetaDataRBS.h"
#import "SUPQuery.h"
#import "ODMobileKeyGenerator.h"
#import "ODMobileLocalKeyGenerator.h"
#import "ODMobileLogRecordImpl.h"
#import "SUPSyncParamEntityDelegate.h"

@implementation ODMobileMBOCategoryPrivs

@synthesize EMPLOYEE_ID = _EMPLOYEE_ID;
@synthesize CATEGORY_ID = _CATEGORY_ID;
@synthesize surrogateKey = _surrogateKey;

- (int64_t)surrogateKey
{
    return _surrogateKey;
}

- (void)setEMPLOYEE_ID:(NSString*)newEMPLOYEE_ID
{
    if (newEMPLOYEE_ID != self->_EMPLOYEE_ID)
    {
		[self->_EMPLOYEE_ID release];
        self->_EMPLOYEE_ID = [newEMPLOYEE_ID retain];
        self.isDirty = YES;
    }
}

- (void)setCATEGORY_ID:(NSString*)newCATEGORY_ID
{
    if (newCATEGORY_ID != self->_CATEGORY_ID)
    {
		[self->_CATEGORY_ID release];
        self->_CATEGORY_ID = [newCATEGORY_ID retain];
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

static SUPEntityDelegate *g_ODMobileMBOCategoryPrivs_delegate = nil;

+ (SUPEntityDelegate *) delegate
{
	@synchronized(self) {
		if (g_ODMobileMBOCategoryPrivs_delegate == nil) {
			g_ODMobileMBOCategoryPrivs_delegate = [[SUPEntityDelegate alloc] initWithName:@"ODMobileMBOCategoryPrivs" clazz:[self class]
				metaData:[self metaData] dbDelegate:[ODMobileODMobileDB delegate] database:[ODMobileODMobileDB instance]];
		}
	}
	
	return [[g_ODMobileMBOCategoryPrivs_delegate retain] autorelease];
}

static SUPEntityMetaDataRBS* ODMobileMBOCategoryPrivs_META_DATA;

+ (SUPEntityMetaDataRBS*)metaData
{
    if (ODMobileMBOCategoryPrivs_META_DATA == nil) {
		ODMobileMBOCategoryPrivs_META_DATA = [[ODMobileMBOCategoryPrivsMetaData alloc] init];
	}
	
	return ODMobileMBOCategoryPrivs_META_DATA;
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
        self.classMetaData = [ODMobileMBOCategoryPrivs metaData];
        [self setEntityDelegate:(SUPEntityDelegate*)[ODMobileMBOCategoryPrivs delegate]];
    }
    return self;    
}

- (void)dealloc
{
    if(_EMPLOYEE_ID)
    {
        [_EMPLOYEE_ID release];
        _EMPLOYEE_ID = nil;
    }
    if(_CATEGORY_ID)
    {
        [_CATEGORY_ID release];
        _CATEGORY_ID = nil;
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

+ (ODMobileMBOCategoryPrivs*)find:(int64_t)id_
{
    SUPObjectList *keys = [SUPObjectList getInstance];
    [keys add:[NSNumber numberWithLong:id_]];
    return (ODMobileMBOCategoryPrivs*)[(SUPEntityDelegate*)([[self class] delegate]) findEntityWithKeys:keys];
}

+ (SUPObjectList*)findWithQuery:(SUPQuery*)query
{
    return (SUPObjectList*)[(SUPEntityDelegate*)([[self class] delegate])  findWithQuery:query:[ODMobileMBOCategoryPrivs class]];
}

- (int64_t)_pk
{
    return (int64_t)[[self i_pk] longValue];
}

+ (ODMobileMBOCategoryPrivs*)load:(int64_t)id_
{
    return (ODMobileMBOCategoryPrivs*)[(SUPEntityDelegate*)([[self class] delegate]) load:[NSNumber numberWithLong:id_]];
}

+ (ODMobileMBOCategoryPrivs*)getInstance
{
    ODMobileMBOCategoryPrivs* me = [[ODMobileMBOCategoryPrivs alloc] init];
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
- (ODMobileMBOCategoryPrivs*)getDownloadState
{
    return (ODMobileMBOCategoryPrivs*)[self i_getDownloadState];
}

- (ODMobileMBOCategoryPrivs*) getOriginalState
{
    return (ODMobileMBOCategoryPrivs*)[self i_getOriginalState];
}
-(SUPLong) getAttributeLong:(int)id_
{
    switch(id_)
    {
    case 675:
        return self.surrogateKey;
    default:
         return [super getAttributeLong:id_];
    }
}

-(void) setAttributeLong:(int)id_:(SUPLong)v
{
    switch(id_)
    {
    case 675:
        self.surrogateKey = v;
        break;;
    default:
        [super setAttributeLong:id_:v];
        break;;
    }
}
-(SUPString) getAttributeString:(int)id_
{
    switch(id_)
    {
    case 673:
        return self.EMPLOYEE_ID;
    case 674:
        return self.CATEGORY_ID;
    default:
         return [super getAttributeString:id_];
    }
}

-(void) setAttributeString:(int)id_:(SUPString)v
{
    switch(id_)
    {
    case 673:
        self.EMPLOYEE_ID = v;
        break;;
    case 674:
        self.CATEGORY_ID = v;
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
   return [ODMobileLogRecordImpl findByEntity:@"MBOCategoryPrivs":[self keyToString]];
}




- (NSString*)toString
{
	NSString* str = [NSString stringWithFormat:@"\
	MBOCategoryPrivs = \n\
	    EMPLOYEE_ID = %@,\n\
	    CATEGORY_ID = %@,\n\
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
    	,self.EMPLOYEE_ID
    	,self.CATEGORY_ID
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
	_selectSQL = [[[NSMutableString alloc] initWithCapacity:263] autorelease];
	[_selectSQL appendString:@" x.\"a\",x.\"b\",x.\"_pf\",x.\"_pc\",x.\"_rp\",x.\"_rf\",x.\"c\",x.\"_rc\",x.\"_ds\" FROM \"odmobile_1_21_mbocategoryprivs\" x where (((x.\"_pf\" = 1 or not exists (select x_os.\"c\" from \"odmobile_1_21_mbocategoryprivs_os\" x_os where x_os.\"c\" = x.\"c\"))))"];
	sql = [[NSMutableString alloc] initWithFormat:@"select %@", _selectSQL];
	[sql autorelease];
	sql = [[NSMutableString alloc] initWithFormat:@"select %@", _selectSQL];
	[sql autorelease];
	SUPStringList *ids = [SUPStringList listWithCapacity:0];
	SUPObjectList *dts = [SUPObjectList getInstance];
	SUPObjectList* values = [SUPObjectList getInstance];
	return (SUPObjectList*)[[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withIDs:ids withSkip:skip withTake:take withClass:[ODMobileMBOCategoryPrivs class]];
}



/*!
  @method
  @abstract Generated class method 
  @throws SUPPersistenceException
 */
+ (ODMobileMBOCategoryPrivsSynchronizationParameters*)getSynchronizationParameters
{
    return (ODMobileMBOCategoryPrivsSynchronizationParameters*)[(SUPSyncParamEntityDelegate*)([[ODMobileODMobileDB delegate] getDelegate:@"MBOCategoryPrivsSynchronizationParameters"]) getSynchronizationParameters];
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