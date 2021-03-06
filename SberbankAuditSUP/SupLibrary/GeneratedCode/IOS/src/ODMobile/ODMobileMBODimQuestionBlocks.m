/*
 Generated by Sybase Unwired Platform 
 Compiler version - 2.1.3.358
*/ 

#import "ODMobileMBODimQuestionBlocks.h"
#import "ODMobileMBODimQuestionBlocksMetaData.h"
#import "SUPJsonObject.h"
#import "ODMobileODMobileDB.h"
#import "SUPEntityDelegate.h"
#import "SUPEntityMetaDataRBS.h"
#import "SUPQuery.h"
#import "ODMobileKeyGenerator.h"
#import "ODMobileLocalKeyGenerator.h"
#import "ODMobileLogRecordImpl.h"

@implementation ODMobileMBODimQuestionBlocks

@synthesize QUESTION_BLOCK_ID = _QUESTION_BLOCK_ID;
@synthesize QUESTION_BLOCK_NAME = _QUESTION_BLOCK_NAME;
@synthesize surrogateKey = _surrogateKey;

- (int64_t)surrogateKey
{
    return _surrogateKey;
}

- (void)setQUESTION_BLOCK_ID:(NSString*)newQUESTION_BLOCK_ID
{
    if (newQUESTION_BLOCK_ID != self->_QUESTION_BLOCK_ID)
    {
		[self->_QUESTION_BLOCK_ID release];
        self->_QUESTION_BLOCK_ID = [newQUESTION_BLOCK_ID retain];
        self.isDirty = YES;
    }
}

- (void)setQUESTION_BLOCK_NAME:(NSString*)newQUESTION_BLOCK_NAME
{
    if (newQUESTION_BLOCK_NAME != self->_QUESTION_BLOCK_NAME)
    {
		[self->_QUESTION_BLOCK_NAME release];
        self->_QUESTION_BLOCK_NAME = [newQUESTION_BLOCK_NAME retain];
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

static SUPEntityDelegate *g_ODMobileMBODimQuestionBlocks_delegate = nil;

+ (SUPEntityDelegate *) delegate
{
	@synchronized(self) {
		if (g_ODMobileMBODimQuestionBlocks_delegate == nil) {
			g_ODMobileMBODimQuestionBlocks_delegate = [[SUPEntityDelegate alloc] initWithName:@"ODMobileMBODimQuestionBlocks" clazz:[self class]
				metaData:[self metaData] dbDelegate:[ODMobileODMobileDB delegate] database:[ODMobileODMobileDB instance]];
		}
	}
	
	return [[g_ODMobileMBODimQuestionBlocks_delegate retain] autorelease];
}

static SUPEntityMetaDataRBS* ODMobileMBODimQuestionBlocks_META_DATA;

+ (SUPEntityMetaDataRBS*)metaData
{
    if (ODMobileMBODimQuestionBlocks_META_DATA == nil) {
		ODMobileMBODimQuestionBlocks_META_DATA = [[ODMobileMBODimQuestionBlocksMetaData alloc] init];
	}
	
	return ODMobileMBODimQuestionBlocks_META_DATA;
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
        self.classMetaData = [ODMobileMBODimQuestionBlocks metaData];
        [self setEntityDelegate:(SUPEntityDelegate*)[ODMobileMBODimQuestionBlocks delegate]];
    }
    return self;    
}

- (void)dealloc
{
    if(_QUESTION_BLOCK_ID)
    {
        [_QUESTION_BLOCK_ID release];
        _QUESTION_BLOCK_ID = nil;
    }
    if(_QUESTION_BLOCK_NAME)
    {
        [_QUESTION_BLOCK_NAME release];
        _QUESTION_BLOCK_NAME = nil;
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

+ (ODMobileMBODimQuestionBlocks*)find:(int64_t)id_
{
    SUPObjectList *keys = [SUPObjectList getInstance];
    [keys add:[NSNumber numberWithLong:id_]];
    return (ODMobileMBODimQuestionBlocks*)[(SUPEntityDelegate*)([[self class] delegate]) findEntityWithKeys:keys];
}

+ (SUPObjectList*)findWithQuery:(SUPQuery*)query
{
    return (SUPObjectList*)[(SUPEntityDelegate*)([[self class] delegate])  findWithQuery:query:[ODMobileMBODimQuestionBlocks class]];
}

- (int64_t)_pk
{
    return (int64_t)[[self i_pk] longValue];
}

+ (ODMobileMBODimQuestionBlocks*)load:(int64_t)id_
{
    return (ODMobileMBODimQuestionBlocks*)[(SUPEntityDelegate*)([[self class] delegate]) load:[NSNumber numberWithLong:id_]];
}

+ (ODMobileMBODimQuestionBlocks*)getInstance
{
    ODMobileMBODimQuestionBlocks* me = [[ODMobileMBODimQuestionBlocks alloc] init];
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
- (ODMobileMBODimQuestionBlocks*)getDownloadState
{
    return (ODMobileMBODimQuestionBlocks*)[self i_getDownloadState];
}

- (ODMobileMBODimQuestionBlocks*) getOriginalState
{
    return (ODMobileMBODimQuestionBlocks*)[self i_getOriginalState];
}
-(SUPLong) getAttributeLong:(int)id_
{
    switch(id_)
    {
    case 682:
        return self.surrogateKey;
    default:
         return [super getAttributeLong:id_];
    }
}

-(void) setAttributeLong:(int)id_:(SUPLong)v
{
    switch(id_)
    {
    case 682:
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
    case 681:
        return self.QUESTION_BLOCK_NAME;
    default:
         return [super getAttributeNullableString:id_];
    }
}

-(void) setAttributeNullableString:(int)id_:(SUPString)v
{
    switch(id_)
    {
    case 681:
        self.QUESTION_BLOCK_NAME = v;
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
    case 680:
        return self.QUESTION_BLOCK_ID;
    default:
         return [super getAttributeString:id_];
    }
}

-(void) setAttributeString:(int)id_:(SUPString)v
{
    switch(id_)
    {
    case 680:
        self.QUESTION_BLOCK_ID = v;
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
   return [ODMobileLogRecordImpl findByEntity:@"MBODimQuestionBlocks":[self keyToString]];
}




- (NSString*)toString
{
	NSString* str = [NSString stringWithFormat:@"\
	MBODimQuestionBlocks = \n\
	    QUESTION_BLOCK_ID = %@,\n\
	    QUESTION_BLOCK_NAME = %@,\n\
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
    	,self.QUESTION_BLOCK_ID
    	,self.QUESTION_BLOCK_NAME
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
	_selectSQL = [[[NSMutableString alloc] initWithCapacity:271] autorelease];
	[_selectSQL appendString:@" x.\"a\",x.\"b\",x.\"_pf\",x.\"_pc\",x.\"_rp\",x.\"_rf\",x.\"c\",x.\"_rc\",x.\"_ds\" FROM \"odmobile_1_21_mbodimquestionblocks\" x where (((x.\"_pf\" = 1 or not exists (select x_os.\"c\" from \"odmobile_1_21_mbodimquestionblocks_os\" x_os where x_os.\"c\" = x.\"c\"))))"];
	sql = [[NSMutableString alloc] initWithFormat:@"select %@", _selectSQL];
	[sql autorelease];
	sql = [[NSMutableString alloc] initWithFormat:@"select %@", _selectSQL];
	[sql autorelease];
	SUPStringList *ids = [SUPStringList listWithCapacity:0];
	SUPObjectList *dts = [SUPObjectList getInstance];
	SUPObjectList* values = [SUPObjectList getInstance];
	return (SUPObjectList*)[[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withIDs:ids withSkip:skip withTake:take withClass:[ODMobileMBODimQuestionBlocks class]];
}



+ (ODMobileMBODimQuestionBlocks*)findByPrimaryKey:(NSString*)qUESTION_BLOCK_ID
{
	NSMutableString *sql = nil;
	NSMutableString *_selectSQL = nil;
	_selectSQL = [[[NSMutableString alloc] initWithCapacity:296] autorelease];
	[_selectSQL appendString:@"SELECT x.\"a\",x.\"b\",x.\"_pf\",x.\"_pc\",x.\"_rp\",x.\"_rf\",x.\"c\",x.\"_rc\",x.\"_ds\" FROM \"odmobile_1_21_mbodimquestionblocks\" x WHERE (((x.\"_pf\" = 1 or not exists (select x_os.\"c\" from \"odmobile_1_21_mbodimquestionblocks_os\" x_os where x_os.\"c\" = x.\"c\")))) and ( x.\"a\" = ?)"];
	sql = [[NSMutableString alloc] initWithFormat:@"%@", _selectSQL];
	[sql autorelease];
	SUPStringList *ids = [SUPStringList listWithCapacity:0];
	SUPObjectList *dts = [SUPObjectList getInstance];
	[dts addObject:[SUPDataType forName:@"string"]];
	SUPObjectList* values = [SUPObjectList getInstance];
	[values addObject:qUESTION_BLOCK_ID];
	
	SUPObjectList* res = (SUPObjectList*)[[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withIDs:ids withClass:[ODMobileMBODimQuestionBlocks class]];
	if(res && ([res size] > 0))
	{   
		ODMobileMBODimQuestionBlocks* cus = (ODMobileMBODimQuestionBlocks*)[res item:0];
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