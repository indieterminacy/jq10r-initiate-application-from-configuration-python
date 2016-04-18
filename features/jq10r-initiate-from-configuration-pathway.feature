Feature: Load configuration information based upon relevant arguments

@pathway_root @pathway_folder @file_name @file_suffix
Scenario: Initiate application based upon configuration and file pathway being presented
    Given Application initiated
    When Function call qp50_configuration_master generated
    Then Function call jq10_load_files(<20k_content>,<folder_name>,<file_name>,<file_type>,<theme>,<object_type_required>) called
    Examples:
        |application_root|folder_name|file_name|file_type|theme|object_type_required
        |~/20_Content/20k_Content_Types/60_json-qiuy/|JQ_50i_configuration_master|json|configuration|dictionary
