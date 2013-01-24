#import "ODMobileMBOCategoryPrivs_pull_pqMetaData.h"

#import "SUPRelationshipMetaData.h"
#import "SUPParameterMetaData.h"
#import "SUPIndexMetaData.h"
#import "SUPAttributeMap.h"
#import "SUPObjectList.h"
#import "SUPClassMap.h"
#import "SUPEntityMap.h"
#import "ODMobileMBOCategoryPrivs_pull_pq.h"
#import "SUPOperationMap.h"
#import "ODMobileODMobileDB.h"
#import "SUPDataType.h"

@implementation ODMobileMBOCategoryPrivs_pull_pqMetaData

+ (ODMobileMBOCategoryPrivs_pull_pqMetaData*)getInstance
{
    return [[[ODMobileMBOCategoryPrivs_pull_pqMetaData alloc] init] autorelease];
}

- (id)init
{
    if (self = [super init]) {
		self.id = 7;
		self.name = @"MBOCategoryPrivs_pull_pq";
		self.klass = [ODMobileMBOCategoryPrivs_pull_pq class];
 		self.allowPending = NO;;

		self.isClientOnly = YES;

		SUPObjectList *attributes = [SUPObjectList getInstance];
		SUPAttributeMetaDataRBS* a_username = [SUPAttributeMetaDataRBS attributeMetaDataWith:
			278:
			[SUPDataType forName:@"string?"]:@"varchar(300)":@"username":@"":@"username":
			@"":300:0:0:
			@"null":NO:@"":
			NO:NO:YES:NO:NO:NO:
			GeneratedScheme_NONE:
			NO:SUPPersonalizationType_None:NO];
		[a_username setColumn:@"username"];
		SUPAttributeMetaDataRBS* a_remoteId = [SUPAttributeMetaDataRBS attributeMetaDataWith:
			279:
			[SUPDataType forName:@"string?"]:@"varchar(300)":@"remoteId":@"":@"remoteId":
			@"":300:0:0:
			@"null":NO:@"":
			NO:NO:YES:NO:NO:NO:
			GeneratedScheme_NONE:
			NO:SUPPersonalizationType_None:NO];
		[a_remoteId setColumn:@"remoteId"];
		SUPAttributeMetaDataRBS* a_employeeIdParam = [SUPAttributeMetaDataRBS attributeMetaDataWith:
			280:
			[SUPDataType forName:@"string?"]:@"varchar(80)":@"employeeIdParam":@"":@"employeeIdParam":
			@"":80:0:0:
			@"null":NO:@"":
			NO:NO:YES:NO:NO:NO:
			GeneratedScheme_NONE:
			YES:SUPPersonalizationType_None:NO];
		[a_employeeIdParam setColumn:@"employeeIdParam"];
		SUPAttributeMetaDataRBS* a_id = [SUPAttributeMetaDataRBS attributeMetaDataWith:
			277:
			[SUPDataType forName:@"long"]:@"decimal(20,0)":@"id":@"":@"id":
			@"":-1:0:0:
			@"null":NO:@"":
			YES:NO:NO:NO:NO:NO:
			GeneratedScheme_GLOBAL:
			NO:SUPPersonalizationType_None:NO];
		[a_id setColumn:@"id"];
 		
		[attributes addThis:a_username];
		[attributes addThis:a_remoteId];
		[attributes addThis:a_employeeIdParam];
		[attributes addThis:a_id];
		self.attributes = attributes;
		
		SUPAttributeMap * attributeMap = [SUPAttributeMap getInstance];
   		[attributeMap setAttributes:attributes];
	   	self.attributeMap = attributeMap;

 		SUPOperationMetaData* o_findAll_0 = [SUPOperationMetaData createOperationMetaData:1:(SUPString)@"findAll":[SUPDataType forName:@"MBOCategoryPrivs_pull_pq*"]:true];
		[o_findAll_0 setIsStatic:YES];
		[o_findAll_0 setIsCreate:NO];
		[o_findAll_0 setIsUpdate:NO];
		[o_findAll_0 setIsDelete:NO]; 		
 		SUPOperationMetaData* o_findSub_2 = [SUPOperationMetaData createOperationMetaData:2:(SUPString)@"findSub":[SUPDataType forName:@"MBOCategoryPrivs_pull_pq?"]:true];
	  	{
			SUPObjectList *parameters_list = nil;
	 		SUPParameterMetaData* p_findSub__username = [SUPParameterMetaData createParameterMetaData:1:(SUPString)@"_username":[SUPDataType forName:@"string?"]];
	 		SUPParameterMetaData* p_findSub_employeeId = [SUPParameterMetaData createParameterMetaData:2:(SUPString)@"employeeId":[SUPDataType forName:@"string?"]];
 			parameters_list = [SUPObjectList listWithCapacity:2];
			[parameters_list addThis:p_findSub__username];
			[parameters_list addThis:p_findSub_employeeId];
			o_findSub_2.parameters = parameters_list;
	 	}
		[o_findSub_2 setIsStatic:YES];
		[o_findSub_2 setIsCreate:NO];
		[o_findSub_2 setIsUpdate:NO];
		[o_findSub_2 setIsDelete:NO]; 		
 		SUPOperationMetaData* o_refresh_0 = [SUPOperationMetaData createOperationMetaData:3:(SUPString)@"refresh":[SUPDataType forName:@"void"]:true];
		[o_refresh_0 setIsStatic:NO];
		[o_refresh_0 setIsCreate:NO];
		[o_refresh_0 setIsUpdate:NO];
		[o_refresh_0 setIsDelete:NO]; 		
 		SUPOperationMetaData* o__pk_0 = [SUPOperationMetaData createOperationMetaData:4:(SUPString)@"_pk":[SUPDataType forName:@"long?"]:true];
		[o__pk_0 setIsStatic:NO];
		[o__pk_0 setIsCreate:NO];
		[o__pk_0 setIsUpdate:NO];
		[o__pk_0 setIsDelete:NO]; 		
 		SUPOperationMetaData* o_save_0 = [SUPOperationMetaData createOperationMetaData:5:(SUPString)@"save":[SUPDataType forName:@"void"]:true];
		[o_save_0 setIsStatic:NO];
		[o_save_0 setIsCreate:NO];
		[o_save_0 setIsUpdate:NO];
		[o_save_0 setIsDelete:NO]; 		
 
  		SUPObjectList *operations = [SUPObjectList listWithCapacity:5];
 		[operations addThis:o_findAll_0];
 		[operations addThis:o_findSub_2];
 		[operations addThis:o_refresh_0];
 		[operations addThis:o__pk_0];
 		[operations addThis:o_save_0];
	 	self.operations = operations;
 	
		SUPOperationMap *operationMap = [SUPOperationMap getInstance];
		[operationMap setOperations:operations];
		self.operationMap = operationMap;		
		self.table = @"odmobile_1_20_mbocategoryprivs_pull_pq";
		self.synchronizationGroup = @"unsubscribe";

		SUPIndexMetaData *i_remoteId = [[[SUPIndexMetaData alloc] init] autorelease];
		i_remoteId.name = @"remoteId";
		[i_remoteId.attributes add:a_remoteId];
	
		SUPIndexMetaData *i_param_pull_index = [[[SUPIndexMetaData alloc] init] autorelease];
		i_param_pull_index.name = @"param_pull_index";
		[i_param_pull_index.attributes add:a_employeeIdParam];
	
		[self.indexList add:i_remoteId];
		[self.indexList add:i_param_pull_index];
			
		[self.keyList add:a_id];


    }
    return self;
}
@end