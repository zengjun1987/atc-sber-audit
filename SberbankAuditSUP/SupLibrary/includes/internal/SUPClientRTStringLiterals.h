// Copyright (c) 2010, Sybase Inc.


// Message/error strings used by clientrt and template-generated code

#define SUPCLIENTRT_EXECUTEQUERYEXCEPTIONMSG @"there is an exception in executeQuery: name: %@ reason:%@"
#define SUPCLIENTRT_MSGHEADERRECEIVED @"The message header received :"
#define SUPCLIENTRT_MSGCONTENTRECEIVED @"The message content received :"
#define SUPCLIENTRT_MSGHEADERSENDING @"The message header sending out :"
#define SUPCLIENTRT_MSGCONTENTSENDING @"The message content sending out:"
#define SUPCLIENTRT_CANNOTSYNCWITHINTIMEOUT @"can not synchronize with server within timeout"
#define SUPCLIENTRT_PERSISTENCEEXCEPTIONMSG @"SUPPersistenceException from %@: -- %@"
#define SUPCLIENTRT_MISSINGREQUIREDCONNPROFILEPROPERTY @"Missing required connection profile property: "
#define SUPCLIENTRT_LOADFROMKC_INVALIDPARAMETER @"invalid parameter"
#define SUPCLIENTRT_LOADFROMKC_GETPASSWITHUSERERROR @"getPassWithUser returns error: %@, %i"
#define SUPCLIENTRT_LOADFROMKC_GETKEYWITHUSERERROR @"getKeyWithUser returns error: %@, %i"
#define SUPCLIENTRT_SAVETOKC_STOREPASSWITHUSERERROR @"storePassWithUser returns error: %@, %i"
#define SUPCLIENTRT_SAVETOKC_STOREKEYWITHUSERERROR @"storeKeyWithUser returns error: %@, %i"
#define SUPCLIENTRT_MOCKDBMANAGERNOCONNECTION @"Cannot get a connection to a mock database"
#define SUPCLIENTRT_UNEXPECTEDNULL @"unexpected null value for \'"
#define SUPCLIENTRT_UNEXPECTEDTYPECODE @"unexpected typeCode: "
#define SUPCLIENTRT_UNDEFINEDALIAS @"undefined alias: "
#define SUPCLIENTRT_UNDEFINEDATTRIBUTE @"undefined attribute: "
#define SUPCLIENTRT_UNEXPECTEDOPERATOR @"unexpected operator: "
#define SUPCLIENTRT_TYPENOTALLOWEDFOROPERATION @" datatype is not allowed for operation: "
#define SUPCLIENTRT_UNEXPECTEDCRITERIA @"unexpected criteria: "
#define SUPCLIENTRT_UNEXPECTEDEXPRESSION @"unexpected expression: "
#define SUPCLIENTRT_UNEXPECTEDJOINCONDITION @"unexpected join condition: "
#define SUPCLIENTRT_UNEXPECTEDKEY @"Multiple keys are not supported for hasLogRecords: "
#define SUPCLIENTRT_EMPTYALIAS @"query alias can not be empty. "
#define SUPCLIENTRT_WRONGCLASS @"when using EXISTS or NOT EXISTS, the value must be SUPQuery* "
#define SUPCLIENTRT_WRONGCLASSFORIN @"when using IN or NOT IN, the value must be SUPQuery* or SUPObjectList* "
#define SUPCLIENTRT_UNEXPECTEDENTITY @"unexpected entity: "
#define SUPCLIENTRT_JSONASSERTIONFAIL @"Assertion failed: (%s), method: %s"
#define SUPCLIENTRT_INVALIDPARAMETER @"%@: invalid parameter"
#define SUPCLIENTRT_KEYCHAIN_RETURNSERROR  @"%@ returns error: %i"
#define SUPCLIENTRT_KEYCHAIN_OVERRIDE1999 @"Override with -1999"
#define SUPCLIENTRT_LOCKUTIL_TIMEOUTMSG @"{thread:%p}: fail to get dblock within timeout"
#define SUPCLIENTRT_JSONREADER_UNEXPECTEDTOKENS @"unexpected tokens follow the parsed value"
#define SUPCLIENTRT_INVALIDJSONSTRING @"Invalid JSON string"
#define SUPCLIENTRT_JSON_EXPECTEDBRACKET @"expected \'{\' or \'[\', found \'"
#define SUPCLIENTRT_JSON_EXPECTEDCOMMA @"expected \',\', found \'"
#define SUPCLIENTRT_JSON_EXPECTEDCOLON @"expected \':\', found \'"
#define SUPCLIENTRT_JSON_MISSINGARRAYENDBRACKET @"missing \']\' at end of array"
#define SUPCLIENTRT_JSON_MISSINGOBJECTENDBRACKET @"missing \'}\' at end of array"
#define SUPCLIENTRT_JSON_UNTERMINATEDSTRING @"unterminated string"
#define SUPCLIENTRT_JSON_INVALIDBOOLEANVALUE_TRUE @"invalid value (expected true)"
#define SUPCLIENTRT_JSON_INVALIDBOOLEANVALUE_FALSE @"invalid value (expected false)"
#define SUPCLIENTRT_JSON_INVALIDVALUE_EXPECTEDNULL @"invalid value (expected null)"
#define SUPCLIENTRT_JSON_INVALIDVALUE_EXPECTEDNUMBER @"invalid value (expected number) starting with \'"
#define SUPCLIENTRT_JSON_INVALIDUNICODEESCAPE @"invalid unicode escape sequence"
#define SUPCLIENTRT_JSON_INVALIDSTRINGESCAPE @"invalid string escape character"
#define SUPCLIENTRT_JSON_INVALIDSTRINGCHARACTER @"invalid string character"
#define SUPCLIENTRT_JSON_INVALIDHEXADECIMAL @"invalid hexadecimal digit: "
#define SUPCLIENTRT_DB_EXCEPTION @"%@: There is an exception %@"
#define SUPCLIENTRT_DB_TRANSACTIONACTIVE @"Transaction already active"
#define SUPCLIENTRT_DB_RENAMEDBFAILED @"DB rename failed: "
#define SUPCLIENTRT_DB_ENCRYPT_PROFILEINVALID @"changeEncryptionKey: profile is invalid"
#define SUPCLIENTRT_DB_CANTUNENCRYPT @"fail to use unencrypt the db"
#define SUPCLIENTRT_DB_CANTUNENCRYPT_WITH_NEWKEY @"fail to use %@ unencrypting the db, %@"
#define SUPCLIENTRT_DB_CANTCHANGEENCRYPTKEY @"fail to change encryption key. Error:%@"
#define SUPCLIENTRT_DB_DELETEDBFAILED @"DB delete failed: "
#define SUPCLIENTRT_DB_CANTENCRYPT @"fail to use encrypt the db"
#define SUPCLIENTRT_DB_CANTENCRYPT_WITH_NEWKEY @"fail to use %@ encrypting the db, %@"
#define SUPCLIENTRT_DB_UPDATE_ROWCHANGEDORDELETED @"update failed (row was changed or deleted by another transaction)"
#define SUPCLIENTRT_DB_DELETE_ROWCHANGEDORDELETED @"delete failed (row was changed or deleted by another transaction)"
#define SUPCLIENTRT_DB_SYNC_CANCELED @"sync has been canceled by the client application"
#define SUPCLIENTRT_TEMPLATE_PERSISTENCEEXCEPTIONMSG @"SUPPersistenceException from %@: -- %@"
#define SUPCLIENTRT_TEMPLATE_LOADRETURNEDNULLRESULT @"%@ returned null result"
#define SUPCLIENTRT_TEMPLATE_ILLEGALKEYGENERATORSTATUS @"Illegal key generator status. It must be populated first by the server after a client call to beginOnlineLogin or subscribe"
#define SUPCLIENTRT_MESSAGECLIENT_NOT_PROVISIONED @"- Required settings are not fully provisioned or contain invalid values, can not start."
#define SUPCLIENTRT_MESSAGECLIENT_KEYVAULT_NOT_AVAILABLE @"- Operation failed, Unable to access the key"
#define SUPCLIENTRT_MESSAGECLIENT_OPERATION_FAILURE @"- Operation failed"
#define SUPCLIENTRT_ABSTRACTCLASSEXCEPTION @"abstract class exception"
#define SUPCLIENTRT_NOSUCHATTRIBUTE @"no such attribute"
#define SUPCLIENTRT_NOSUCHPARAMETER @"no such parameter"
#define SUPCLIENTRT_NOSUCHOPERATION @"no such operation"
#define SUPCLIENTRT_NOSUCHCLASS @"no such class"
#define SUPCLIENTRT_WRONGDATATYPE @"wrong data type"
#define SUPCLIENTRT_INVALIDDATATYPE @"invalid data type"
#define SUPCLIENTRT_NULLDATAVALUE @"null data value"
#define SUPCLIENTRT_ONLINE_LOGIN_NO_CONNECTION_TO_SERVER @"No connection to server"
#define SUPCLIENTRT_ONLINE_LOGIN_SERVER_TIMED_OUT @"Server did not respond within timeout"
#define SUPCLIENTRT_SUBSCRIBEMISMATCH @"Package %@ not subscribed on server, but client thinks it was subscribed."
#define SUPCLIENTRT_PROTOCOLMISMATCH @"Device and server are not using compatible protocol versions: client protocol version = %d, server protocol version = %d." 
#define SUPCLIENTRT_PACKAGENOTSUBSCRIBED @"Package not subscribed"
#define SUPCLIENTRT_INVALIDCOLUMNINDEX @"Invalid column index :%d"
#define SUPCLIENTRT_INVALIDCURSORPOSITION @"Invalid cursor position :%d"
#define SUPCLIENTRT_MCALREADYREGISTERED @"message client has already been registered"
#define SUPCLIENTRT_MC_NOT_REGISTERED @"The application has not been registered yet. Please call [SUPApplication registerApplication]"
#define SUPCLIENTRT_MC_RUNNING @"application is not registered or message client is not up and running, can not call removeDeviceRegistration"
#define SUPCLIENTRT_APPLICATION_TIMEOUT_EXCEPTION @"call to either startConnection, stopConnection, registerApplication or unregisterApplication has timed out"
#define SUPCLIENTRT_APPLICATION_CONNECTION_PROPERTY_EXCEPTION @"unable to connect due to either invalid connection properties values or applicationIndentifer has not been set"
#define SUPCLIENTRT_MC_NOT_INITIALIZED @"The message client is not initialized"
#define SUPCLIENTRT_APPLICATION_IDENTIFIER_MISSING @"Application Identifier is not available. Failed to initialize messaging client."
#define SUPCLIENTRT_APPLICATION_REGISTRATION_TIMEOUT @"application registration taking longer than %d"
#define SUPCLIENTRT_APPLICATION_START_CONNECTION_TIMEOUT @"application start connection taking longer than %d"
#define SUPCLIENTRT_APPLICATION_STOP_CONNECTION_TIMEOUT @"application stop connection taking longer than %d"
#define SUPCLIENTRT_START_CONNECTION_ERROR @"error @ startConnection %@ %@"
#define SUPCLIENTRT_STOP_CONNECTION_ERROR @"error @ stopConnection %@ %@"
#define SUPCLIENTRT_UNREGISTRATION_ERROR @"error @ unregisterApplication %@ %@"
#define SUPCLIENTRT_REGISTRATION_ERROR @"error @ registerApplication %@ %@"
#define SUPCLIENTRT_MC_NOT_CONFIGURED @"messaging client is not configured yet"
#define SUPCLIENTRT_APPLICATION_HTTP_AUTH_NO_CREDENTIALS @"HTTP basic auth request: callback provided null SUPLoginCredentials object"
#define SUPCLIENTRT_APPLICATION_HTTP_AUTH_NO_CALLBACK @"HTTP basic auth request received, but no callback handler provided to handle it"
#define SUPCLIENTRT_APPLICATION_CERT_CHALLENGE @"Untrusted certificate received during HTTPS communication attempt"
#define SUPCLIENTRT_INVALID_NETWORKPROTOCOL @"Networkprotocol can only be 'http' or 'https'."
#define SUPCLIENTRT_REGISTRATION_WRONG_USER_FOR_DEVICE @"Registeration username is invalid"

