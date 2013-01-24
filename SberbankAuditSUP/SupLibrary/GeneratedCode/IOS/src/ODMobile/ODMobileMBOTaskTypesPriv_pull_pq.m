/*
 Generated by Sybase Unwired Platform 
 Compiler version - 2.1.3.358
*/ 

#import "ODMobileMBOTaskTypesPriv_pull_pq.h"
#import "ODMobileMBOTaskTypesPriv_pull_pqMetaData.h"
#import "SUPJsonObject.h"
#import "ODMobileODMobileDB.h"
#import "SUPEntityDelegate.h"
#import "SUPEntityMetaDataRBS.h"
#import "SUPQuery.h"
#import "ODMobileKeyGenerator.h"
#import "ODMobileLocalKeyGenerator.h"
#import "ODMobileLogRecordImpl.h"

@implementation ODMobileMBOTaskTypesPriv_pull_pq

@synthesize username = _username;
@synthesize remoteId = _remoteId;
@synthesize emloyeeIdParam = _emloyeeIdParam;
@synthesize id_ = _id;

- (int64_t)id_
{
    return _id;
}

- (void)setUsername:(NSString*)newUsername
{
    if (newUsername != self->_username)
    {
		[self->_username release];
        self->_username = [newUsername retain];
        self.isDirty = YES;
    }
}

- (void)setRemoteId:(NSString*)newRemoteId
{
    if (newRemoteId != self->_remoteId)
    {
		[self->_remoteId release];
        self->_remoteId = [newRemoteId retain];
        self.isDirty = YES;
    }
}

- (void)setEmloyeeIdParam:(NSString*)newEmloyeeIdParam
{
    if (newEmloyeeIdParam != self->_emloyeeIdParam)
    {
		[self->_emloyeeIdParam release];
        self->_emloyeeIdParam = [newEmloyeeIdParam retain];
        self.isDirty = YES;
    }
}

- (void)setId_:(int64_t)newId_
{
    if (newId_ != self->_id)
    {
        self->_id = newId_;
        self.isNew = YES;
    }
}

static SUPEntityDelegate *g_ODMobileMBOTaskTypesPriv_pull_pq_delegate = nil;

+ (SUPEntityDelegate *) delegate
{
	@synchronized(self) {
		if (g_ODMobileMBOTaskTypesPriv_pull_pq_delegate == nil) {
			g_ODMobileMBOTaskTypesPriv_pull_pq_delegate = [[SUPEntityDelegate alloc] initWithName:@"ODMobileMBOTaskTypesPriv_pull_pq" clazz:[self class]
				metaData:[self metaData] dbDelegate:[ODMobileODMobileDB delegate] database:[ODMobileODMobileDB instance]];
		}
	}
	
	return [[g_ODMobileMBOTaskTypesPriv_pull_pq_delegate retain] autorelease];
}

+ (SUPEntityDelegate*) getEntityDelegateForPQ
{
    return [self delegate];
}

static SUPEntityMetaDataRBS* ODMobileMBOTaskTypesPriv_pull_pq_META_DATA;

+ (SUPEntityMetaDataRBS*)metaData
{
    if (ODMobileMBOTaskTypesPriv_pull_pq_META_DATA == nil) {
		ODMobileMBOTaskTypesPriv_pull_pq_META_DATA = [[ODMobileMBOTaskTypesPriv_pull_pqMetaData alloc] init];
	}
	
	return ODMobileMBOTaskTypesPriv_pull_pq_META_DATA;
}

- (SUPClassMetaDataRBS*)getClassMetaData
{
    return [[self class] metaData];
}

- (void)clearRelationshipObjects
{
}

- (id) init
{
    if ((self = [super init]))
    {
        self.classMetaData = [ODMobileMBOTaskTypesPriv_pull_pq metaData];
        [self setEntityDelegate:(SUPEntityDelegate*)[ODMobileMBOTaskTypesPriv_pull_pq delegate]];
    }
    return self;    
}

- (void)dealloc
{
    if(_username)
    {
        [_username release];
        _username = nil;
    }
    if(_remoteId)
    {
        [_remoteId release];
        _remoteId = nil;
    }
    if(_emloyeeIdParam)
    {
        [_emloyeeIdParam release];
        _emloyeeIdParam = nil;
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

+ (ODMobileMBOTaskTypesPriv_pull_pq*)find:(int64_t)id_
{
    SUPObjectList *keys = [SUPObjectList getInstance];
    [keys add:[NSNumber numberWithLong:id_]];
    return (ODMobileMBOTaskTypesPriv_pull_pq*)[(SUPEntityDelegate*)([[self class] delegate]) findEntityWithKeys:keys];
}

- (int64_t)_pk
{
    return (int64_t)[[self i_pk] longValue];
}

+ (ODMobileMBOTaskTypesPriv_pull_pq*)load:(int64_t)id_
{
    return (ODMobileMBOTaskTypesPriv_pull_pq*)[(SUPEntityDelegate*)([[self class] delegate]) load:[NSNumber numberWithLong:id_]];
}

+ (ODMobileMBOTaskTypesPriv_pull_pq*)getInstance
{
    ODMobileMBOTaskTypesPriv_pull_pq* me = [[ODMobileMBOTaskTypesPriv_pull_pq alloc] init];
    [me autorelease];
    return me;
}
-(SUPLong) getAttributeLong:(int)id_
{
    switch(id_)
    {
    case 313:
        return self.id_;
    default:
         return [super getAttributeLong:id_];
    }
}

-(void) setAttributeLong:(int)id_:(SUPLong)v
{
    switch(id_)
    {
    case 313:
        self.id_ = v;
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
    case 314:
        return self.username;
    case 315:
        return self.remoteId;
    case 316:
        return self.emloyeeIdParam;
    default:
         return [super getAttributeNullableString:id_];
    }
}

-(void) setAttributeNullableString:(int)id_:(SUPString)v
{
    switch(id_)
    {
    case 314:
        self.username = v;
        break;;
    case 315:
        self.remoteId = v;
        break;;
    case 316:
        self.emloyeeIdParam = v;
        break;;
    default:
        [super setAttributeNullableString:id_:v];
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
   return [ODMobileLogRecordImpl findByEntity:@"MBOTaskTypesPriv_pull_pq":[self keyToString]];
}




- (NSString*)toString
{
	NSString* str = [NSString stringWithFormat:@"\
	MBOTaskTypesPriv_pull_pq = \n\
	    username = %@,\n\
	    remoteId = %@,\n\
	    emloyeeIdParam = %@,\n\
	    id = %qi,\n\
	    isNew = %i,\n\
        isDirty = %i,\n\
        isDeleted = %i,\n\
	\n"
    	,self.username
    	,self.remoteId
    	,self.emloyeeIdParam
    	,self.id_
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
	_selectSQL = [[[NSMutableString alloc] initWithCapacity:112] autorelease];
	[_selectSQL appendString:@" s.\"username\",s.\"remoteId\",s.\"emloyeeIdParam\",s.\"id\" from \"odmobile_1_20_mbotasktypespriv_pull_pq\" s"];
	sql = [[NSMutableString alloc] initWithFormat:@"select %@", _selectSQL];
	[sql autorelease];
	sql = [[NSMutableString alloc] initWithFormat:@"select %@", _selectSQL];
	[sql autorelease];
	SUPStringList *ids = [SUPStringList listWithCapacity:0];
	SUPObjectList *dts = [SUPObjectList getInstance];
	SUPObjectList* values = [SUPObjectList getInstance];
	return (SUPObjectList*)[[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withIDs:ids withSkip:skip withTake:take withClass:[ODMobileMBOTaskTypesPriv_pull_pq class]];
}



+ (ODMobileMBOTaskTypesPriv_pull_pq*)findSub:(NSString*)_username withEmloyeeId:(NSString*)emloyeeId
{
	NSMutableString *sql = nil;
	NSMutableString *_selectSQL = nil;
	_selectSQL = [[[NSMutableString alloc] initWithCapacity:242] autorelease];
	[_selectSQL appendString:@"select s.\"username\",s.\"remoteId\",s.\"emloyeeIdParam\",s.\"id\" from \"odmobile_1_20_mbotasktypespriv_pull_pq\" s where s.\"username\" =? and ( s.\"emloyeeIdParam\"=? or (s.\"emloyeeIdParam\" IS NULL AND CAST(? AS varchar(100)) IS NULL))"];
	sql = [[NSMutableString alloc] initWithFormat:@"%@", _selectSQL];
	[sql autorelease];
	SUPStringList *ids = [SUPStringList listWithCapacity:0];
	SUPObjectList *dts = [SUPObjectList getInstance];
	[dts addObject:[SUPDataType forName:@"string?"]];
	[dts addObject:[SUPDataType forName:@"string?"]];
	[dts addObject:[SUPDataType forName:@"string?"]];
	SUPObjectList* values = [SUPObjectList getInstance];
	[values addObject:_username];
	[values addObject:emloyeeId];
	[values addObject:emloyeeId];
	
	SUPObjectList* res = (SUPObjectList*)[[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withIDs:ids withClass:[ODMobileMBOTaskTypesPriv_pull_pq class]];
	if(res && ([res size] > 0))
	{   
		ODMobileMBOTaskTypesPriv_pull_pq* cus = (ODMobileMBOTaskTypesPriv_pull_pq*)[res item:0];
	    return cus;
	}
	else
	    return nil;
}

@end