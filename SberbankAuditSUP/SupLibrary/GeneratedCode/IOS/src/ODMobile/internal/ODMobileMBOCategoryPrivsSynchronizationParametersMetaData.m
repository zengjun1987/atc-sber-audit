#import "ODMobileMBOCategoryPrivsSynchronizationParametersMetaData.h"

#import "SUPRelationshipMetaData.h"
#import "SUPParameterMetaData.h"
#import "SUPIndexMetaData.h"
#import "SUPAttributeMap.h"
#import "SUPObjectList.h"
#import "SUPClassMap.h"
#import "SUPEntityMap.h"
#import "ODMobileMBOCategoryPrivsSynchronizationParameters.h"
#import "SUPOperationMap.h"
#import "ODMobileODMobileDB.h"
#import "SUPDataType.h"

@implementation ODMobileMBOCategoryPrivsSynchronizationParametersMetaData

+ (ODMobileMBOCategoryPrivsSynchronizationParametersMetaData*)getInstance
{
    return [[[ODMobileMBOCategoryPrivsSynchronizationParametersMetaData alloc] init] autorelease];
}

- (id)init
{
    if (self = [super init]) {
		self.id = 44;
		self.name = @"MBOCategoryPrivsSynchronizationParameters";
		self.klass = [ODMobileMBOCategoryPrivsSynchronizationParameters class];
 		self.allowPending = NO;;

		self.isClientOnly = YES;

		SUPObjectList *attributes = [SUPObjectList getInstance];
		SUPAttributeMetaDataRBS* a_employeeId = [SUPAttributeMetaDataRBS attributeMetaDataWith:
			924:
			[SUPDataType forName:@"string?"]:@"varchar(80)":@"employeeId":@"":@"employeeId":
			@"":80:0:0:
			@"":NO:@"":
			NO:NO:YES:NO:NO:NO:
			GeneratedScheme_NONE:
			YES:SUPPersonalizationType_None:NO];
		[a_employeeId setColumn:@"employeeId"];
		SUPAttributeMetaDataRBS* a_employeeIdUserDefined = [SUPAttributeMetaDataRBS attributeMetaDataWith:
			925:
			[SUPDataType forName:@"boolean"]:@"tinyint":@"employeeIdUserDefined":@"":@"employeeIdUserDefined":
			@"":-1:0:0:
			@"false":NO:@"":
			NO:NO:NO:NO:NO:NO:
			GeneratedScheme_NONE:
			NO:SUPPersonalizationType_None:NO];
		[a_employeeIdUserDefined setColumn:@"employeeIdUserDefined"];
		SUPAttributeMetaDataRBS* a_size_sp = [SUPAttributeMetaDataRBS attributeMetaDataWith:
			927:
			[SUPDataType forName:@"int"]:@"integer":@"size_sp":@"":@"size_sp":
			@"":-1:0:0:
			@"1":NO:@"":
			NO:NO:NO:NO:NO:NO:
			GeneratedScheme_NONE:
			NO:SUPPersonalizationType_None:NO];
		[a_size_sp setColumn:@"size_sp"];
		SUPAttributeMetaDataRBS* a_user_sp = [SUPAttributeMetaDataRBS attributeMetaDataWith:
			926:
			[SUPDataType forName:@"string"]:@"varchar(300)":@"user_sp":@"":@"user_sp":
			@"":300:0:0:
			@"null":NO:@"":
			YES:NO:NO:NO:NO:NO:
			GeneratedScheme_NONE:
			NO:SUPPersonalizationType_None:NO];
		[a_user_sp setColumn:@"user_sp"];
 		
		[attributes addThis:a_employeeId];
		[attributes addThis:a_employeeIdUserDefined];
		[attributes addThis:a_size_sp];
		[attributes addThis:a_user_sp];
		self.attributes = attributes;
		
		SUPAttributeMap * attributeMap = [SUPAttributeMap getInstance];
   		[attributeMap setAttributes:attributes];
	   	self.attributeMap = attributeMap;

 		SUPOperationMetaData* o_submitPending_0 = [SUPOperationMetaData createOperationMetaData:1:(SUPString)@"submitPending":[SUPDataType forName:@"void"]:true];
		[o_submitPending_0 setIsStatic:NO];
		[o_submitPending_0 setIsCreate:NO];
		[o_submitPending_0 setIsUpdate:NO];
		[o_submitPending_0 setIsDelete:NO]; 		
 		SUPOperationMetaData* o_refresh_0 = [SUPOperationMetaData createOperationMetaData:2:(SUPString)@"refresh":[SUPDataType forName:@"void"]:true];
		[o_refresh_0 setIsStatic:NO];
		[o_refresh_0 setIsCreate:NO];
		[o_refresh_0 setIsUpdate:NO];
		[o_refresh_0 setIsDelete:NO]; 		
 		SUPOperationMetaData* o__pk_0 = [SUPOperationMetaData createOperationMetaData:3:(SUPString)@"_pk":[SUPDataType forName:@"string?"]:true];
		[o__pk_0 setIsStatic:NO];
		[o__pk_0 setIsCreate:NO];
		[o__pk_0 setIsUpdate:NO];
		[o__pk_0 setIsDelete:NO]; 		
 		SUPOperationMetaData* o_save_0 = [SUPOperationMetaData createOperationMetaData:4:(SUPString)@"save":[SUPDataType forName:@"void"]:true];
		[o_save_0 setIsStatic:NO];
		[o_save_0 setIsCreate:NO];
		[o_save_0 setIsUpdate:NO];
		[o_save_0 setIsDelete:NO]; 		
 
  		SUPObjectList *operations = [SUPObjectList listWithCapacity:4];
 		[operations addThis:o_submitPending_0];
 		[operations addThis:o_refresh_0];
 		[operations addThis:o__pk_0];
 		[operations addThis:o_save_0];
	 	self.operations = operations;
 	
		SUPOperationMap *operationMap = [SUPOperationMap getInstance];
		[operationMap setOperations:operations];
		self.operationMap = operationMap;		
		self.table = @"co_odmobile_1_21_mbocategoryprivssp";
		self.synchronizationGroup = @"";

			
		[self.keyList add:a_user_sp];


    }
    return self;
}
@end