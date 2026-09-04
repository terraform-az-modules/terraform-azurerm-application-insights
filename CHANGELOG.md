# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [v1.1.0] - 2026-09-04
### :bug: Bug Fixes
- [`1323ab0`](https://github.com/terraform-az-modules/terraform-azurerm-application-insights/commit/1323ab02b506bf20cd84e1e6f6bc2106a92b2811) - consolidate versions.tf, remove provider_meta, upgrade to azurerm >= 4.0 *(commit by [@anmolnagpal](https://github.com/anmolnagpal))*
- [`f772a07`](https://github.com/terraform-az-modules/terraform-azurerm-application-insights/commit/f772a07986b68bac98661482a42e4b3011f314c9) - replace version placeholder in example versions.tf with >= 4.0 *(commit by [@anmolnagpal](https://github.com/anmolnagpal))*
- [`5c24bd9`](https://github.com/terraform-az-modules/terraform-azurerm-application-insights/commit/5c24bd9fa4775302e80143e90df1674fe670f951) - update variables  *(PR [#54](https://github.com/terraform-az-modules/terraform-azurerm-application-insights/pull/54) by [@karan-cd](https://github.com/karan-cd))*

### :wrench: Chores
- [`2f629d9`](https://github.com/terraform-az-modules/terraform-azurerm-application-insights/commit/2f629d962f02e2ccdab38ead75c44f0a6eb34ba1) - **deps**: bump hashicorp/setup-terraform from 3 to 4 *(commit by [@dependabot[bot]](https://github.com/apps/dependabot))*
- [`cc91cf2`](https://github.com/terraform-az-modules/terraform-azurerm-application-insights/commit/cc91cf211f8b39693c30851cb846e2af8e316bf7) - **deps**: bump terraform-linters/setup-tflint from 4 to 6 *(commit by [@dependabot[bot]](https://github.com/apps/dependabot))*
- [`326639f`](https://github.com/terraform-az-modules/terraform-azurerm-application-insights/commit/326639f0f031212ffa70a346363fed68c46c2238) - **deps**: bump actions/checkout from 4 to 6 *(commit by [@dependabot[bot]](https://github.com/apps/dependabot))*
- [`b7043a8`](https://github.com/terraform-az-modules/terraform-azurerm-application-insights/commit/b7043a88c15974e8be22174b23e3a8669c4ec2a2) - add provider_meta for API usage tracking *(PR [#43](https://github.com/terraform-az-modules/terraform-azurerm-application-insights/pull/43) by [@clouddrove-ci](https://github.com/clouddrove-ci))*
- [`0a7be23`](https://github.com/terraform-az-modules/terraform-azurerm-application-insights/commit/0a7be237756759a8602d07da88fe4acecc41ca79) - polish module with basic example, changelog, and version fixes *(PR [#44](https://github.com/terraform-az-modules/terraform-azurerm-application-insights/pull/44) by [@clouddrove-ci](https://github.com/clouddrove-ci))*
- [`eeff795`](https://github.com/terraform-az-modules/terraform-azurerm-application-insights/commit/eeff795903a80b9f503df2cc1b1089034f434c92) - **deps**: bump terraform-az-modules/log-analytics/azurerm *(commit by [@dependabot[bot]](https://github.com/apps/dependabot))*
- [`2556225`](https://github.com/terraform-az-modules/terraform-azurerm-application-insights/commit/25562257b61bba3832bea49f78f36cfc7ef1539e) - **deps**: bump terraform-az-modules/resource-group/azurerm *(commit by [@dependabot[bot]](https://github.com/apps/dependabot))*
- [`2cffc29`](https://github.com/terraform-az-modules/terraform-azurerm-application-insights/commit/2cffc29177616bc441071a88b8cd094f2f8261dc) - **deps**: bump terraform-az-modules/log-analytics/azurerm *(commit by [@dependabot[bot]](https://github.com/apps/dependabot))*
- [`c89e34d`](https://github.com/terraform-az-modules/terraform-azurerm-application-insights/commit/c89e34d28648aa8e1d528df77b691c333f4084f9) - **deps**: bump actions/checkout from 3 to 6 *(commit by [@dependabot[bot]](https://github.com/apps/dependabot))*
- [`9bf44ff`](https://github.com/terraform-az-modules/terraform-azurerm-application-insights/commit/9bf44ff37a8fa045e5858bbb52ea5c48d7c175cc) - **deps**: bump actions/checkout from 6 to 7 *(commit by [@dependabot[bot]](https://github.com/apps/dependabot))*
- [`c42d91f`](https://github.com/terraform-az-modules/terraform-azurerm-application-insights/commit/c42d91f96d45882199bcbed93bdadbc48ac35096) - **deps**: bump terraform-az-modules/log-analytics/azurerm *(commit by [@dependabot[bot]](https://github.com/apps/dependabot))*


## [1.0.2] - 2026-03-20

### Changes
- Add provider_meta for API usage tracking
- Add terraform tests and pre-commit CI workflow
- Add SECURITY.md, CONTRIBUTING.md, .releaserc.json
- Standardize pre-commit to antonbabenko v1.105.0
- Set provider: none in tf-checks for validate-only CI
- Bump required_version to >= 1.10.0
[v1.1.0]: https://github.com/terraform-az-modules/terraform-azurerm-application-insights/compare/v1.0.2...v1.1.0
