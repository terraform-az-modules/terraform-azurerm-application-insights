## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| application\_type | (Required) Specifies the type of Application Insights to create. Valid values are ios for iOS, java for Java web, MobileCenter for App Center, Node.JS for Node.js, other for General, phone for Windows Phone, store for Windows Store and web for ASP.NET. Values are case sensitive. Unmatched values are treated as ASP.NET by Azure. Changing this forces a new resource to be created. | `string` | `"web"` | no |
| custom\_name | Override default naming convention | `string` | `null` | no |
| daily\_data\_cap\_in\_gb | Specifies the Application Insights component daily data volume cap in GB. | `number` | `30` | no |
| daily\_data\_cap\_notifications\_enabled | Specifies if a notification email will be sent when the daily data volume cap is met. Defaults to false. | `bool` | `false` | no |
| deployment\_mode | Specifies how the infrastructure/resource is deployed | `string` | `"terraform"` | no |
| description | Purpose or user-defined descriptive text for this WebTest. | `string` | `""` | no |
| diagnostic\_setting\_enable | Enables or disables creation of diagnostic settings for Application Insights. | `bool` | `true` | no |
| enabled | Set to false to prevent the module from creating any resources. | `bool` | `true` | no |
| environment | Environment (e.g. `prod`, `dev`, `staging`). | `string` | `"dev"` | no |
| eventhub\_authorization\_rule\_id | Specifies the ID of an Event Hub Namespace Authorization Rule used to send diagnostics data. | `string` | `null` | no |
| eventhub\_name | Specifies the name of the Event Hub where diagnostics data should be sent. | `string` | `null` | no |
| extra\_tags | Variable to pass extra tags. | `map(string)` | `null` | no |
| footer | The XML footer template for web test configuration. | `string` | `"</Items></WebTest>"` | no |
| force\_customer\_storage\_for\_profiler | Should the Application Insights component force users to create their own storage account for profiling? Defaults to false. | `bool` | `false` | no |
| frequency | Interval in seconds between test runs for this WebTest. Default is 300. | `number` | `300` | no |
| geo\_locations | Specifies a list of locations to physically run the tests from, to give global coverage. | `list(string)` | <pre>[<br>  "us-ca-sjc-azr",<br>  "us-tx-sn1-azr",<br>  "us-il-ch1-azr",<br>  "us-va-ash-azr",<br>  "us-fl-mia-edge"<br>]</pre> | no |
| header | The XML header template for web test configuration. | `string` | `"<WebTest Name=\"WebTest1\" Id=\"%s\" Enabled=\"True\" CssProjectStructure=\"\" CssIteration=\"\" Timeout=\"0\" WorkItemIds=\"\" xmlns=\"http://microsoft.com/schemas/VisualStudio/TeamTest/2010\" Description=\"%s\" CredentialUserName=\"\" CredentialPassword=\"\" PreAuthenticate=\"True\" Proxy=\"default\" StopOnError=\"False\" RecordedResultFile=\"\" ResultsLocale=\"\"><Items>"` | no |
| internet\_ingestion\_enabled | (Optional) Should the Application Insights component support ingestion over the public internet? Defaults to false. | `bool` | `false` | no |
| internet\_query\_enabled | (Optional) Should the Application Insights component support querying over the public internet? Defaults to false. | `bool` | `false` | no |
| ip\_masking\_enabled | By default the real client IP is masked as 0.0.0.0 in the logs. Use this to disable masking and log the real client IP. Defaults to false. | `bool` | `false` | no |
| kind | Specifies the type of web test. Examples: 'ping' or 'multistep'. Leave empty for default. | `string` | `"ping"` | no |
| label\_order | The order of labels used to construct resource names or tags. If not specified, defaults to ['name', 'environment', 'location']. | `list(any)` | <pre>[<br>  "name",<br>  "environment",<br>  "location"<br>]</pre> | no |
| list\_of\_test\_urls | List of URLs to use in the availability tests. Example: ["https://test1.example.com", "https://test2.example.com/app"] | `list(string)` | <pre>[<br>  "https://www.google.com",<br>  "https://www.github.com"<br>]</pre> | no |
| local\_authentication\_enabled | (Optional) Disable non-Azure AD based authentication. Defaults to false. | `bool` | `false` | no |
| location | The location/region where the virtual network is created. Changing this forces a new resource to be created. | `string` | n/a | yes |
| log\_analytics\_destination\_type | Possible values are AzureDiagnostics and Dedicated. Default is AzureDiagnostics. When set to Dedicated, logs sent to a Log Analytics workspace will go into resource-specific tables instead of the legacy AzureDiagnostics table. | `string` | `"AzureDiagnostics"` | no |
| log\_analytics\_workspace\_id | The ID of the Log Analytics workspace to send diagnostics data to. | `string` | `null` | no |
| log\_category | The name of a Diagnostic Log Category or Category Group for this resource. | `string` | `null` | no |
| log\_category\_group | The category group for enabled logs | `string` | `"AllLogs"` | no |
| managedby | ManagedBy, eg 'terraform-az-modules'. | `string` | `"terraform-az-modules"` | no |
| metric\_category | The category for enabled metrics | `string` | `"AllMetrics"` | no |
| monitored\_enabled | Indicates whether the availability test is enabled. | `bool` | `true` | no |
| name | Name  (e.g. `app` or `cluster`). | `string` | `"core"` | no |
| parse\_deps | Retrieve resources linked to by the test URL as part of the web test. Valid values are true or false. Default is false. | `bool` | `false` | no |
| repository | Terraform current module repo | `string` | `"https://github.com/terraform-az-modules/terraform-azure-azure-application-insights"` | no |
| resource\_group\_name | The name of the resource group in which to create the network security group. | `string` | n/a | yes |
| resource\_position\_prefix | Controls the placement of the resource type keyword (e.g., "vnet", "ddospp") in the resource name.<br><br>- If true, the keyword is prepended: "vnet-core-dev".<br>- If false, the keyword is appended: "core-dev-vnet".<br><br>This helps maintain naming consistency based on organizational preferences. | `bool` | `true` | no |
| retention\_in\_days | Specifies the retention period in days. Possible values are 30, 60, 90, 120, 180, 270, 365, 550 or 730. Defaults to 90. | `number` | `90` | no |
| retry\_enabled | Allow for retries should this WebTest fail. | `bool` | `true` | no |
| sampling\_percentage | Specifies the percentage of the data produced by the monitored application that is sampled for Application Insights telemetry. | `number` | `100` | no |
| storage\_account\_id | The ID of the Storage Account where diagnostics logs should be sent. | `string` | `null` | no |
| test\_body | WebTest XML request body. If overridden, make sure to retain all the string format() parameters needed for the configuration. | `string` | `"<Request Method=\"GET\" Guid=\"%s\" Version=\"1.1\" Url=\"%s\" ThinkTime=\"0\" Timeout=\"300\" ParseDependentRequests=\"PARSEDEPS\" FollowRedirects=\"True\" RecordResult=\"True\" Cache=\"True\" ResponseTimeGoal=\"0\" Encoding=\"utf-8\" ExpectedHttpStatusCode=\"200\" ExpectedResponseUrl=\"\" ReportingName=\"\" IgnoreHttpStatusCode=\"False\" />"` | no |
| timeout | Seconds until this WebTest will timeout and fail. Default is 30. | `number` | `60` | no |
| web\_test\_enable | Enables or disables creation of web availability tests. | `bool` | `true` | no |
| workspace\_id | (Optional) Specifies the ID of a Log Analytics workspace resource. Changing this forces a new resource to be created. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| app\_insights\_app\_id | The App ID associated with this Application Insights component. |
| app\_insights\_id | The ID of the Application Insights component. |
| connection\_string | The Connection String for this Application Insights component. (Sensitive) |
| instrumentation\_key | The Instrumentation Key for this Application Insights component. (Sensitive) |

