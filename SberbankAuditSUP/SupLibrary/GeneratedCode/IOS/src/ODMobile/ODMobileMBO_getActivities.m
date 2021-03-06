/*
 Generated by Sybase Unwired Platform 
 Compiler version - 2.1.3.358
*/ 

#import "ODMobileMBO_getActivities.h"
#import "ODMobileMBO_getActivitiesMetaData.h"
#import "SUPJsonObject.h"
#import "ODMobileODMobileDB.h"
#import "SUPEntityDelegate.h"
#import "SUPEntityMetaDataRBS.h"
#import "SUPQuery.h"
#import "ODMobileKeyGenerator.h"
#import "ODMobileLocalKeyGenerator.h"
#import "ODMobileLogRecordImpl.h"
#import "SUPSyncParamEntityDelegate.h"

#import "ODMobileOdObject.h"

@implementation ODMobileMBO_getActivities

@synthesize EMPLOYEE_ID = _EMPLOYEE_ID;
@synthesize ACTIVITY_ID = _ACTIVITY_ID;
@synthesize ACTIVITY_TYPE_ID = _ACTIVITY_TYPE_ID;
@synthesize UNION_ID = _UNION_ID;
@synthesize ACTIVITY_NAME = _ACTIVITY_NAME;
@synthesize ACTIVITY_PRIORITY_ID = _ACTIVITY_PRIORITY_ID;
@synthesize PROBLEMS = _PROBLEMS;
@synthesize DUEDATE_DTTM = _DUEDATE_DTTM;
@synthesize CREATOR_EMPLOYEE_ID = _CREATOR_EMPLOYEE_ID;
@synthesize RESPONSIBLE_EMPLOYEE_ID = _RESPONSIBLE_EMPLOYEE_ID;
@synthesize INSPECTOR_EMPLOYEE_ID = _INSPECTOR_EMPLOYEE_ID;
@synthesize FACT_END_DTTM = _FACT_END_DTTM;
@synthesize CLOSE_DTTM = _CLOSE_DTTM;
@synthesize RESPONSIBLE_DESC = _RESPONSIBLE_DESC;
@synthesize INSPECTOR_DESC = _INSPECTOR_DESC;
@synthesize ACTIVITY_STATUS_ID = _ACTIVITY_STATUS_ID;
@synthesize TASK_ID = _TASK_ID;
@synthesize QUESTION_ID = _QUESTION_ID;
@synthesize SUBBRANCH_ID = _SUBBRANCH_ID;
@synthesize ANSWER_ITEM_ID = _ANSWER_ITEM_ID;
@synthesize CHANGED_DTTM = _CHANGED_DTTM;
@synthesize CREATED_DTTM = _CREATED_DTTM;
@synthesize createCalled = _createCalled;
@synthesize createObjectName = _createObjectName;
@synthesize createOdObject = _createOdObject;
@synthesize updateCalled = _updateCalled;
@synthesize updateObjectName = _updateObjectName;
@synthesize updateOdObject = _updateOdObject;
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

- (void)setACTIVITY_ID:(NSString*)newACTIVITY_ID
{
    if (newACTIVITY_ID != self->_ACTIVITY_ID)
    {
		[self->_ACTIVITY_ID release];
        self->_ACTIVITY_ID = [newACTIVITY_ID retain];
        self.isDirty = YES;
    }
}

- (void)setACTIVITY_TYPE_ID:(NSString*)newACTIVITY_TYPE_ID
{
    if (newACTIVITY_TYPE_ID != self->_ACTIVITY_TYPE_ID)
    {
		[self->_ACTIVITY_TYPE_ID release];
        self->_ACTIVITY_TYPE_ID = [newACTIVITY_TYPE_ID retain];
        self.isDirty = YES;
    }
}

- (void)setUNION_ID:(NSString*)newUNION_ID
{
    if (newUNION_ID != self->_UNION_ID)
    {
		[self->_UNION_ID release];
        self->_UNION_ID = [newUNION_ID retain];
        self.isDirty = YES;
    }
}

- (void)setACTIVITY_NAME:(NSString*)newACTIVITY_NAME
{
    if (newACTIVITY_NAME != self->_ACTIVITY_NAME)
    {
		[self->_ACTIVITY_NAME release];
        self->_ACTIVITY_NAME = [newACTIVITY_NAME retain];
        self.isDirty = YES;
    }
}

- (void)setACTIVITY_PRIORITY_ID:(NSString*)newACTIVITY_PRIORITY_ID
{
    if (newACTIVITY_PRIORITY_ID != self->_ACTIVITY_PRIORITY_ID)
    {
		[self->_ACTIVITY_PRIORITY_ID release];
        self->_ACTIVITY_PRIORITY_ID = [newACTIVITY_PRIORITY_ID retain];
        self.isDirty = YES;
    }
}

- (void)setPROBLEMS:(NSString*)newPROBLEMS
{
    if (newPROBLEMS != self->_PROBLEMS)
    {
		[self->_PROBLEMS release];
        self->_PROBLEMS = [newPROBLEMS retain];
        self.isDirty = YES;
    }
}

- (void)setDUEDATE_DTTM:(NSString*)newDUEDATE_DTTM
{
    if (newDUEDATE_DTTM != self->_DUEDATE_DTTM)
    {
		[self->_DUEDATE_DTTM release];
        self->_DUEDATE_DTTM = [newDUEDATE_DTTM retain];
        self.isDirty = YES;
    }
}

- (void)setCREATOR_EMPLOYEE_ID:(NSString*)newCREATOR_EMPLOYEE_ID
{
    if (newCREATOR_EMPLOYEE_ID != self->_CREATOR_EMPLOYEE_ID)
    {
		[self->_CREATOR_EMPLOYEE_ID release];
        self->_CREATOR_EMPLOYEE_ID = [newCREATOR_EMPLOYEE_ID retain];
        self.isDirty = YES;
    }
}

- (void)setRESPONSIBLE_EMPLOYEE_ID:(NSString*)newRESPONSIBLE_EMPLOYEE_ID
{
    if (newRESPONSIBLE_EMPLOYEE_ID != self->_RESPONSIBLE_EMPLOYEE_ID)
    {
		[self->_RESPONSIBLE_EMPLOYEE_ID release];
        self->_RESPONSIBLE_EMPLOYEE_ID = [newRESPONSIBLE_EMPLOYEE_ID retain];
        self.isDirty = YES;
    }
}

- (void)setINSPECTOR_EMPLOYEE_ID:(NSString*)newINSPECTOR_EMPLOYEE_ID
{
    if (newINSPECTOR_EMPLOYEE_ID != self->_INSPECTOR_EMPLOYEE_ID)
    {
		[self->_INSPECTOR_EMPLOYEE_ID release];
        self->_INSPECTOR_EMPLOYEE_ID = [newINSPECTOR_EMPLOYEE_ID retain];
        self.isDirty = YES;
    }
}

- (void)setFACT_END_DTTM:(NSString*)newFACT_END_DTTM
{
    if (newFACT_END_DTTM != self->_FACT_END_DTTM)
    {
		[self->_FACT_END_DTTM release];
        self->_FACT_END_DTTM = [newFACT_END_DTTM retain];
        self.isDirty = YES;
    }
}

- (void)setCLOSE_DTTM:(NSString*)newCLOSE_DTTM
{
    if (newCLOSE_DTTM != self->_CLOSE_DTTM)
    {
		[self->_CLOSE_DTTM release];
        self->_CLOSE_DTTM = [newCLOSE_DTTM retain];
        self.isDirty = YES;
    }
}

- (void)setRESPONSIBLE_DESC:(NSString*)newRESPONSIBLE_DESC
{
    if (newRESPONSIBLE_DESC != self->_RESPONSIBLE_DESC)
    {
		[self->_RESPONSIBLE_DESC release];
        self->_RESPONSIBLE_DESC = [newRESPONSIBLE_DESC retain];
        self.isDirty = YES;
    }
}

- (void)setINSPECTOR_DESC:(NSString*)newINSPECTOR_DESC
{
    if (newINSPECTOR_DESC != self->_INSPECTOR_DESC)
    {
		[self->_INSPECTOR_DESC release];
        self->_INSPECTOR_DESC = [newINSPECTOR_DESC retain];
        self.isDirty = YES;
    }
}

- (void)setACTIVITY_STATUS_ID:(NSString*)newACTIVITY_STATUS_ID
{
    if (newACTIVITY_STATUS_ID != self->_ACTIVITY_STATUS_ID)
    {
		[self->_ACTIVITY_STATUS_ID release];
        self->_ACTIVITY_STATUS_ID = [newACTIVITY_STATUS_ID retain];
        self.isDirty = YES;
    }
}

- (void)setTASK_ID:(NSString*)newTASK_ID
{
    if (newTASK_ID != self->_TASK_ID)
    {
		[self->_TASK_ID release];
        self->_TASK_ID = [newTASK_ID retain];
        self.isDirty = YES;
    }
}

- (void)setQUESTION_ID:(NSString*)newQUESTION_ID
{
    if (newQUESTION_ID != self->_QUESTION_ID)
    {
		[self->_QUESTION_ID release];
        self->_QUESTION_ID = [newQUESTION_ID retain];
        self.isDirty = YES;
    }
}

- (void)setSUBBRANCH_ID:(NSString*)newSUBBRANCH_ID
{
    if (newSUBBRANCH_ID != self->_SUBBRANCH_ID)
    {
		[self->_SUBBRANCH_ID release];
        self->_SUBBRANCH_ID = [newSUBBRANCH_ID retain];
        self.isDirty = YES;
    }
}

- (void)setANSWER_ITEM_ID:(NSString*)newANSWER_ITEM_ID
{
    if (newANSWER_ITEM_ID != self->_ANSWER_ITEM_ID)
    {
		[self->_ANSWER_ITEM_ID release];
        self->_ANSWER_ITEM_ID = [newANSWER_ITEM_ID retain];
        self.isDirty = YES;
    }
}

- (void)setCHANGED_DTTM:(NSString*)newCHANGED_DTTM
{
    if (newCHANGED_DTTM != self->_CHANGED_DTTM)
    {
		[self->_CHANGED_DTTM release];
        self->_CHANGED_DTTM = [newCHANGED_DTTM retain];
        self.isDirty = YES;
    }
}

- (void)setCREATED_DTTM:(NSString*)newCREATED_DTTM
{
    if (newCREATED_DTTM != self->_CREATED_DTTM)
    {
		[self->_CREATED_DTTM release];
        self->_CREATED_DTTM = [newCREATED_DTTM retain];
        self.isDirty = YES;
    }
}

- (void)setCreateCalled:(BOOL)newCreateCalled
{
    if (newCreateCalled != self->_createCalled)
    {
        self->_createCalled = newCreateCalled;
        self.isDirty = YES;
    }
}

- (void)setCreateObjectName:(NSString*)newCreateObjectName
{
    if (newCreateObjectName != self->_createObjectName)
    {
		[self->_createObjectName release];
        self->_createObjectName = [newCreateObjectName retain];
        self.isDirty = YES;
    }
}

- (void)setCreateOdObject:(ODMobileOdObject*)newCreateOdObject
{
    if (newCreateOdObject != self->_createOdObject)
    {
		[self->_createOdObject release];
        self->_createOdObject = [newCreateOdObject retain];
        self.isDirty = YES;
    }
}

- (void)setUpdateCalled:(BOOL)newUpdateCalled
{
    if (newUpdateCalled != self->_updateCalled)
    {
        self->_updateCalled = newUpdateCalled;
        self.isDirty = YES;
    }
}

- (void)setUpdateObjectName:(NSString*)newUpdateObjectName
{
    if (newUpdateObjectName != self->_updateObjectName)
    {
		[self->_updateObjectName release];
        self->_updateObjectName = [newUpdateObjectName retain];
        self.isDirty = YES;
    }
}

- (void)setUpdateOdObject:(ODMobileOdObject*)newUpdateOdObject
{
    if (newUpdateOdObject != self->_updateOdObject)
    {
		[self->_updateOdObject release];
        self->_updateOdObject = [newUpdateOdObject retain];
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

static SUPEntityDelegate *g_ODMobileMBO_getActivities_delegate = nil;

+ (SUPEntityDelegate *) delegate
{
	@synchronized(self) {
		if (g_ODMobileMBO_getActivities_delegate == nil) {
			g_ODMobileMBO_getActivities_delegate = [[SUPEntityDelegate alloc] initWithName:@"ODMobileMBO_getActivities" clazz:[self class]
				metaData:[self metaData] dbDelegate:[ODMobileODMobileDB delegate] database:[ODMobileODMobileDB instance]];
		}
	}
	
	return [[g_ODMobileMBO_getActivities_delegate retain] autorelease];
}

static SUPEntityMetaDataRBS* ODMobileMBO_getActivities_META_DATA;

+ (SUPEntityMetaDataRBS*)metaData
{
    if (ODMobileMBO_getActivities_META_DATA == nil) {
		ODMobileMBO_getActivities_META_DATA = [[ODMobileMBO_getActivitiesMetaData alloc] init];
	}
	
	return ODMobileMBO_getActivities_META_DATA;
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
        self.classMetaData = [ODMobileMBO_getActivities metaData];
        [self setEntityDelegate:(SUPEntityDelegate*)[ODMobileMBO_getActivities delegate]];
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
    if(_ACTIVITY_ID)
    {
        [_ACTIVITY_ID release];
        _ACTIVITY_ID = nil;
    }
    if(_ACTIVITY_TYPE_ID)
    {
        [_ACTIVITY_TYPE_ID release];
        _ACTIVITY_TYPE_ID = nil;
    }
    if(_UNION_ID)
    {
        [_UNION_ID release];
        _UNION_ID = nil;
    }
    if(_ACTIVITY_NAME)
    {
        [_ACTIVITY_NAME release];
        _ACTIVITY_NAME = nil;
    }
    if(_ACTIVITY_PRIORITY_ID)
    {
        [_ACTIVITY_PRIORITY_ID release];
        _ACTIVITY_PRIORITY_ID = nil;
    }
    if(_PROBLEMS)
    {
        [_PROBLEMS release];
        _PROBLEMS = nil;
    }
    if(_DUEDATE_DTTM)
    {
        [_DUEDATE_DTTM release];
        _DUEDATE_DTTM = nil;
    }
    if(_CREATOR_EMPLOYEE_ID)
    {
        [_CREATOR_EMPLOYEE_ID release];
        _CREATOR_EMPLOYEE_ID = nil;
    }
    if(_RESPONSIBLE_EMPLOYEE_ID)
    {
        [_RESPONSIBLE_EMPLOYEE_ID release];
        _RESPONSIBLE_EMPLOYEE_ID = nil;
    }
    if(_INSPECTOR_EMPLOYEE_ID)
    {
        [_INSPECTOR_EMPLOYEE_ID release];
        _INSPECTOR_EMPLOYEE_ID = nil;
    }
    if(_FACT_END_DTTM)
    {
        [_FACT_END_DTTM release];
        _FACT_END_DTTM = nil;
    }
    if(_CLOSE_DTTM)
    {
        [_CLOSE_DTTM release];
        _CLOSE_DTTM = nil;
    }
    if(_RESPONSIBLE_DESC)
    {
        [_RESPONSIBLE_DESC release];
        _RESPONSIBLE_DESC = nil;
    }
    if(_INSPECTOR_DESC)
    {
        [_INSPECTOR_DESC release];
        _INSPECTOR_DESC = nil;
    }
    if(_ACTIVITY_STATUS_ID)
    {
        [_ACTIVITY_STATUS_ID release];
        _ACTIVITY_STATUS_ID = nil;
    }
    if(_TASK_ID)
    {
        [_TASK_ID release];
        _TASK_ID = nil;
    }
    if(_QUESTION_ID)
    {
        [_QUESTION_ID release];
        _QUESTION_ID = nil;
    }
    if(_SUBBRANCH_ID)
    {
        [_SUBBRANCH_ID release];
        _SUBBRANCH_ID = nil;
    }
    if(_ANSWER_ITEM_ID)
    {
        [_ANSWER_ITEM_ID release];
        _ANSWER_ITEM_ID = nil;
    }
    if(_CHANGED_DTTM)
    {
        [_CHANGED_DTTM release];
        _CHANGED_DTTM = nil;
    }
    if(_CREATED_DTTM)
    {
        [_CREATED_DTTM release];
        _CREATED_DTTM = nil;
    }
    if(_createObjectName)
    {
        [_createObjectName release];
        _createObjectName = nil;
    }
    if(_createOdObject)
    {
        [_createOdObject release];
        _createOdObject = nil;
    }
    if(_updateObjectName)
    {
        [_updateObjectName release];
        _updateObjectName = nil;
    }
    if(_updateOdObject)
    {
        [_updateOdObject release];
        _updateOdObject = nil;
    }
	[super dealloc];
}


- (SUPJsonObject*)getAttributeJson:(int)id_
{
    switch(id_)
    {
    case 771:
        return [[ODMobileOdObject delegate] toJsonObject:(SUPAbstractStructure*)self.createOdObject];
    case 774:
        return [[ODMobileOdObject delegate] toJsonObject:(SUPAbstractStructure*)self.updateOdObject];
        default:
        return [super getAttributeJson:id_];
    }

}
- (void)setAttributeJson:(int)id_:(SUPJsonObject*)value
{
    switch(id_)
    { 
    case 771:
        self.createOdObject = (ODMobileOdObject*)[[ODMobileOdObject delegate] fromJsonObject:(SUPJsonObject*)value];
        break;
    case 774:
        self.updateOdObject = (ODMobileOdObject*)[[ODMobileOdObject delegate] fromJsonObject:(SUPJsonObject*)value];
        break;
        default:
            [super setAttributeJson:id_:value];
            break;
    }

}

+ (ODMobileMBO_getActivities*)find:(int64_t)id_
{
    SUPObjectList *keys = [SUPObjectList getInstance];
    [keys add:[NSNumber numberWithLong:id_]];
    return (ODMobileMBO_getActivities*)[(SUPEntityDelegate*)([[self class] delegate]) findEntityWithKeys:keys];
}

+ (SUPObjectList*)findWithQuery:(SUPQuery*)query
{
    return (SUPObjectList*)[(SUPEntityDelegate*)([[self class] delegate])  findWithQuery:query:[ODMobileMBO_getActivities class]];
}

- (int64_t)_pk
{
    return (int64_t)[[self i_pk] longValue];
}

+ (ODMobileMBO_getActivities*)load:(int64_t)id_
{
    return (ODMobileMBO_getActivities*)[(SUPEntityDelegate*)([[self class] delegate]) load:[NSNumber numberWithLong:id_]];
}

+ (ODMobileMBO_getActivities*)getInstance
{
    ODMobileMBO_getActivities* me = [[ODMobileMBO_getActivities alloc] init];
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
- (ODMobileMBO_getActivities*)getDownloadState
{
    return (ODMobileMBO_getActivities*)[self i_getDownloadState];
}

- (ODMobileMBO_getActivities*) getOriginalState
{
    return (ODMobileMBO_getActivities*)[self i_getOriginalState];
}
-(SUPLong) getAttributeLong:(int)id_
{
    switch(id_)
    {
    case 768:
        return self.surrogateKey;
    default:
         return [super getAttributeLong:id_];
    }
}

-(void) setAttributeLong:(int)id_:(SUPLong)v
{
    switch(id_)
    {
    case 768:
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
    case 748:
        return self.ACTIVITY_TYPE_ID;
    case 749:
        return self.UNION_ID;
    case 750:
        return self.ACTIVITY_NAME;
    case 751:
        return self.ACTIVITY_PRIORITY_ID;
    case 752:
        return self.PROBLEMS;
    case 753:
        return self.DUEDATE_DTTM;
    case 754:
        return self.CREATOR_EMPLOYEE_ID;
    case 755:
        return self.RESPONSIBLE_EMPLOYEE_ID;
    case 756:
        return self.INSPECTOR_EMPLOYEE_ID;
    case 757:
        return self.FACT_END_DTTM;
    case 758:
        return self.CLOSE_DTTM;
    case 759:
        return self.RESPONSIBLE_DESC;
    case 760:
        return self.INSPECTOR_DESC;
    case 761:
        return self.ACTIVITY_STATUS_ID;
    case 762:
        return self.TASK_ID;
    case 763:
        return self.QUESTION_ID;
    case 764:
        return self.SUBBRANCH_ID;
    case 765:
        return self.ANSWER_ITEM_ID;
    case 766:
        return self.CHANGED_DTTM;
    case 767:
        return self.CREATED_DTTM;
    case 770:
        return self.createObjectName;
    case 773:
        return self.updateObjectName;
    default:
         return [super getAttributeNullableString:id_];
    }
}

-(void) setAttributeNullableString:(int)id_:(SUPString)v
{
    switch(id_)
    {
    case 748:
        self.ACTIVITY_TYPE_ID = v;
        break;;
    case 749:
        self.UNION_ID = v;
        break;;
    case 750:
        self.ACTIVITY_NAME = v;
        break;;
    case 751:
        self.ACTIVITY_PRIORITY_ID = v;
        break;;
    case 752:
        self.PROBLEMS = v;
        break;;
    case 753:
        self.DUEDATE_DTTM = v;
        break;;
    case 754:
        self.CREATOR_EMPLOYEE_ID = v;
        break;;
    case 755:
        self.RESPONSIBLE_EMPLOYEE_ID = v;
        break;;
    case 756:
        self.INSPECTOR_EMPLOYEE_ID = v;
        break;;
    case 757:
        self.FACT_END_DTTM = v;
        break;;
    case 758:
        self.CLOSE_DTTM = v;
        break;;
    case 759:
        self.RESPONSIBLE_DESC = v;
        break;;
    case 760:
        self.INSPECTOR_DESC = v;
        break;;
    case 761:
        self.ACTIVITY_STATUS_ID = v;
        break;;
    case 762:
        self.TASK_ID = v;
        break;;
    case 763:
        self.QUESTION_ID = v;
        break;;
    case 764:
        self.SUBBRANCH_ID = v;
        break;;
    case 765:
        self.ANSWER_ITEM_ID = v;
        break;;
    case 766:
        self.CHANGED_DTTM = v;
        break;;
    case 767:
        self.CREATED_DTTM = v;
        break;;
    case 770:
        self.createObjectName = v;
        break;;
    case 773:
        self.updateObjectName = v;
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
    case 746:
        return self.EMPLOYEE_ID;
    case 747:
        return self.ACTIVITY_ID;
    default:
         return [super getAttributeString:id_];
    }
}

-(void) setAttributeString:(int)id_:(SUPString)v
{
    switch(id_)
    {
    case 746:
        self.EMPLOYEE_ID = v;
        break;;
    case 747:
        self.ACTIVITY_ID = v;
        break;;
    default:
        [super setAttributeString:id_:v];
        break;;
    }
}
-(SUPBoolean) getAttributeBoolean:(int)id_
{
    switch(id_)
    {
    case 769:
        return self.createCalled;
    case 772:
        return self.updateCalled;
    default:
         return [super getAttributeBoolean:id_];
    }
}

-(void) setAttributeBoolean:(int)id_:(SUPBoolean)v
{
    switch(id_)
    {
    case 769:
        self.createCalled = v;
        break;;
    case 772:
        self.updateCalled = v;
        break;;
    default:
        [super setAttributeBoolean:id_:v];
        break;;
    }
}
-(id) getAttributeObject:(int)id_:(BOOL)loadFromDBIfInvalid
{
    switch(id_)
    {
    case 771:
        if (loadFromDBIfInvalid)
        {
            return self.createOdObject;
        } else
        {
            return _createOdObject;
        }
    case 774:
        if (loadFromDBIfInvalid)
        {
            return self.updateOdObject;
        } else
        {
            return _updateOdObject;
        }
    default:
         return [super getAttributeObject:id_];
    }
}

-(void) setAttributeObject:(int)id_:(id)v
{
    switch(id_)
    {
    case 771:
        self.createOdObject = v;
        break;;
    case 774:
        self.updateOdObject = v;
        break;;
    default:
        [super setAttributeObject:id_:v];
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
   return [ODMobileLogRecordImpl findByEntity:@"MBO_getActivities":[self keyToString]];
}




- (NSString*)toString
{
	NSString* str = [NSString stringWithFormat:@"\
	MBO_getActivities = \n\
	    EMPLOYEE_ID = %@,\n\
	    ACTIVITY_ID = %@,\n\
	    ACTIVITY_TYPE_ID = %@,\n\
	    UNION_ID = %@,\n\
	    ACTIVITY_NAME = %@,\n\
	    ACTIVITY_PRIORITY_ID = %@,\n\
	    PROBLEMS = %@,\n\
	    DUEDATE_DTTM = %@,\n\
	    CREATOR_EMPLOYEE_ID = %@,\n\
	    RESPONSIBLE_EMPLOYEE_ID = %@,\n\
	    INSPECTOR_EMPLOYEE_ID = %@,\n\
	    FACT_END_DTTM = %@,\n\
	    CLOSE_DTTM = %@,\n\
	    RESPONSIBLE_DESC = %@,\n\
	    INSPECTOR_DESC = %@,\n\
	    ACTIVITY_STATUS_ID = %@,\n\
	    TASK_ID = %@,\n\
	    QUESTION_ID = %@,\n\
	    SUBBRANCH_ID = %@,\n\
	    ANSWER_ITEM_ID = %@,\n\
	    CHANGED_DTTM = %@,\n\
	    CREATED_DTTM = %@,\n\
	    createCalled = %i,\n\
	    createObjectName = %@,\n\
	    createOdObject = %@,\n\
	    updateCalled = %i,\n\
	    updateObjectName = %@,\n\
	    updateOdObject = %@,\n\
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
    	,self.ACTIVITY_ID
    	,self.ACTIVITY_TYPE_ID
    	,self.UNION_ID
    	,self.ACTIVITY_NAME
    	,self.ACTIVITY_PRIORITY_ID
    	,self.PROBLEMS
    	,self.DUEDATE_DTTM
    	,self.CREATOR_EMPLOYEE_ID
    	,self.RESPONSIBLE_EMPLOYEE_ID
    	,self.INSPECTOR_EMPLOYEE_ID
    	,self.FACT_END_DTTM
    	,self.CLOSE_DTTM
    	,self.RESPONSIBLE_DESC
    	,self.INSPECTOR_DESC
    	,self.ACTIVITY_STATUS_ID
    	,self.TASK_ID
    	,self.QUESTION_ID
    	,self.SUBBRANCH_ID
    	,self.ANSWER_ITEM_ID
    	,self.CHANGED_DTTM
    	,self.CREATED_DTTM
    	,self.createCalled
    	,self.createObjectName
    	,self.createOdObject
    	,self.updateCalled
    	,self.updateObjectName
    	,self.updateOdObject
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


/*!
  @method
  @abstract Generated instance method of type CREATE
  @param objectName
  @param odObject
  @throws SUPPersistenceException
 */
- (void)create:(NSString*)objectName withOdObject:(ODMobileOdObject*)odObject
{
    self.isDirty = YES;
    self.createCalled = NO;
    self.updateCalled = NO;
    self.createObjectName = objectName;
    self.createOdObject = odObject;
    self.createCalled = YES;
    [self create];
}

/*!
  @method
  @abstract Generated instance method of type UPDATE
  @param objectName
  @param odObject
  @throws SUPPersistenceException
 */
- (void)update:(NSString*)objectName withOdObject:(ODMobileOdObject*)odObject
{
    self.isDirty = YES;
    self.createCalled = NO;
    self.updateCalled = NO;
    self.updateObjectName = objectName;
    self.updateOdObject = odObject;
    self.updateCalled = YES;
    [self update];
}



+ (SUPObjectList*)findAll
{
	return [self findAll:0 take:INT_MAX]; 
}


	

+ (SUPObjectList*)findAll:(int32_t)skip take:(int32_t)take
{
	NSMutableString *sql = nil;
	NSMutableString *_selectSQL = nil;
	_selectSQL = [[[NSMutableString alloc] initWithCapacity:486] autorelease];
	[_selectSQL appendString:@" x.\"a\",x.\"b\",x.\"c\",x.\"d\",x.\"e\",x.\"f\",x.\"g\",x.\"h\",x.\"i\",x.\"j\",x.\"l\",x.\"m\",x.\"n\",x.\"o\",x.\"p\",x.\"q\",x.\"r\",x.\"s\",x.\"t\",x.\"u\",x.\"v\",x.\"w\",x.\"y\",x.\"z\",x.\"ba\",x.\"bb\",x.\"bc\",x.\"bd\",x.\"_pf\",x.\"_pc\",x.\"_rp\",x.\"_rf\",x.\"x\",x.\"_rc\",x.\"_ds\" FROM \"odmobile_1_21_mbo_getactivities\" x wh"
	                               "ere (((x.\"_pf\" = 1 or not exists (select x_os.\"x\" from \"odmobile_1_21_mbo_getactivities_os\" x_os where x_os.\"x\" = x.\"x\"))))"];
	sql = [[NSMutableString alloc] initWithFormat:@"select %@", _selectSQL];
	[sql autorelease];
	sql = [[NSMutableString alloc] initWithFormat:@"select %@", _selectSQL];
	[sql autorelease];
	SUPStringList *ids = [SUPStringList listWithCapacity:0];
	SUPObjectList *dts = [SUPObjectList getInstance];
	SUPObjectList* values = [SUPObjectList getInstance];
	return (SUPObjectList*)[[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withIDs:ids withSkip:skip withTake:take withClass:[ODMobileMBO_getActivities class]];
}



+ (ODMobileMBO_getActivities*)findByPrimaryKey:(NSString*)aCTIVITY_ID
{
	NSMutableString *sql = nil;
	NSMutableString *_selectSQL = nil;
	_selectSQL = [[[NSMutableString alloc] initWithCapacity:511] autorelease];
	[_selectSQL appendString:@"SELECT x.\"a\",x.\"b\",x.\"c\",x.\"d\",x.\"e\",x.\"f\",x.\"g\",x.\"h\",x.\"i\",x.\"j\",x.\"l\",x.\"m\",x.\"n\",x.\"o\",x.\"p\",x.\"q\",x.\"r\",x.\"s\",x.\"t\",x.\"u\",x.\"v\",x.\"w\",x.\"y\",x.\"z\",x.\"ba\",x.\"bb\",x.\"bc\",x.\"bd\",x.\"_pf\",x.\"_pc\",x.\"_rp\",x.\"_rf\",x.\"x\",x.\"_rc\",x.\"_ds\" FROM \"odmobile_1_21_mbo_getactivities"
	                               "\" x WHERE (((x.\"_pf\" = 1 or not exists (select x_os.\"x\" from \"odmobile_1_21_mbo_getactivities_os\" x_os where x_os.\"x\" = x.\"x\")))) and ( x.\"b\" = ?)"];
	sql = [[NSMutableString alloc] initWithFormat:@"%@", _selectSQL];
	[sql autorelease];
	SUPStringList *ids = [SUPStringList listWithCapacity:0];
	SUPObjectList *dts = [SUPObjectList getInstance];
	[dts addObject:[SUPDataType forName:@"string"]];
	SUPObjectList* values = [SUPObjectList getInstance];
	[values addObject:aCTIVITY_ID];
	
	SUPObjectList* res = (SUPObjectList*)[[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withIDs:ids withClass:[ODMobileMBO_getActivities class]];
	if(res && ([res size] > 0))
	{   
		ODMobileMBO_getActivities* cus = (ODMobileMBO_getActivities*)[res item:0];
	    return cus;
	}
	else
	    return nil;
}



+ (SUPQueryResultSet*)getActivitiesBySubbranchId:(NSString*)subbranchId
{
	return [self getActivitiesBySubbranchId:subbranchId skip:0 take:INT_MAX]; 
}


	

+ (SUPQueryResultSet*)getActivitiesBySubbranchId:(NSString*)subbranchId skip:(int32_t)skip take:(int32_t)take
{
	NSMutableString *sql = nil;
	NSMutableString *_selectSQL = nil;
	_selectSQL = [[[NSMutableString alloc] initWithCapacity:2793] autorelease];
	[_selectSQL appendString:@" b.\"b\", z.\"b\", x.\"f\", a.\"b\", x.\"e\", x.\"h\", x.\"m\", x.\"o\", x.\"n\", x.\"p\", x.\"g\", x.\"b\", d.\"b\", d.\"c\", d.\"d\", e.\"b\", e.\"c\", e.\"d\", e.\"e\", unions.\"a\", unions.\"b\", f.\"b\", g.\"b\", h.\"b\", h.\"c\", h.\"d\", i.\"b\" FROM \"odmobile_1_21_mbo_getactivities\" x left outer join \"odmobile_1_21"
	                               "_mbo_getactivitytypes\" z ON (x.\"c\" like z.\"a\") left outer join \"odmobile_1_21_activitystatusmbo\" i ON (x.\"q\" like i.\"a\") left outer join \"odmobile_1_21_mbo_getemployees\" h ON (x.\"l\" like h.\"a\") left outer join \"odmobile_1_21_mbo_getemployees\" d ON (x.\"j\" like d.\"a\") left outer join \"odmobile_1_21_mb"
	                               "o_getemployees\" e ON (x.\"i\" like e.\"a\") left outer join \"odmobile_1_21_mbo_getactivitypriorities\" a ON (x.\"f\" like a.\"a\") left outer join \"odmobile_1_21_mbo_getcategories\" b ON (z.\"c\" like b.\"a\") left outer join \"odmobile_1_21_mbo_getsubbranches\" f ON (d.\"f\" like f.\"a\") left outer join \"odmobile_1_2"
	                               "1_mbo_getsubbranchlevels\" g ON (f.\"d\" like g.\"a\") left outer join \"odmobile_1_21_mbounions\" unions ON (x.\"d\" LIKE unions.\"a\") WHERE (((f.\"_pf\" = 1 or not exists (select f_os.\"p\" from \"odmobile_1_21_mbo_getsubbranches_os\" f_os where f_os.\"p\" = f.\"p\"))) and ((g.\"_pf\" = 1 or not exists (select g_os.\"d\""
	                               " from \"odmobile_1_21_mbo_getsubbranchlevels_os\" g_os where g_os.\"d\" = g.\"d\"))) and ((d.\"_pf\" = 1 or not exists (select d_os.\"h\" from \"odmobile_1_21_mbo_getemployees_os\" d_os where d_os.\"h\" = d.\"h\"))) and ((unions.\"_pf\" = 1 or not exists (select unions_os.\"g\" from \"odmobile_1_21_mbounions_os\" unions_"
	                               "os where unions_os.\"g\" = unions.\"g\"))) and ((e.\"_pf\" = 1 or not exists (select e_os.\"h\" from \"odmobile_1_21_mbo_getemployees_os\" e_os where e_os.\"h\" = e.\"h\"))) and ((b.\"_pf\" = 1 or not exists (select b_os.\"d\" from \"odmobile_1_21_mbo_getcategories_os\" b_os where b_os.\"d\" = b.\"d\"))) and ((a.\"_pf\" = 1 "
	                               "or not exists (select a_os.\"c\" from \"odmobile_1_21_mbo_getactivitypriorities_os\" a_os where a_os.\"c\" = a.\"c\"))) and ((z.\"_pf\" = 1 or not exists (select z_os.\"e\" from \"odmobile_1_21_mbo_getactivitytypes_os\" z_os where z_os.\"e\" = z.\"e\"))) and ((h.\"_pf\" = 1 or not exists (select h_os.\"h\" from \"odmobile"
	                               "_1_21_mbo_getemployees_os\" h_os where h_os.\"h\" = h.\"h\"))) and ((i.\"_pf\" = 1 or not exists (select i_os.\"d\" from \"odmobile_1_21_activitystatusmbo_os\" i_os where i_os.\"d\" = i.\"d\"))) and ((x.\"_pf\" = 1 or not exists (select x_os.\"x\" from \"odmobile_1_21_mbo_getactivities_os\" x_os where x_os.\"x\" = x.\"x\"))"
	                               ")) and ( ( (x.\"t\" is not null) AND (x.\"t\" LIKE ?)) OR ( (x.\"d\" is not null) AND (x.\"d\" LIKE ?) ))  ORDER BY x.\"h\""];
	sql = [[NSMutableString alloc] initWithFormat:@"select %@", _selectSQL];
	[sql autorelease];
	SUPObjectList *dts = [SUPObjectList getInstance];
	[dts addObject:[SUPDataType forName:@"string?"]];
	[dts addObject:[SUPDataType forName:@"string?"]];
	SUPObjectList* values = [SUPObjectList getInstance];
	[values addObject:subbranchId];
	[values addObject:subbranchId];
	
	SUPStringList *columnnames = [[[SUPStringList alloc] initWithCapacity:27] autorelease];
	[columnnames add:@"b.CATEGORY_NAME"];
	[columnnames add:@"z.ACTIVITY_TYPE_NAME"];
	[columnnames add:@"x.ACTIVITY_PRIORITY_ID"];
	[columnnames add:@"a.ACTIVITY_PRIORITY_NAME"];
	[columnnames add:@"x.ACTIVITY_NAME"];
	[columnnames add:@"x.DUEDATE_DTTM"];
	[columnnames add:@"x.FACT_END_DTTM"];
	[columnnames add:@"x.RESPONSIBLE_DESC"];
	[columnnames add:@"x.CLOSE_DTTM"];
	[columnnames add:@"x.INSPECTOR_DESC"];
	[columnnames add:@"x.PROBLEMS"];
	[columnnames add:@"x.ACTIVITY_ID"];
	[columnnames add:@"d.LAST_NAME"];
	[columnnames add:@"d.FIRST_NAME"];
	[columnnames add:@"d.PATRONYMIC"];
	[columnnames add:@"e.LAST_NAME"];
	[columnnames add:@"e.FIRST_NAME"];
	[columnnames add:@"e.PATRONYMIC"];
	[columnnames add:@"e.EMPLOYEE_POSITION"];
	[columnnames add:@"unions.UNION_ID"];
	[columnnames add:@"unions.UNION_NAME"];
	[columnnames add:@"f.SUBBRANCH_NAME"];
	[columnnames add:@"g.SUBBRANCH_LEVEL_NAME"];
	[columnnames add:@"h.LAST_NAME"];
	[columnnames add:@"h.FIRST_NAME"];
	[columnnames add:@"h.PATRONYMIC"];
	[columnnames add:@"i.ACTIVITY_STATUS_NAME"];
	
	SUPObjectList* columntypes = [[[SUPObjectList alloc] initWithCapacity:27] autorelease];
	[columntypes add:[SUPDataType forName:@"string?"]];
	[columntypes add:[SUPDataType forName:@"string?"]];
	[columntypes add:[SUPDataType forName:@"string?"]];
	[columntypes add:[SUPDataType forName:@"string?"]];
	[columntypes add:[SUPDataType forName:@"string?"]];
	[columntypes add:[SUPDataType forName:@"string?"]];
	[columntypes add:[SUPDataType forName:@"string?"]];
	[columntypes add:[SUPDataType forName:@"string?"]];
	[columntypes add:[SUPDataType forName:@"string?"]];
	[columntypes add:[SUPDataType forName:@"string?"]];
	[columntypes add:[SUPDataType forName:@"string?"]];
	[columntypes add:[SUPDataType forName:@"string"]];
	[columntypes add:[SUPDataType forName:@"string?"]];
	[columntypes add:[SUPDataType forName:@"string?"]];
	[columntypes add:[SUPDataType forName:@"string?"]];
	[columntypes add:[SUPDataType forName:@"string?"]];
	[columntypes add:[SUPDataType forName:@"string?"]];
	[columntypes add:[SUPDataType forName:@"string?"]];
	[columntypes add:[SUPDataType forName:@"string?"]];
	[columntypes add:[SUPDataType forName:@"string"]];
	[columntypes add:[SUPDataType forName:@"string?"]];
	[columntypes add:[SUPDataType forName:@"string?"]];
	[columntypes add:[SUPDataType forName:@"string?"]];
	[columntypes add:[SUPDataType forName:@"string?"]];
	[columntypes add:[SUPDataType forName:@"string?"]];
	[columntypes add:[SUPDataType forName:@"string?"]];
	[columntypes add:[SUPDataType forName:@"string?"]];
	
	return [[[self class] delegate] findWithSQL:sql withDataTypes:dts withValues:values withColumns:columnnames withColumnTypes:columntypes withSkip:skip withTake:take];
}



/*!
  @method
  @abstract Generated class method 
  @throws SUPPersistenceException
 */
+ (ODMobileMBO_getActivitiesSynchronizationParameters*)getSynchronizationParameters
{
    return (ODMobileMBO_getActivitiesSynchronizationParameters*)[(SUPSyncParamEntityDelegate*)([[ODMobileODMobileDB delegate] getDelegate:@"MBO_getActivitiesSynchronizationParameters"]) getSynchronizationParameters];
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