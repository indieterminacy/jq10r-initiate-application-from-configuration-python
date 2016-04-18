Feature: load Configuration files
    The repository for deciding which files get loaded
    These files provide:
        System configuration
        User configuration
        Content

Scenario Outline: Main configuration file is requested
    Function for preparing how a file is selected
    The function loads a context which eventually builds datasets
    The developed configuration file will be in yaml format
    Examples:
            |activity_root|activity|context|categorization|default|type|
            |relevant_folder|initiation|configuration|q40u_application_root|~/20_Content/20k_Content_Types/60_json-qiuy/|str|
            |file_name|initiation|configuration|q50i_file_name|configuration_select_file|str|
            |file_type|initiation|configuration|q60k_type|json|str|
            |quorum|initiation|configuration|q10x_quorum|all|str||int|
    Given No arguments loaded
    When When configuration files searched for
    Then Default arguments used to request main configuration file

# TODO: build test scenarios for using inputted arguments

    Given Arguments sent to file loading function
    And q40b_configuration_file_dict exists
    When q40b_configuration_file_dict loaded
    And all contexts exist
    And all files to satisfy contexts exist
    Then All relevant dictionary files loaded
