CREATE OR REPLACE STORAGE INTEGRATION azure_byanuretail_integration
    TYPE = EXTERNAL_STAGE
    STORAGE_PROVIDER = AZURE
    ENABLED = TRUE
    AZURE_TENANT_ID = 'your tenant id'
    STORAGE_ALLOWED_LOCATIONS = ('azure://<your_container_name>.blob.core.windows.net/landing/');

DESCRIBE STORAGE INTEGRATION azure_byanuretail_integration;

USE  pacificretail_db.bronze;

CREATE OR REPLACE STAGE adls_stage
    STORAGE_INTEGRATION = azure_byanuretail_integration
    URL = 'azure://<your_container_name>.blob.core.windows.net/landing/';

    ls @adls_stage;