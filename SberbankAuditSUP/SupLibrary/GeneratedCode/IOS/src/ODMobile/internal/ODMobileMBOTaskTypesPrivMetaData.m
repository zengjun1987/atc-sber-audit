#import "ODMobileMBOTaskTypesPrivMetaData.h"

#import "SUPRelationshipMetaData.h"
#import "SUPParameterMetaData.h"
#import "SUPIndexMetaData.h"
#import "SUPAttributeMap.h"
#import "SUPObjectList.h"
#import "SUPClassMap.h"
#import "SUPEntityMap.h"
#import "ODMobileMBOTaskTypesPriv.h"
#import "SUPOperationMap.h"
#import "ODMobileODMobileDB.h"
#import "SUPDataType.h"

@implementation ODMobileMBOTaskTypesPrivMetaData

+ (ODMobileMBOTaskTypesPrivMetaData*)getInstance
{
    return [[[ODMobileMBOTaskTypesPrivMetaData alloc] init] autorelease];
}

- (id)init
{
    if (self = [super init]) {
		self.id = 17;
		self.name = @"MBOTaskTypesPriv";
		self.klass = [ODMobileMBOTaskTypesPriv class];
 		self.allowPending = YES;;

		self.isClientOnly = NO;

		SUPObjectList *attributes = [SUPObjectList getInstance];
		SUPAttributeMetaDataRBS* a_TASK_TYPE_ID = [SUPAttributeMetaDataRBS attributeMetaDataWith:
			68:
			[SUPDataType forName:@"string"]:@"varchar(80)":@"TASK_TYPE_ID":@"":@"a":
			@"":80:0:0:
			@"null":NO:@"":
			NO:NO:NO:NO:NO:NO:
			GeneratedScheme_NONE:
			NO:SUPPersonalizationType_None:NO];
		[a_TASK_TYPE_ID setColumn:@"a"];
		SUPAttributeMetaDataRBS* a_EMPLOYEE_ID = [SUPAttributeMetaDataRBS attributeMetaDataWith:
			69:
			[SUPDataType forName:@"string"]:@"varchar(80)":@"EMPLOYEE_ID":@"":@"b":
			@"":80:0:0:
			@"null":NO:@"":
			NO:NO:NO:NO:NO:NO:
			GeneratedScheme_NONE:
			NO:SUPPersonalizationType_None:NO];
		[a_EMPLOYEE_ID setColumn:@"b"];
		SUPAttributeMetaDataRBS* a_pending = [SUPAttributeMetaDataRBS attributeMetaDataWith:
			20001:
			[SUPDataType forName:@"boolean"]:@"tinyint":@"pending":@"":@"_pf":
			@"default 'N'":-1:0:0:
			@"null":NO:@"":
			NO:NO:NO:NO:NO:NO:
			GeneratedScheme_NONE:
			NO:SUPPersonalizationType_None:NO];
		[a_pending setColumn:@"_pf"];
		SUPAttributeMetaDataRBS* a_pendingChange = [SUPAttributeMetaDataRBS attributeMetaDataWith:
			20002:
			[SUPDataType forName:@"char"]:@"char(1)":@"pendingChange":@"":@"_pc":
			@"":1:0:0:
			@"null":NO:@"":
			NO:NO:NO:NO:NO:NO:
			GeneratedScheme_NONE:
			NO:SUPPersonalizationType_None:NO];
		[a_pendingChange setColumn:@"_pc"];
		SUPAttributeMetaDataRBS* a_replayPending = [SUPAttributeMetaDataRBS attributeMetaDataWith:
			20005:
			[SUPDataType forName:@"long"]:@"decimal(20,0)":@"replayPending":@"":@"_rp":
			@"":-1:0:0:
			@"null":NO:@"":
			NO:NO:NO:NO:NO:NO:
			GeneratedScheme_NONE:
			NO:SUPPersonalizationType_None:NO];
		[a_replayPending setColumn:@"_rp"];
		SUPAttributeMetaDataRBS* a_replayFailure = [SUPAttributeMetaDataRBS attributeMetaDataWith:
			20006:
			[SUPDataType forName:@"long"]:@"decimal(20,0)":@"replayFailure":@"":@"_rf":
			@"":-1:0:0:
			@"null":NO:@"":
			NO:NO:NO:NO:NO:NO:
			GeneratedScheme_NONE:
			NO:SUPPersonalizationType_None:NO];
		[a_replayFailure setColumn:@"_rf"];
		SUPAttributeMetaDataRBS* a_surrogateKey = [SUPAttributeMetaDataRBS attributeMetaDataWith:
			70:
			[SUPDataType forName:@"long"]:@"decimal(20,0)":@"surrogateKey":@"":@"c":
			@"":-1:0:0:
			@"null":NO:@"":
			YES:NO:NO:NO:NO:NO:
			GeneratedScheme_GLOBAL:
			NO:SUPPersonalizationType_None:NO];
		[a_surrogateKey setColumn:@"c"];
		SUPAttributeMetaDataRBS* a_replayCounter = [SUPAttributeMetaDataRBS attributeMetaDataWith:
			20004:
			[SUPDataType forName:@"long"]:@"decimal(20,0)":@"replayCounter":@"_rc":@"_rc":
			@"":-1:0:0:
			@"null":NO:@"":
			NO:NO:NO:NO:NO:NO:
			GeneratedScheme_NONE:
			NO:SUPPersonalizationType_None:NO];
		[a_replayCounter setColumn:@"_rc"];
		SUPAttributeMetaDataRBS* a_disableSubmit = [SUPAttributeMetaDataRBS attributeMetaDataWith:
			20003:
			[SUPDataType forName:@"boolean"]:@"tinyint":@"disableSubmit":@"":@"_ds":
			@"":-1:0:0:
			@"null":NO:@"":
			NO:NO:NO:NO:NO:NO:
			GeneratedScheme_NONE:
			NO:SUPPersonalizationType_None:NO];
		[a_disableSubmit setColumn:@"_ds"];
 		
		[attributes addThis:a_TASK_TYPE_ID];
		[attributes addThis:a_EMPLOYEE_ID];
		[attributes addThis:a_pending];
		[attributes addThis:a_pendingChange];
		[attributes addThis:a_replayPending];
		[attributes addThis:a_replayFailure];
		[attributes addThis:a_surrogateKey];
		[attributes addThis:a_replayCounter];
		[attributes addThis:a_disableSubmit];
		self.attributes = attributes;
		
		SUPAttributeMap * attributeMap = [SUPAttributeMap getInstance];
   		[attributeMap setAttributes:attributes];
	   	self.attributeMap = attributeMap;

 		SUPOperationMetaData* o_findAll_0 = [SUPOperationMetaData createOperationMetaData:1:(SUPString)@"findAll":[SUPDataType forName:@"MBOTaskTypesPriv*"]:true];
		[o_findAll_0 setIsStatic:YES];
		[o_findAll_0 setIsCreate:NO];
		[o_findAll_0 setIsUpdate:NO];
		[o_findAll_0 setIsDelete:NO]; 		
 		SUPOperationMetaData* o_findByTASK_TYPE_ID_1 = [SUPOperationMetaData createOperationMetaData:2:(SUPString)@"findByTASK_TYPE_ID":[SUPDataType forName:@"MBOTaskTypesPriv*"]:true];
	  	{
			SUPObjectList *parameters_list = nil;
	 		SUPParameterMetaData* p_findByTASK_TYPE_ID_TASK_TYPE_ID = [SUPParameterMetaData createParameterMetaData:1:(SUPString)@"TASK_TYPE_ID":[SUPDataType forName:@"string"]];
 			parameters_list = [SUPObjectList listWithCapacity:1];
			[parameters_list addThis:p_findByTASK_TYPE_ID_TASK_TYPE_ID];
			o_findByTASK_TYPE_ID_1.parameters = parameters_list;
	 	}
		[o_findByTASK_TYPE_ID_1 setIsStatic:YES];
		[o_findByTASK_TYPE_ID_1 setIsCreate:NO];
		[o_findByTASK_TYPE_ID_1 setIsUpdate:NO];
		[o_findByTASK_TYPE_ID_1 setIsDelete:NO]; 		
 		SUPOperationMetaData* o_findByEMPLOYEE_ID_1 = [SUPOperationMetaData createOperationMetaData:3:(SUPString)@"findByEMPLOYEE_ID":[SUPDataType forName:@"MBOTaskTypesPriv*"]:true];
	  	{
			SUPObjectList *parameters_list = nil;
	 		SUPParameterMetaData* p_findByEMPLOYEE_ID_EMPLOYEE_ID = [SUPParameterMetaData createParameterMetaData:1:(SUPString)@"EMPLOYEE_ID":[SUPDataType forName:@"string"]];
 			parameters_list = [SUPObjectList listWithCapacity:1];
			[parameters_list addThis:p_findByEMPLOYEE_ID_EMPLOYEE_ID];
			o_findByEMPLOYEE_ID_1.parameters = parameters_list;
	 	}
		[o_findByEMPLOYEE_ID_1 setIsStatic:YES];
		[o_findByEMPLOYEE_ID_1 setIsCreate:NO];
		[o_findByEMPLOYEE_ID_1 setIsUpdate:NO];
		[o_findByEMPLOYEE_ID_1 setIsDelete:NO]; 		
 		SUPOperationMetaData* o_findByPrimaryKey_2 = [SUPOperationMetaData createOperationMetaData:4:(SUPString)@"findByPrimaryKey":[SUPDataType forName:@"MBOTaskTypesPriv"]:true];
	  	{
			SUPObjectList *parameters_list = nil;
	 		SUPParameterMetaData* p_findByPrimaryKey_TASK_TYPE_ID = [SUPParameterMetaData createParameterMetaData:1:(SUPString)@"TASK_TYPE_ID":[SUPDataType forName:@"string"]];
	 		SUPParameterMetaData* p_findByPrimaryKey_EMPLOYEE_ID = [SUPParameterMetaData createParameterMetaData:2:(SUPString)@"EMPLOYEE_ID":[SUPDataType forName:@"string"]];
 			parameters_list = [SUPObjectList listWithCapacity:2];
			[parameters_list addThis:p_findByPrimaryKey_TASK_TYPE_ID];
			[parameters_list addThis:p_findByPrimaryKey_EMPLOYEE_ID];
			o_findByPrimaryKey_2.parameters = parameters_list;
	 	}
		[o_findByPrimaryKey_2 setIsStatic:YES];
		[o_findByPrimaryKey_2 setIsCreate:NO];
		[o_findByPrimaryKey_2 setIsUpdate:NO];
		[o_findByPrimaryKey_2 setIsDelete:NO]; 		
 		SUPOperationMetaData* o_refresh_0 = [SUPOperationMetaData createOperationMetaData:5:(SUPString)@"refresh":[SUPDataType forName:@"void"]:true];
		[o_refresh_0 setIsStatic:NO];
		[o_refresh_0 setIsCreate:NO];
		[o_refresh_0 setIsUpdate:NO];
		[o_refresh_0 setIsDelete:NO]; 		
 		SUPOperationMetaData* o__pk_0 = [SUPOperationMetaData createOperationMetaData:6:(SUPString)@"_pk":[SUPDataType forName:@"long?"]:true];
		[o__pk_0 setIsStatic:NO];
		[o__pk_0 setIsCreate:NO];
		[o__pk_0 setIsUpdate:NO];
		[o__pk_0 setIsDelete:NO]; 		
 		SUPOperationMetaData* o_submitPending_0 = [SUPOperationMetaData createOperationMetaData:7:(SUPString)@"submitPending":[SUPDataType forName:@"void"]:true];
		[o_submitPending_0 setIsStatic:NO];
		[o_submitPending_0 setIsCreate:NO];
		[o_submitPending_0 setIsUpdate:NO];
		[o_submitPending_0 setIsDelete:NO]; 		
 		SUPOperationMetaData* o_cancelPending_0 = [SUPOperationMetaData createOperationMetaData:8:(SUPString)@"cancelPending":[SUPDataType forName:@"void"]:true];
		[o_cancelPending_0 setIsStatic:NO];
		[o_cancelPending_0 setIsCreate:NO];
		[o_cancelPending_0 setIsUpdate:NO];
		[o_cancelPending_0 setIsDelete:NO]; 		
 		SUPOperationMetaData* o_submitPendingOperations_0 = [SUPOperationMetaData createOperationMetaData:9:(SUPString)@"submitPendingOperations":[SUPDataType forName:@"void"]:true];
		[o_submitPendingOperations_0 setIsStatic:YES];
		[o_submitPendingOperations_0 setIsCreate:NO];
		[o_submitPendingOperations_0 setIsUpdate:NO];
		[o_submitPendingOperations_0 setIsDelete:NO]; 		
 		SUPOperationMetaData* o_cancelPendingOperations_0 = [SUPOperationMetaData createOperationMetaData:10:(SUPString)@"cancelPendingOperations":[SUPDataType forName:@"void"]:true];
		[o_cancelPendingOperations_0 setIsStatic:YES];
		[o_cancelPendingOperations_0 setIsCreate:NO];
		[o_cancelPendingOperations_0 setIsUpdate:NO];
		[o_cancelPendingOperations_0 setIsDelete:NO]; 		
 		SUPOperationMetaData* o_getSynchronizationParameters_0 = [SUPOperationMetaData createOperationMetaData:11:(SUPString)@"getSynchronizationParameters":[SUPDataType forName:@"MBOTaskTypesPrivSynchronizationParameters"]:true];
		[o_getSynchronizationParameters_0 setIsStatic:YES];
		[o_getSynchronizationParameters_0 setIsCreate:NO];
		[o_getSynchronizationParameters_0 setIsUpdate:NO];
		[o_getSynchronizationParameters_0 setIsDelete:NO]; 		
 		SUPOperationMetaData* o_save_0 = [SUPOperationMetaData createOperationMetaData:12:(SUPString)@"save":[SUPDataType forName:@"void"]:true];
		[o_save_0 setIsStatic:NO];
		[o_save_0 setIsCreate:NO];
		[o_save_0 setIsUpdate:NO];
		[o_save_0 setIsDelete:NO]; 		
 		SUPOperationMetaData* o_findWithQuery_1 = [SUPOperationMetaData createOperationMetaData:13:(SUPString)@"findWithQuery":[SUPDataType forName:@"MBOTaskTypesPriv*"]:true];
	  	{
			SUPObjectList *parameters_list = nil;
	 		SUPParameterMetaData* p_findWithQuery_query = [SUPParameterMetaData createParameterMetaData:1:(SUPString)@"query":[SUPDataType forName:@"com.sybase.persistence.Query"]];
 			parameters_list = [SUPObjectList listWithCapacity:1];
			[parameters_list addThis:p_findWithQuery_query];
			o_findWithQuery_1.parameters = parameters_list;
	 	}
		[o_findWithQuery_1 setIsStatic:YES];
		[o_findWithQuery_1 setIsCreate:NO];
		[o_findWithQuery_1 setIsUpdate:NO];
		[o_findWithQuery_1 setIsDelete:NO]; 		
 		SUPOperationMetaData* o_getSize_1 = [SUPOperationMetaData createOperationMetaData:14:(SUPString)@"getSize":[SUPDataType forName:@"int"]:true];
	  	{
			SUPObjectList *parameters_list = nil;
	 		SUPParameterMetaData* p_getSize_query = [SUPParameterMetaData createParameterMetaData:1:(SUPString)@"query":[SUPDataType forName:@"com.sybase.persistence.Query"]];
 			parameters_list = [SUPObjectList listWithCapacity:1];
			[parameters_list addThis:p_getSize_query];
			o_getSize_1.parameters = parameters_list;
	 	}
		[o_getSize_1 setIsStatic:YES];
		[o_getSize_1 setIsCreate:NO];
		[o_getSize_1 setIsUpdate:NO];
		[o_getSize_1 setIsDelete:NO]; 		
 
  		SUPObjectList *operations = [SUPObjectList listWithCapacity:14];
 		[operations addThis:o_findAll_0];
 		[operations addThis:o_findByTASK_TYPE_ID_1];
 		[operations addThis:o_findByEMPLOYEE_ID_1];
 		[operations addThis:o_findByPrimaryKey_2];
 		[operations addThis:o_refresh_0];
 		[operations addThis:o__pk_0];
 		[operations addThis:o_submitPending_0];
 		[operations addThis:o_cancelPending_0];
 		[operations addThis:o_submitPendingOperations_0];
 		[operations addThis:o_cancelPendingOperations_0];
 		[operations addThis:o_getSynchronizationParameters_0];
 		[operations addThis:o_save_0];
 		[operations addThis:o_findWithQuery_1];
 		[operations addThis:o_getSize_1];
	 	self.operations = operations;
 	
		SUPOperationMap *operationMap = [SUPOperationMap getInstance];
		[operationMap setOperations:operations];
		self.operationMap = operationMap;		
		self.table = @"odmobile_1_20_mbotasktypespriv";
		self.synchronizationGroup = @"DIMSG";

		SUPIndexMetaData *i_findByPrimaryKeyIndex = [[[SUPIndexMetaData alloc] init] autorelease];
		i_findByPrimaryKeyIndex.name = @"findByPrimaryKeyIndex";
		[i_findByPrimaryKeyIndex.attributes add:a_TASK_TYPE_ID];
		[i_findByPrimaryKeyIndex.attributes add:a_EMPLOYEE_ID];
	
		[self.indexList add:i_findByPrimaryKeyIndex];
			
		[self.keyList add:a_surrogateKey];


    }
    return self;
}
@end