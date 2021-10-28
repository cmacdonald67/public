variable "env_id1" {
    type        = map
    description = "Environment variable used in resource names"
    default = {
        dev     = "d-"
        sandpit = "s-"
        prod    = "p-"
    }
}
# Taken from https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-abbreviations
variable "resource_id" {
    type        = map
    description = "ID for name of resource"
    default = {
        # General
        ApiManagementService                   = "apim-"
        ManagedIdentity                        = "id-"
        ManagementGroup                        = "mg-"
        PolicyDefintion                        = "policy-"
        ResourceGroup                          = "rg-"

        # Networking
        ApplicationGateways                    = "agw-"
        ApplicationSecurityGroup               = "asg-"
        BastionHost                            = "bas-"
        CDNProfile                             = "cdnp-"
        CDNEndpoint                            = "cdne-"
        Connection                             = "con-"
        DNSZone                                = "dnsz-"
        PrivateDNSZone                         = "pdnsz-"
        AzureFirewall                          = "afw-"
        AzureFirewallPolicie                   = "afwp-"
        ExpressRouteCircuit                    = "erc-"
        FrontDoor                              = "fd-"
        FrontDoorFirewallPolicie               = "fdfp-"
        LoadBalancerInternal                   = "lbi-"
        LoadBalancerExternal                   = "lbe"
        LoadBalancerRule                       = "rule-"
        LocalNetworkGateway                    = "lgw-"
        NATGateway                             = "ng-"
        NetworkInterface                       = "nic-"
        NetworkSecurityGroup                   = "nsg-"
        NetworkSecurityGroupsSecurityRule      = "nsgsr-"
        NetworkWatcher                         = "nw-"
        PrivateLinkService                     = "pl-"
        PublicIPAddress                        = "pip-"
        PublicIPAddressesPrefix                = "ippre-"
        RouteFilter                            = "rf-"
        RouteTable                             = "rt-"
        ServiceEndpoint                        = "se-"
        TrafficManagerProfile                  = "traf-"
        UserDefinedRoute                       = "udr-"
        VirtualNetwork                         = "vnet-"
        VirtualNetworkPeering                  = "peer-"
        Subnet                                 = "snet-"
        VirtualWan                             = "vwan-" 
        VPNGateway                             = "vpng-"
        VPNConnection                          = "vcn-"
        VPNSite                                = "vst-"
        VirtualNetworkGateway                  = "vgw-"
        WebApplicationFirewallPolicie          = "waf-"
        WebApplicationFirewallPolicyRuleGroup  = "wafrg-"
        
        # Compute and Web
        AppServiceEnvironment                  = "ase-"
        AppServicePlan                         = "plan-"
        AvailabilitySet                        = "avail-"
        AzureArcEnabledServer                  = "arcs-"
        AzureArcEnabledKubernetesCluster       = "arck-"
        CloudService                           = "cld-"
        DiskEncryptionSet                      = "des-"
        FunctionApp                            = "func-"
        Gallery                                = "gal-"
        ManagedOSDisk                          = "osdisk-"
        ManagedDataDisk                        = "disk-"
        NotificationHub                        = "ntf-"
        NotificationHubNamespace               = "ntfns-"
        Snapshot                               = "snap-"
        VirtualMachine                         = "vm-"
        VirtualMachineScaleSet                 = "vmss-"
        VMStorageAccount                       = "stvm-"
        WebApp                                 = "app-"

        # Containers
        AKSCluster                             = "aks-"
        ContainerRegistry                      = "cr-"
        ContainerInstance                      = "ci-"
        ServiceFabricCluster                   = "sf-"

        # Databases
        AzureCosmosDatabase                    = "cosmos-"
        AzureCacheForRedis                     = "redis-"
        AzureSQLDatabaseServer                 = "sql-"
        AzureSQLDatabase                       = "sqldb-"
        AzureSynapseAnalytics                  = "syn-"
        AzureSynapseAnalyticsWorkspaces        = "synw"
        AzureSynapseSQLDedicatedPool           = "syndp"
        AzureSynapseSparkPool                  = "synsp"
        MySQLDatabase                          = "mysql-"
        PostgreSQLDatabase                     = "psql-"
        SQLServerStretchDatabase               = "sqlstrdb-"
        SQLManagedInstance                     = "sqlmi-"

        # Storage
        StorageAccount                         = "st"
        AzureStorSimple                        = "ssimp"

        # AI and Machine Learning
        AzureCognitiveSearch                   = "srch-"
        AzureCognitiveServices                 = "cog-"
        AzureMachineLearningWorkspace          = "mlw-"

        # Analytics and IoT
        AzureAnalysisServicesServer            = "as-"
        AzureDatabricksWorkspace               = "dbw-"
        AzureStreamAnalytics                   = "asa-"
        AzureDataExplorerCluster               = "dec-"
        AzureDataExplorerClusterDatabase       = "dedb-"
        AzureDataFactory                       = "adf-"
        DataLakeStoreAccount                   = "dls-"
        DataLakeAnalyticsAccount               = "dla-"
        EventHubNamespace                      = "evhns-"
        EventHub                               = "evh-"
        EventGridDomain                        = "evgd-"
        EventGridSubscriptions                 = "evgs-"
        EventGridTopic                         = "evgt-"
        HDInsightHadoopCluster                 = "hadoop-"
        HDInsightHBaseCluster                  = "hbase-"
        HDInsightKafkaCluster                  = "kafka-"
        HDInsightSparkCluster                  = "spark-"
        HDInsightStormCluster                  = "storm-"
        HDInsightMLServicesCluster             = "mls-"
        IoTHub                                 = "iot-"
        ProvisioningServices                   = "provs-"
        ProvisioningServicesCertificate        = "pcert-"
        PowerBIEmbedded                        = "pbi-"
        TimeSeriesInsightsEnvironment          = "tsi-"

        # Azure Virtual Desktop
        VirtualDesktopHostPool                 = "vdpool-"
        VirtualDesktopApplicationGroup         = "vdag-"
        VirtualDesktopWorkspace                = "vdws-"

        # Developer Tools
        AppConfigurationStore                  = "appcs-"
        SignalR                                = "sigr-"

        # Integration
        IntegrationAccount                     = "ia-"
        LogicApps                              = "logic-"
        ServiceBus                             = "sb-"
        ServiceBusQueue                        = "sbq-"
        ServiceBusTopic                        = "sbt-"

        # Management and Governance 
        AutomationAccount                      = "aa-"
        ApplicationInsights                    = "appi-"
        AzureMonitorActionGroup                = "ag-"
        AzurePreviewInstance                   = "pview-"
        Blueprint                              = "bp-"
        BlueprintAssignment                    = "bpa-"
        KeyVault                               = "kv-"
        LogAnalyticsWorkspace                  = "log-"

        # Migration
        AzureMigrateProject                    = "migr-"
        DatabaseMigrationServiceInstance       = "dms-"
        RecoveryServiceVault                   = "rsv-"
    }
}

variable "app_name1" {}

variable "environment" {}

variable "resource_type" {}


