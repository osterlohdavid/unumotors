view: profile {
  sql_table_name: Salesforce.Profile ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
  }

  dimension_group: _metadata__timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}._metadata__timestamp AS TIMESTAMP) ;;
  }

  dimension: _metadata__uuid {
    type: string
    sql: ${TABLE}._metadata__uuid ;;
  }

  dimension: _metadata_deleted {
    type: yesno
    sql: ${TABLE}._metadata_deleted ;;
  }

  dimension: _metadata_salesforce_id {
    type: string
    sql: ${TABLE}._metadata_salesforce_id ;;
  }

  dimension_group: _metadata_updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}._metadata_updated_at AS TIMESTAMP) ;;
  }

  dimension: created_by_id {
    type: string
    sql: ${TABLE}.CreatedById ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}.CreatedDate AS TIMESTAMP) ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: last_modified_by_id {
    type: string
    sql: ${TABLE}.LastModifiedById ;;
  }

  dimension_group: last_modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}.LastModifiedDate AS TIMESTAMP) ;;
  }

  dimension_group: last_referenced {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}.LastReferencedDate AS TIMESTAMP) ;;
  }

  dimension_group: last_viewed {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}.LastViewedDate AS TIMESTAMP) ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: permissions_access_cmc {
    type: yesno
    sql: ${TABLE}.PermissionsAccessCMC ;;
  }

  dimension: permissions_activate_contract {
    type: yesno
    sql: ${TABLE}.PermissionsActivateContract ;;
  }

  dimension: permissions_activate_order {
    type: yesno
    sql: ${TABLE}.PermissionsActivateOrder ;;
  }

  dimension: permissions_add_direct_message_members {
    type: yesno
    sql: ${TABLE}.PermissionsAddDirectMessageMembers ;;
  }

  dimension: permissions_allow_universal_search {
    type: yesno
    sql: ${TABLE}.PermissionsAllowUniversalSearch ;;
  }

  dimension: permissions_allow_view_edit_converted_leads {
    type: yesno
    sql: ${TABLE}.PermissionsAllowViewEditConvertedLeads ;;
  }

  dimension: permissions_allow_view_knowledge {
    type: yesno
    sql: ${TABLE}.PermissionsAllowViewKnowledge ;;
  }

  dimension: permissions_api_enabled {
    type: yesno
    sql: ${TABLE}.PermissionsApiEnabled ;;
  }

  dimension: permissions_api_user_only {
    type: yesno
    sql: ${TABLE}.PermissionsApiUserOnly ;;
  }

  dimension: permissions_archive_articles {
    type: yesno
    sql: ${TABLE}.PermissionsArchiveArticles ;;
  }

  dimension: permissions_assign_permission_sets {
    type: yesno
    sql: ${TABLE}.PermissionsAssignPermissionSets ;;
  }

  dimension: permissions_assign_topics {
    type: yesno
    sql: ${TABLE}.PermissionsAssignTopics ;;
  }

  dimension: permissions_author_apex {
    type: yesno
    sql: ${TABLE}.PermissionsAuthorApex ;;
  }

  dimension: permissions_automatic_activity_capture {
    type: yesno
    sql: ${TABLE}.PermissionsAutomaticActivityCapture ;;
  }

  dimension: permissions_bulk_api_hard_delete {
    type: yesno
    sql: ${TABLE}.PermissionsBulkApiHardDelete ;;
  }

  dimension: permissions_bulk_macros_allowed {
    type: yesno
    sql: ${TABLE}.PermissionsBulkMacrosAllowed ;;
  }

  dimension: permissions_bypass_email_approval {
    type: yesno
    sql: ${TABLE}.PermissionsBypassEmailApproval ;;
  }

  dimension: permissions_campaign_influence2 {
    type: yesno
    sql: ${TABLE}.PermissionsCampaignInfluence2 ;;
  }

  dimension: permissions_can_approve_feed_post {
    type: yesno
    sql: ${TABLE}.PermissionsCanApproveFeedPost ;;
  }

  dimension: permissions_can_insert_feed_system_fields {
    type: yesno
    sql: ${TABLE}.PermissionsCanInsertFeedSystemFields ;;
  }

  dimension: permissions_can_use_new_dashboard_builder {
    type: yesno
    sql: ${TABLE}.PermissionsCanUseNewDashboardBuilder ;;
  }

  dimension: permissions_chatter_compose_ui_codesnippet {
    type: yesno
    sql: ${TABLE}.PermissionsChatterComposeUiCodesnippet ;;
  }

  dimension: permissions_chatter_edit_own_post {
    type: yesno
    sql: ${TABLE}.PermissionsChatterEditOwnPost ;;
  }

  dimension: permissions_chatter_edit_own_record_post {
    type: yesno
    sql: ${TABLE}.PermissionsChatterEditOwnRecordPost ;;
  }

  dimension: permissions_chatter_file_link {
    type: yesno
    sql: ${TABLE}.PermissionsChatterFileLink ;;
  }

  dimension: permissions_chatter_internal_user {
    type: yesno
    sql: ${TABLE}.PermissionsChatterInternalUser ;;
  }

  dimension: permissions_chatter_invite_external_users {
    type: yesno
    sql: ${TABLE}.PermissionsChatterInviteExternalUsers ;;
  }

  dimension: permissions_chatter_own_groups {
    type: yesno
    sql: ${TABLE}.PermissionsChatterOwnGroups ;;
  }

  dimension: permissions_config_custom_recs {
    type: yesno
    sql: ${TABLE}.PermissionsConfigCustomRecs ;;
  }

  dimension: permissions_connect_org_to_environment_hub {
    type: yesno
    sql: ${TABLE}.PermissionsConnectOrgToEnvironmentHub ;;
  }

  dimension: permissions_content_administrator {
    type: yesno
    sql: ${TABLE}.PermissionsContentAdministrator ;;
  }

  dimension: permissions_content_workspaces {
    type: yesno
    sql: ${TABLE}.PermissionsContentWorkspaces ;;
  }

  dimension: permissions_convert_leads {
    type: yesno
    sql: ${TABLE}.PermissionsConvertLeads ;;
  }

  dimension: permissions_create_audit_fields {
    type: yesno
    sql: ${TABLE}.PermissionsCreateAuditFields ;;
  }

  dimension: permissions_create_customize_dashboards {
    type: yesno
    sql: ${TABLE}.PermissionsCreateCustomizeDashboards ;;
  }

  dimension: permissions_create_customize_filters {
    type: yesno
    sql: ${TABLE}.PermissionsCreateCustomizeFilters ;;
  }

  dimension: permissions_create_customize_reports {
    type: yesno
    sql: ${TABLE}.PermissionsCreateCustomizeReports ;;
  }

  dimension: permissions_create_dashboard_folders {
    type: yesno
    sql: ${TABLE}.PermissionsCreateDashboardFolders ;;
  }

  dimension: permissions_create_multiforce {
    type: yesno
    sql: ${TABLE}.PermissionsCreateMultiforce ;;
  }

  dimension: permissions_create_report_folders {
    type: yesno
    sql: ${TABLE}.PermissionsCreateReportFolders ;;
  }

  dimension: permissions_create_report_in_lightning {
    type: yesno
    sql: ${TABLE}.PermissionsCreateReportInLightning ;;
  }

  dimension: permissions_create_topics {
    type: yesno
    sql: ${TABLE}.PermissionsCreateTopics ;;
  }

  dimension: permissions_create_workspaces {
    type: yesno
    sql: ${TABLE}.PermissionsCreateWorkspaces ;;
  }

  dimension: permissions_custom_mobile_apps_access {
    type: yesno
    sql: ${TABLE}.PermissionsCustomMobileAppsAccess ;;
  }

  dimension: permissions_customize_application {
    type: yesno
    sql: ${TABLE}.PermissionsCustomizeApplication ;;
  }

  dimension: permissions_data_export {
    type: yesno
    sql: ${TABLE}.PermissionsDataExport ;;
  }

  dimension: permissions_delegated_portal_user_admin {
    type: yesno
    sql: ${TABLE}.PermissionsDelegatedPortalUserAdmin ;;
  }

  dimension: permissions_delegated_two_factor {
    type: yesno
    sql: ${TABLE}.PermissionsDelegatedTwoFactor ;;
  }

  dimension: permissions_delete_activated_contract {
    type: yesno
    sql: ${TABLE}.PermissionsDeleteActivatedContract ;;
  }

  dimension: permissions_delete_topics {
    type: yesno
    sql: ${TABLE}.PermissionsDeleteTopics ;;
  }

  dimension: permissions_distribute_from_pers_wksp {
    type: yesno
    sql: ${TABLE}.PermissionsDistributeFromPersWksp ;;
  }

  dimension: permissions_edit_activated_orders {
    type: yesno
    sql: ${TABLE}.PermissionsEditActivatedOrders ;;
  }

  dimension: permissions_edit_brand_templates {
    type: yesno
    sql: ${TABLE}.PermissionsEditBrandTemplates ;;
  }

  dimension: permissions_edit_case_comments {
    type: yesno
    sql: ${TABLE}.PermissionsEditCaseComments ;;
  }

  dimension: permissions_edit_event {
    type: yesno
    sql: ${TABLE}.PermissionsEditEvent ;;
  }

  dimension: permissions_edit_html_templates {
    type: yesno
    sql: ${TABLE}.PermissionsEditHtmlTemplates ;;
  }

  dimension: permissions_edit_knowledge {
    type: yesno
    sql: ${TABLE}.PermissionsEditKnowledge ;;
  }

  dimension: permissions_edit_my_dashboards {
    type: yesno
    sql: ${TABLE}.PermissionsEditMyDashboards ;;
  }

  dimension: permissions_edit_my_reports {
    type: yesno
    sql: ${TABLE}.PermissionsEditMyReports ;;
  }

  dimension: permissions_edit_opp_line_item_unit_price {
    type: yesno
    sql: ${TABLE}.PermissionsEditOppLineItemUnitPrice ;;
  }

  dimension: permissions_edit_public_documents {
    type: yesno
    sql: ${TABLE}.PermissionsEditPublicDocuments ;;
  }

  dimension: permissions_edit_public_templates {
    type: yesno
    sql: ${TABLE}.PermissionsEditPublicTemplates ;;
  }

  dimension: permissions_edit_readonly_fields {
    type: yesno
    sql: ${TABLE}.PermissionsEditReadonlyFields ;;
  }

  dimension: permissions_edit_task {
    type: yesno
    sql: ${TABLE}.PermissionsEditTask ;;
  }

  dimension: permissions_edit_topics {
    type: yesno
    sql: ${TABLE}.PermissionsEditTopics ;;
  }

  dimension: permissions_email_administration {
    type: yesno
    sql: ${TABLE}.PermissionsEmailAdministration ;;
  }

  dimension: permissions_email_mass {
    type: yesno
    sql: ${TABLE}.PermissionsEmailMass ;;
  }

  dimension: permissions_email_single {
    type: yesno
    sql: ${TABLE}.PermissionsEmailSingle ;;
  }

  dimension: permissions_email_template_management {
    type: yesno
    sql: ${TABLE}.PermissionsEmailTemplateManagement ;;
  }

  dimension: permissions_enable_community_app_launcher {
    type: yesno
    sql: ${TABLE}.PermissionsEnableCommunityAppLauncher ;;
  }

  dimension: permissions_enable_notifications {
    type: yesno
    sql: ${TABLE}.PermissionsEnableNotifications ;;
  }

  dimension: permissions_export_report {
    type: yesno
    sql: ${TABLE}.PermissionsExportReport ;;
  }

  dimension: permissions_flow_uflrequired {
    type: yesno
    sql: ${TABLE}.PermissionsFlowUFLRequired ;;
  }

  dimension: permissions_force_two_factor {
    type: yesno
    sql: ${TABLE}.PermissionsForceTwoFactor ;;
  }

  dimension: permissions_govern_networks {
    type: yesno
    sql: ${TABLE}.PermissionsGovernNetworks ;;
  }

  dimension: permissions_hide_read_by_list {
    type: yesno
    sql: ${TABLE}.PermissionsHideReadByList ;;
  }

  dimension: permissions_identity_connect {
    type: yesno
    sql: ${TABLE}.PermissionsIdentityConnect ;;
  }

  dimension: permissions_identity_enabled {
    type: yesno
    sql: ${TABLE}.PermissionsIdentityEnabled ;;
  }

  dimension: permissions_import_custom_objects {
    type: yesno
    sql: ${TABLE}.PermissionsImportCustomObjects ;;
  }

  dimension: permissions_import_leads {
    type: yesno
    sql: ${TABLE}.PermissionsImportLeads ;;
  }

  dimension: permissions_import_personal {
    type: yesno
    sql: ${TABLE}.PermissionsImportPersonal ;;
  }

  dimension: permissions_inbound_migration_tools_user {
    type: yesno
    sql: ${TABLE}.PermissionsInboundMigrationToolsUser ;;
  }

  dimension: permissions_insights_app_admin {
    type: yesno
    sql: ${TABLE}.PermissionsInsightsAppAdmin ;;
  }

  dimension: permissions_insights_app_dashboard_editor {
    type: yesno
    sql: ${TABLE}.PermissionsInsightsAppDashboardEditor ;;
  }

  dimension: permissions_insights_app_elt_editor {
    type: yesno
    sql: ${TABLE}.PermissionsInsightsAppEltEditor ;;
  }

  dimension: permissions_insights_app_upload_user {
    type: yesno
    sql: ${TABLE}.PermissionsInsightsAppUploadUser ;;
  }

  dimension: permissions_insights_app_user {
    type: yesno
    sql: ${TABLE}.PermissionsInsightsAppUser ;;
  }

  dimension: permissions_insights_create_application {
    type: yesno
    sql: ${TABLE}.PermissionsInsightsCreateApplication ;;
  }

  dimension: permissions_install_multiforce {
    type: yesno
    sql: ${TABLE}.PermissionsInstallMultiforce ;;
  }

  dimension: permissions_iprestrict_requests {
    type: yesno
    sql: ${TABLE}.PermissionsIPRestrictRequests ;;
  }

  dimension: permissions_lightning_console_allowed_for_user {
    type: yesno
    sql: ${TABLE}.PermissionsLightningConsoleAllowedForUser ;;
  }

  dimension: permissions_lightning_experience_user {
    type: yesno
    sql: ${TABLE}.PermissionsLightningExperienceUser ;;
  }

  dimension: permissions_manage_analytic_snapshots {
    type: yesno
    sql: ${TABLE}.PermissionsManageAnalyticSnapshots ;;
  }

  dimension: permissions_manage_auth_providers {
    type: yesno
    sql: ${TABLE}.PermissionsManageAuthProviders ;;
  }

  dimension: permissions_manage_business_hour_holidays {
    type: yesno
    sql: ${TABLE}.PermissionsManageBusinessHourHolidays ;;
  }

  dimension: permissions_manage_call_centers {
    type: yesno
    sql: ${TABLE}.PermissionsManageCallCenters ;;
  }

  dimension: permissions_manage_cases {
    type: yesno
    sql: ${TABLE}.PermissionsManageCases ;;
  }

  dimension: permissions_manage_categories {
    type: yesno
    sql: ${TABLE}.PermissionsManageCategories ;;
  }

  dimension: permissions_manage_certificates {
    type: yesno
    sql: ${TABLE}.PermissionsManageCertificates ;;
  }

  dimension: permissions_manage_chatter_messages {
    type: yesno
    sql: ${TABLE}.PermissionsManageChatterMessages ;;
  }

  dimension: permissions_manage_content_permissions {
    type: yesno
    sql: ${TABLE}.PermissionsManageContentPermissions ;;
  }

  dimension: permissions_manage_content_properties {
    type: yesno
    sql: ${TABLE}.PermissionsManageContentProperties ;;
  }

  dimension: permissions_manage_content_types {
    type: yesno
    sql: ${TABLE}.PermissionsManageContentTypes ;;
  }

  dimension: permissions_manage_css_users {
    type: yesno
    sql: ${TABLE}.PermissionsManageCssUsers ;;
  }

  dimension: permissions_manage_custom_permissions {
    type: yesno
    sql: ${TABLE}.PermissionsManageCustomPermissions ;;
  }

  dimension: permissions_manage_custom_report_types {
    type: yesno
    sql: ${TABLE}.PermissionsManageCustomReportTypes ;;
  }

  dimension: permissions_manage_dashbds_in_pub_folders {
    type: yesno
    sql: ${TABLE}.PermissionsManageDashbdsInPubFolders ;;
  }

  dimension: permissions_manage_data_categories {
    type: yesno
    sql: ${TABLE}.PermissionsManageDataCategories ;;
  }

  dimension: permissions_manage_data_integrations {
    type: yesno
    sql: ${TABLE}.PermissionsManageDataIntegrations ;;
  }

  dimension: permissions_manage_email_client_config {
    type: yesno
    sql: ${TABLE}.PermissionsManageEmailClientConfig ;;
  }

  dimension: permissions_manage_entitlements {
    type: yesno
    sql: ${TABLE}.PermissionsManageEntitlements ;;
  }

  dimension: permissions_manage_exchange_config {
    type: yesno
    sql: ${TABLE}.PermissionsManageExchangeConfig ;;
  }

  dimension: permissions_manage_health_check {
    type: yesno
    sql: ${TABLE}.PermissionsManageHealthCheck ;;
  }

  dimension: permissions_manage_interaction {
    type: yesno
    sql: ${TABLE}.PermissionsManageInteraction ;;
  }

  dimension: permissions_manage_internal_users {
    type: yesno
    sql: ${TABLE}.PermissionsManageInternalUsers ;;
  }

  dimension: permissions_manage_ip_addresses {
    type: yesno
    sql: ${TABLE}.PermissionsManageIpAddresses ;;
  }

  dimension: permissions_manage_knowledge {
    type: yesno
    sql: ${TABLE}.PermissionsManageKnowledge ;;
  }

  dimension: permissions_manage_knowledge_import_export {
    type: yesno
    sql: ${TABLE}.PermissionsManageKnowledgeImportExport ;;
  }

  dimension: permissions_manage_leads {
    type: yesno
    sql: ${TABLE}.PermissionsManageLeads ;;
  }

  dimension: permissions_manage_login_access_policies {
    type: yesno
    sql: ${TABLE}.PermissionsManageLoginAccessPolicies ;;
  }

  dimension: permissions_manage_mobile {
    type: yesno
    sql: ${TABLE}.PermissionsManageMobile ;;
  }

  dimension: permissions_manage_networks {
    type: yesno
    sql: ${TABLE}.PermissionsManageNetworks ;;
  }

  dimension: permissions_manage_partners {
    type: yesno
    sql: ${TABLE}.PermissionsManagePartners ;;
  }

  dimension: permissions_manage_password_policies {
    type: yesno
    sql: ${TABLE}.PermissionsManagePasswordPolicies ;;
  }

  dimension: permissions_manage_profiles_permissionsets {
    type: yesno
    sql: ${TABLE}.PermissionsManageProfilesPermissionsets ;;
  }

  dimension: permissions_manage_pvt_rpts_and_dashbds {
    type: yesno
    sql: ${TABLE}.PermissionsManagePvtRptsAndDashbds ;;
  }

  dimension: permissions_manage_quotas {
    type: yesno
    sql: ${TABLE}.PermissionsManageQuotas ;;
  }

  dimension: permissions_manage_remote_access {
    type: yesno
    sql: ${TABLE}.PermissionsManageRemoteAccess ;;
  }

  dimension: permissions_manage_reports_in_pub_folders {
    type: yesno
    sql: ${TABLE}.PermissionsManageReportsInPubFolders ;;
  }

  dimension: permissions_manage_roles {
    type: yesno
    sql: ${TABLE}.PermissionsManageRoles ;;
  }

  dimension: permissions_manage_sandboxes {
    type: yesno
    sql: ${TABLE}.PermissionsManageSandboxes ;;
  }

  dimension: permissions_manage_search_promotion_rules {
    type: yesno
    sql: ${TABLE}.PermissionsManageSearchPromotionRules ;;
  }

  dimension: permissions_manage_session_permission_sets {
    type: yesno
    sql: ${TABLE}.PermissionsManageSessionPermissionSets ;;
  }

  dimension: permissions_manage_sharing {
    type: yesno
    sql: ${TABLE}.PermissionsManageSharing ;;
  }

  dimension: permissions_manage_solutions {
    type: yesno
    sql: ${TABLE}.PermissionsManageSolutions ;;
  }

  dimension: permissions_manage_synonyms {
    type: yesno
    sql: ${TABLE}.PermissionsManageSynonyms ;;
  }

  dimension: permissions_manage_templated_app {
    type: yesno
    sql: ${TABLE}.PermissionsManageTemplatedApp ;;
  }

  dimension: permissions_manage_translation {
    type: yesno
    sql: ${TABLE}.PermissionsManageTranslation ;;
  }

  dimension: permissions_manage_two_factor {
    type: yesno
    sql: ${TABLE}.PermissionsManageTwoFactor ;;
  }

  dimension: permissions_manage_unlisted_groups {
    type: yesno
    sql: ${TABLE}.PermissionsManageUnlistedGroups ;;
  }

  dimension: permissions_manage_users {
    type: yesno
    sql: ${TABLE}.PermissionsManageUsers ;;
  }

  dimension: permissions_mass_inline_edit {
    type: yesno
    sql: ${TABLE}.PermissionsMassInlineEdit ;;
  }

  dimension: permissions_merge_topics {
    type: yesno
    sql: ${TABLE}.PermissionsMergeTopics ;;
  }

  dimension: permissions_moderate_chatter {
    type: yesno
    sql: ${TABLE}.PermissionsModerateChatter ;;
  }

  dimension: permissions_moderate_network_feeds {
    type: yesno
    sql: ${TABLE}.PermissionsModerateNetworkFeeds ;;
  }

  dimension: permissions_moderate_network_files {
    type: yesno
    sql: ${TABLE}.PermissionsModerateNetworkFiles ;;
  }

  dimension: permissions_moderate_network_messages {
    type: yesno
    sql: ${TABLE}.PermissionsModerateNetworkMessages ;;
  }

  dimension: permissions_moderate_network_users {
    type: yesno
    sql: ${TABLE}.PermissionsModerateNetworkUsers ;;
  }

  dimension: permissions_modify_all_data {
    type: yesno
    sql: ${TABLE}.PermissionsModifyAllData ;;
  }

  dimension: permissions_new_report_builder {
    type: yesno
    sql: ${TABLE}.PermissionsNewReportBuilder ;;
  }

  dimension: permissions_outbound_migration_tools_user {
    type: yesno
    sql: ${TABLE}.PermissionsOutboundMigrationToolsUser ;;
  }

  dimension: permissions_override_forecasts {
    type: yesno
    sql: ${TABLE}.PermissionsOverrideForecasts ;;
  }

  dimension: permissions_password_never_expires {
    type: yesno
    sql: ${TABLE}.PermissionsPasswordNeverExpires ;;
  }

  dimension: permissions_portal_super_user {
    type: yesno
    sql: ${TABLE}.PermissionsPortalSuperUser ;;
  }

  dimension: permissions_prevent_classic_experience {
    type: yesno
    sql: ${TABLE}.PermissionsPreventClassicExperience ;;
  }

  dimension: permissions_public_twitter_response {
    type: yesno
    sql: ${TABLE}.PermissionsPublicTwitterResponse ;;
  }

  dimension: permissions_publish_articles {
    type: yesno
    sql: ${TABLE}.PermissionsPublishArticles ;;
  }

  dimension: permissions_publish_multiforce {
    type: yesno
    sql: ${TABLE}.PermissionsPublishMultiforce ;;
  }

  dimension: permissions_record_visibility_api {
    type: yesno
    sql: ${TABLE}.PermissionsRecordVisibilityAPI ;;
  }

  dimension: permissions_remove_direct_message_members {
    type: yesno
    sql: ${TABLE}.PermissionsRemoveDirectMessageMembers ;;
  }

  dimension: permissions_reset_passwords {
    type: yesno
    sql: ${TABLE}.PermissionsResetPasswords ;;
  }

  dimension: permissions_run_flow {
    type: yesno
    sql: ${TABLE}.PermissionsRunFlow ;;
  }

  dimension: permissions_run_reports {
    type: yesno
    sql: ${TABLE}.PermissionsRunReports ;;
  }

  dimension: permissions_sales_analytics_user {
    type: yesno
    sql: ${TABLE}.PermissionsSalesAnalyticsUser ;;
  }

  dimension: permissions_sales_console {
    type: yesno
    sql: ${TABLE}.PermissionsSalesConsole ;;
  }

  dimension: permissions_schedule_job {
    type: yesno
    sql: ${TABLE}.PermissionsScheduleJob ;;
  }

  dimension: permissions_schedule_reports {
    type: yesno
    sql: ${TABLE}.PermissionsScheduleReports ;;
  }

  dimension: permissions_select_files_from_salesforce {
    type: yesno
    sql: ${TABLE}.PermissionsSelectFilesFromSalesforce ;;
  }

  dimension: permissions_send_announcement_emails {
    type: yesno
    sql: ${TABLE}.PermissionsSendAnnouncementEmails ;;
  }

  dimension: permissions_send_sit_requests {
    type: yesno
    sql: ${TABLE}.PermissionsSendSitRequests ;;
  }

  dimension: permissions_service_analytics_user {
    type: yesno
    sql: ${TABLE}.PermissionsServiceAnalyticsUser ;;
  }

  dimension: permissions_share_internal_articles {
    type: yesno
    sql: ${TABLE}.PermissionsShareInternalArticles ;;
  }

  dimension: permissions_show_company_name_as_user_badge {
    type: yesno
    sql: ${TABLE}.PermissionsShowCompanyNameAsUserBadge ;;
  }

  dimension: permissions_solution_import {
    type: yesno
    sql: ${TABLE}.PermissionsSolutionImport ;;
  }

  dimension: permissions_submit_macros_allowed {
    type: yesno
    sql: ${TABLE}.PermissionsSubmitMacrosAllowed ;;
  }

  dimension: permissions_subscribe_report_to_other_users {
    type: yesno
    sql: ${TABLE}.PermissionsSubscribeReportToOtherUsers ;;
  }

  dimension: permissions_subscribe_reports_run_as_user {
    type: yesno
    sql: ${TABLE}.PermissionsSubscribeReportsRunAsUser ;;
  }

  dimension: permissions_subscribe_to_lightning_reports {
    type: yesno
    sql: ${TABLE}.PermissionsSubscribeToLightningReports ;;
  }

  dimension: permissions_tag_manager {
    type: yesno
    sql: ${TABLE}.PermissionsTagManager ;;
  }

  dimension: permissions_transfer_any_case {
    type: yesno
    sql: ${TABLE}.PermissionsTransferAnyCase ;;
  }

  dimension: permissions_transfer_any_entity {
    type: yesno
    sql: ${TABLE}.PermissionsTransferAnyEntity ;;
  }

  dimension: permissions_transfer_any_lead {
    type: yesno
    sql: ${TABLE}.PermissionsTransferAnyLead ;;
  }

  dimension: permissions_two_factor_api {
    type: yesno
    sql: ${TABLE}.PermissionsTwoFactorApi ;;
  }

  dimension: permissions_update_with_inactive_owner {
    type: yesno
    sql: ${TABLE}.PermissionsUpdateWithInactiveOwner ;;
  }

  dimension: permissions_use_team_reassign_wizards {
    type: yesno
    sql: ${TABLE}.PermissionsUseTeamReassignWizards ;;
  }

  dimension: permissions_use_templated_app {
    type: yesno
    sql: ${TABLE}.PermissionsUseTemplatedApp ;;
  }

  dimension: permissions_view_all_activities {
    type: yesno
    sql: ${TABLE}.PermissionsViewAllActivities ;;
  }

  dimension: permissions_view_all_data {
    type: yesno
    sql: ${TABLE}.PermissionsViewAllData ;;
  }

  dimension: permissions_view_all_forecasts {
    type: yesno
    sql: ${TABLE}.PermissionsViewAllForecasts ;;
  }

  dimension: permissions_view_all_users {
    type: yesno
    sql: ${TABLE}.PermissionsViewAllUsers ;;
  }

  dimension: permissions_view_content {
    type: yesno
    sql: ${TABLE}.PermissionsViewContent ;;
  }

  dimension: permissions_view_customer_sentiment {
    type: yesno
    sql: ${TABLE}.PermissionsViewCustomerSentiment ;;
  }

  dimension: permissions_view_data_assessment {
    type: yesno
    sql: ${TABLE}.PermissionsViewDataAssessment ;;
  }

  dimension: permissions_view_data_categories {
    type: yesno
    sql: ${TABLE}.PermissionsViewDataCategories ;;
  }

  dimension: permissions_view_encrypted_data {
    type: yesno
    sql: ${TABLE}.PermissionsViewEncryptedData ;;
  }

  dimension: permissions_view_event_log_files {
    type: yesno
    sql: ${TABLE}.PermissionsViewEventLogFiles ;;
  }

  dimension: permissions_view_global_header {
    type: yesno
    sql: ${TABLE}.PermissionsViewGlobalHeader ;;
  }

  dimension: permissions_view_health_check {
    type: yesno
    sql: ${TABLE}.PermissionsViewHealthCheck ;;
  }

  dimension: permissions_view_help_link {
    type: yesno
    sql: ${TABLE}.PermissionsViewHelpLink ;;
  }

  dimension: permissions_view_my_teams_dashboards {
    type: yesno
    sql: ${TABLE}.PermissionsViewMyTeamsDashboards ;;
  }

  dimension: permissions_view_public_dashboards {
    type: yesno
    sql: ${TABLE}.PermissionsViewPublicDashboards ;;
  }

  dimension: permissions_view_public_reports {
    type: yesno
    sql: ${TABLE}.PermissionsViewPublicReports ;;
  }

  dimension: permissions_view_setup {
    type: yesno
    sql: ${TABLE}.PermissionsViewSetup ;;
  }

  dimension: permissions_wave_tabular_download {
    type: yesno
    sql: ${TABLE}.PermissionsWaveTabularDownload ;;
  }

  dimension: permissions_wave_trend_reports {
    type: yesno
    sql: ${TABLE}.PermissionsWaveTrendReports ;;
  }

  dimension_group: system_modstamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}.SystemModstamp AS TIMESTAMP) ;;
  }

  dimension: user_license_id {
    type: string
    sql: ${TABLE}.UserLicenseId ;;
  }

  dimension: user_type {
    type: string
    sql: ${TABLE}.UserType ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, user.count]
  }
}
