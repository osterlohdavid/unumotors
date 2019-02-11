view: user {
  sql_table_name: Salesforce.User ;;

  dimension: pi__pardot_user_id__c {
    primary_key: yes
    type: string
    sql: ${TABLE}.pi__Pardot_User_Id__c ;;
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

  dimension: about_me {
    type: string
    sql: ${TABLE}.AboutMe ;;
  }

  dimension: account_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.AccountId ;;
  }

  dimension: alias {
    type: string
    sql: ${TABLE}.Alias ;;
  }

  dimension: badge_text {
    type: string
    sql: ${TABLE}.BadgeText ;;
  }

  dimension: banner_photo_url {
    type: string
    sql: ${TABLE}.BannerPhotoUrl ;;
  }

  dimension: calendly_alias__c {
    type: string
    sql: ${TABLE}.CalendlyAlias__c ;;
  }

  dimension: call_center_id {
    type: string
    sql: ${TABLE}.CallCenterId ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: city__c {
    type: string
    sql: ${TABLE}.City__c ;;
  }

  dimension: community_nickname {
    type: string
    sql: ${TABLE}.CommunityNickname ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.CompanyName ;;
  }

  dimension: contact_id {
    type: string
    sql: ${TABLE}.ContactId ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.CountryCode ;;
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

  dimension: currency_iso_code {
    type: string
    sql: ${TABLE}.CurrencyIsoCode ;;
  }

  dimension: default_currency_iso_code {
    type: string
    sql: ${TABLE}.DefaultCurrencyIsoCode ;;
  }

  dimension: default_group_notification_frequency {
    type: string
    sql: ${TABLE}.DefaultGroupNotificationFrequency ;;
  }

  dimension: delegated_approver_id {
    type: string
    sql: ${TABLE}.DelegatedApproverId ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.Department ;;
  }

  dimension: digest_frequency {
    type: string
    sql: ${TABLE}.DigestFrequency ;;
  }

  dimension: division {
    type: string
    sql: ${TABLE}.Division ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: email_encoding_key {
    type: string
    sql: ${TABLE}.EmailEncodingKey ;;
  }

  dimension: email_preferences_auto_bcc {
    type: yesno
    sql: ${TABLE}.EmailPreferencesAutoBcc ;;
  }

  dimension: email_preferences_auto_bcc_stay_in_touch {
    type: yesno
    sql: ${TABLE}.EmailPreferencesAutoBccStayInTouch ;;
  }

  dimension: email_preferences_stay_in_touch_reminder {
    type: yesno
    sql: ${TABLE}.EmailPreferencesStayInTouchReminder ;;
  }

  dimension: employee_number {
    type: string
    sql: ${TABLE}.EmployeeNumber ;;
  }

  dimension: extension {
    type: string
    sql: ${TABLE}.Extension ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}.Fax ;;
  }

  dimension: federation_identifier {
    type: string
    sql: ${TABLE}.FederationIdentifier ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: forecast_enabled {
    type: yesno
    sql: ${TABLE}.ForecastEnabled ;;
  }

  dimension: full_photo_url {
    type: string
    sql: ${TABLE}.FullPhotoUrl ;;
  }

  dimension: geocode_accuracy {
    type: string
    sql: ${TABLE}.GeocodeAccuracy ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.Id ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.IsActive ;;
  }

  dimension: is_ext_indicator_visible {
    type: yesno
    sql: ${TABLE}.IsExtIndicatorVisible ;;
  }

  dimension: is_portal_enabled {
    type: yesno
    sql: ${TABLE}.IsPortalEnabled ;;
  }

  dimension: is_portal_self_registered {
    type: yesno
    sql: ${TABLE}.IsPortalSelfRegistered ;;
  }

  dimension: is_profile_photo_active {
    type: yesno
    sql: ${TABLE}.IsProfilePhotoActive ;;
  }

  dimension: language_locale_key {
    type: string
    sql: ${TABLE}.LanguageLocaleKey ;;
  }

  dimension_group: last_login {
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
    sql: CAST(${TABLE}.LastLoginDate AS TIMESTAMP) ;;
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

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension_group: last_password_change {
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
    sql: CAST(${TABLE}.LastPasswordChangeDate AS TIMESTAMP) ;;
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

  dimension: latitude {
    type: number
    sql: ${TABLE}.Latitude ;;
  }

  dimension: locale_sid_key {
    type: string
    sql: ${TABLE}.LocaleSidKey ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.Longitude ;;
  }

  dimension: manager_id {
    type: string
    sql: ${TABLE}.ManagerId ;;
  }

  dimension: medium_banner_photo_url {
    type: string
    sql: ${TABLE}.MediumBannerPhotoUrl ;;
  }

  dimension: medium_photo_url {
    type: string
    sql: ${TABLE}.MediumPhotoUrl ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.MiddleName ;;
  }

  dimension: mobile_phone {
    type: string
    sql: ${TABLE}.MobilePhone ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension_group: offline_pda_trial_expiration {
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
    sql: CAST(${TABLE}.OfflinePdaTrialExpirationDate AS TIMESTAMP) ;;
  }

  dimension_group: offline_trial_expiration {
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
    sql: CAST(${TABLE}.OfflineTrialExpirationDate AS TIMESTAMP) ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.Phone ;;
  }

  dimension: pi__can_view_not_assigned_prospects__c {
    type: yesno
    sql: ${TABLE}.pi__Can_View_Not_Assigned_Prospects__c ;;
  }

  dimension: pi__pardot_api_key__c {
    type: string
    sql: ${TABLE}.pi__Pardot_Api_Key__c ;;
  }

  dimension: pi__pardot_api_version__c {
    type: string
    sql: ${TABLE}.pi__Pardot_Api_Version__c ;;
  }

  dimension: pi__pardot_user_key__c {
    type: string
    sql: ${TABLE}.pi__Pardot_User_Key__c ;;
  }

  dimension: pi__pardot_user_role__c {
    type: string
    sql: ${TABLE}.pi__Pardot_User_Role__c ;;
  }

  dimension: pioneer_user_type__c {
    type: string
    sql: ${TABLE}.Pioneer_User_Type__c ;;
  }

  dimension: portal_role {
    type: string
    sql: ${TABLE}.PortalRole ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.PostalCode ;;
  }

  dimension: profile_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ProfileId ;;
  }

  dimension: receives_admin_info_emails {
    type: yesno
    sql: ${TABLE}.ReceivesAdminInfoEmails ;;
  }

  dimension: receives_info_emails {
    type: yesno
    sql: ${TABLE}.ReceivesInfoEmails ;;
  }

  dimension: region__c {
    type: string
    sql: ${TABLE}.Region__c ;;
  }

  dimension: sender_email {
    type: string
    sql: ${TABLE}.SenderEmail ;;
  }

  dimension: sender_name {
    type: string
    sql: ${TABLE}.SenderName ;;
  }

  dimension: signature {
    type: string
    sql: ${TABLE}.Signature ;;
  }

  dimension: small_banner_photo_url {
    type: string
    sql: ${TABLE}.SmallBannerPhotoUrl ;;
  }

  dimension: small_photo_url {
    type: string
    sql: ${TABLE}.SmallPhotoUrl ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: state_code {
    type: string
    sql: ${TABLE}.StateCode ;;
  }

  dimension: statement_created__c {
    type: yesno
    sql: ${TABLE}.Statement_created__c ;;
  }

  dimension: stay_in_touch_note {
    type: string
    sql: ${TABLE}.StayInTouchNote ;;
  }

  dimension: stay_in_touch_signature {
    type: string
    sql: ${TABLE}.StayInTouchSignature ;;
  }

  dimension: stay_in_touch_subject {
    type: string
    sql: ${TABLE}.StayInTouchSubject ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}.Street ;;
  }

  dimension: suffix {
    type: string
    sql: ${TABLE}.Suffix ;;
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

  dimension: time_zone_sid_key {
    type: string
    sql: ${TABLE}.TimeZoneSidKey ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  dimension: user_permissions_avantgo_user {
    type: yesno
    sql: ${TABLE}.UserPermissionsAvantgoUser ;;
  }

  dimension: user_permissions_call_center_auto_login {
    type: yesno
    sql: ${TABLE}.UserPermissionsCallCenterAutoLogin ;;
  }

  dimension: user_permissions_chatter_answers_user {
    type: yesno
    sql: ${TABLE}.UserPermissionsChatterAnswersUser ;;
  }

  dimension: user_permissions_interaction_user {
    type: yesno
    sql: ${TABLE}.UserPermissionsInteractionUser ;;
  }

  dimension: user_permissions_knowledge_user {
    type: yesno
    sql: ${TABLE}.UserPermissionsKnowledgeUser ;;
  }

  dimension: user_permissions_marketing_user {
    type: yesno
    sql: ${TABLE}.UserPermissionsMarketingUser ;;
  }

  dimension: user_permissions_mobile_user {
    type: yesno
    sql: ${TABLE}.UserPermissionsMobileUser ;;
  }

  dimension: user_permissions_offline_user {
    type: yesno
    sql: ${TABLE}.UserPermissionsOfflineUser ;;
  }

  dimension: user_permissions_sfcontent_user {
    type: yesno
    sql: ${TABLE}.UserPermissionsSFContentUser ;;
  }

  dimension: user_permissions_support_user {
    type: yesno
    sql: ${TABLE}.UserPermissionsSupportUser ;;
  }

  dimension: user_preferences_activity_reminders_popup {
    type: yesno
    sql: ${TABLE}.UserPreferencesActivityRemindersPopup ;;
  }

  dimension: user_preferences_apex_pages_developer_mode {
    type: yesno
    sql: ${TABLE}.UserPreferencesApexPagesDeveloperMode ;;
  }

  dimension: user_preferences_cache_diagnostics {
    type: yesno
    sql: ${TABLE}.UserPreferencesCacheDiagnostics ;;
  }

  dimension: user_preferences_content_email_as_and_when {
    type: yesno
    sql: ${TABLE}.UserPreferencesContentEmailAsAndWhen ;;
  }

  dimension: user_preferences_content_no_email {
    type: yesno
    sql: ${TABLE}.UserPreferencesContentNoEmail ;;
  }

  dimension: user_preferences_create_lexapps_wtshown {
    type: yesno
    sql: ${TABLE}.UserPreferencesCreateLEXAppsWTShown ;;
  }

  dimension: user_preferences_dis_comment_after_like_email {
    type: yesno
    sql: ${TABLE}.UserPreferencesDisCommentAfterLikeEmail ;;
  }

  dimension: user_preferences_dis_mentions_comment_email {
    type: yesno
    sql: ${TABLE}.UserPreferencesDisMentionsCommentEmail ;;
  }

  dimension: user_preferences_dis_prof_post_comment_email {
    type: yesno
    sql: ${TABLE}.UserPreferencesDisProfPostCommentEmail ;;
  }

  dimension: user_preferences_disable_all_feeds_email {
    type: yesno
    sql: ${TABLE}.UserPreferencesDisableAllFeedsEmail ;;
  }

  dimension: user_preferences_disable_bookmark_email {
    type: yesno
    sql: ${TABLE}.UserPreferencesDisableBookmarkEmail ;;
  }

  dimension: user_preferences_disable_change_comment_email {
    type: yesno
    sql: ${TABLE}.UserPreferencesDisableChangeCommentEmail ;;
  }

  dimension: user_preferences_disable_endorsement_email {
    type: yesno
    sql: ${TABLE}.UserPreferencesDisableEndorsementEmail ;;
  }

  dimension: user_preferences_disable_file_share_notifications_for_api {
    type: yesno
    sql: ${TABLE}.UserPreferencesDisableFileShareNotificationsForApi ;;
  }

  dimension: user_preferences_disable_followers_email {
    type: yesno
    sql: ${TABLE}.UserPreferencesDisableFollowersEmail ;;
  }

  dimension: user_preferences_disable_later_comment_email {
    type: yesno
    sql: ${TABLE}.UserPreferencesDisableLaterCommentEmail ;;
  }

  dimension: user_preferences_disable_like_email {
    type: yesno
    sql: ${TABLE}.UserPreferencesDisableLikeEmail ;;
  }

  dimension: user_preferences_disable_mentions_post_email {
    type: yesno
    sql: ${TABLE}.UserPreferencesDisableMentionsPostEmail ;;
  }

  dimension: user_preferences_disable_message_email {
    type: yesno
    sql: ${TABLE}.UserPreferencesDisableMessageEmail ;;
  }

  dimension: user_preferences_disable_profile_post_email {
    type: yesno
    sql: ${TABLE}.UserPreferencesDisableProfilePostEmail ;;
  }

  dimension: user_preferences_disable_share_post_email {
    type: yesno
    sql: ${TABLE}.UserPreferencesDisableSharePostEmail ;;
  }

  dimension: user_preferences_enable_auto_sub_for_feeds {
    type: yesno
    sql: ${TABLE}.UserPreferencesEnableAutoSubForFeeds ;;
  }

  dimension: user_preferences_event_reminders_checkbox_default {
    type: yesno
    sql: ${TABLE}.UserPreferencesEventRemindersCheckboxDefault ;;
  }

  dimension: user_preferences_favorites_show_top_favorites {
    type: yesno
    sql: ${TABLE}.UserPreferencesFavoritesShowTopFavorites ;;
  }

  dimension: user_preferences_favorites_wtshown {
    type: yesno
    sql: ${TABLE}.UserPreferencesFavoritesWTShown ;;
  }

  dimension: user_preferences_global_nav_bar_wtshown {
    type: yesno
    sql: ${TABLE}.UserPreferencesGlobalNavBarWTShown ;;
  }

  dimension: user_preferences_global_nav_grid_menu_wtshown {
    type: yesno
    sql: ${TABLE}.UserPreferencesGlobalNavGridMenuWTShown ;;
  }

  dimension: user_preferences_hide_bigger_photo_callout {
    type: yesno
    sql: ${TABLE}.UserPreferencesHideBiggerPhotoCallout ;;
  }

  dimension: user_preferences_hide_chatter_onboarding_splash {
    type: yesno
    sql: ${TABLE}.UserPreferencesHideChatterOnboardingSplash ;;
  }

  dimension: user_preferences_hide_csndesktop_task {
    type: yesno
    sql: ${TABLE}.UserPreferencesHideCSNDesktopTask ;;
  }

  dimension: user_preferences_hide_csnget_chatter_mobile_task {
    type: yesno
    sql: ${TABLE}.UserPreferencesHideCSNGetChatterMobileTask ;;
  }

  dimension: user_preferences_hide_end_user_onboarding_assistant_modal {
    type: yesno
    sql: ${TABLE}.UserPreferencesHideEndUserOnboardingAssistantModal ;;
  }

  dimension: user_preferences_hide_lightning_migration_modal {
    type: yesno
    sql: ${TABLE}.UserPreferencesHideLightningMigrationModal ;;
  }

  dimension: user_preferences_hide_s1_browser_ui {
    type: yesno
    sql: ${TABLE}.UserPreferencesHideS1BrowserUI ;;
  }

  dimension: user_preferences_hide_second_chatter_onboarding_splash {
    type: yesno
    sql: ${TABLE}.UserPreferencesHideSecondChatterOnboardingSplash ;;
  }

  dimension: user_preferences_hide_sfx_welcome_mat {
    type: yesno
    sql: ${TABLE}.UserPreferencesHideSfxWelcomeMat ;;
  }

  dimension: user_preferences_lightning_experience_preferred {
    type: yesno
    sql: ${TABLE}.UserPreferencesLightningExperiencePreferred ;;
  }

  dimension: user_preferences_path_assistant_collapsed {
    type: yesno
    sql: ${TABLE}.UserPreferencesPathAssistantCollapsed ;;
  }

  dimension: user_preferences_preview_lightning {
    type: yesno
    sql: ${TABLE}.UserPreferencesPreviewLightning ;;
  }

  dimension: user_preferences_record_home_reserved_wtshown {
    type: yesno
    sql: ${TABLE}.UserPreferencesRecordHomeReservedWTShown ;;
  }

  dimension: user_preferences_record_home_section_collapse_wtshown {
    type: yesno
    sql: ${TABLE}.UserPreferencesRecordHomeSectionCollapseWTShown ;;
  }

  dimension: user_preferences_reminder_sound_off {
    type: yesno
    sql: ${TABLE}.UserPreferencesReminderSoundOff ;;
  }

  dimension: user_preferences_show_city_to_external_users {
    type: yesno
    sql: ${TABLE}.UserPreferencesShowCityToExternalUsers ;;
  }

  dimension: user_preferences_show_city_to_guest_users {
    type: yesno
    sql: ${TABLE}.UserPreferencesShowCityToGuestUsers ;;
  }

  dimension: user_preferences_show_country_to_external_users {
    type: yesno
    sql: ${TABLE}.UserPreferencesShowCountryToExternalUsers ;;
  }

  dimension: user_preferences_show_country_to_guest_users {
    type: yesno
    sql: ${TABLE}.UserPreferencesShowCountryToGuestUsers ;;
  }

  dimension: user_preferences_show_email_to_external_users {
    type: yesno
    sql: ${TABLE}.UserPreferencesShowEmailToExternalUsers ;;
  }

  dimension: user_preferences_show_email_to_guest_users {
    type: yesno
    sql: ${TABLE}.UserPreferencesShowEmailToGuestUsers ;;
  }

  dimension: user_preferences_show_fax_to_external_users {
    type: yesno
    sql: ${TABLE}.UserPreferencesShowFaxToExternalUsers ;;
  }

  dimension: user_preferences_show_fax_to_guest_users {
    type: yesno
    sql: ${TABLE}.UserPreferencesShowFaxToGuestUsers ;;
  }

  dimension: user_preferences_show_manager_to_external_users {
    type: yesno
    sql: ${TABLE}.UserPreferencesShowManagerToExternalUsers ;;
  }

  dimension: user_preferences_show_manager_to_guest_users {
    type: yesno
    sql: ${TABLE}.UserPreferencesShowManagerToGuestUsers ;;
  }

  dimension: user_preferences_show_mobile_phone_to_external_users {
    type: yesno
    sql: ${TABLE}.UserPreferencesShowMobilePhoneToExternalUsers ;;
  }

  dimension: user_preferences_show_mobile_phone_to_guest_users {
    type: yesno
    sql: ${TABLE}.UserPreferencesShowMobilePhoneToGuestUsers ;;
  }

  dimension: user_preferences_show_postal_code_to_external_users {
    type: yesno
    sql: ${TABLE}.UserPreferencesShowPostalCodeToExternalUsers ;;
  }

  dimension: user_preferences_show_postal_code_to_guest_users {
    type: yesno
    sql: ${TABLE}.UserPreferencesShowPostalCodeToGuestUsers ;;
  }

  dimension: user_preferences_show_profile_pic_to_guest_users {
    type: yesno
    sql: ${TABLE}.UserPreferencesShowProfilePicToGuestUsers ;;
  }

  dimension: user_preferences_show_state_to_external_users {
    type: yesno
    sql: ${TABLE}.UserPreferencesShowStateToExternalUsers ;;
  }

  dimension: user_preferences_show_state_to_guest_users {
    type: yesno
    sql: ${TABLE}.UserPreferencesShowStateToGuestUsers ;;
  }

  dimension: user_preferences_show_street_address_to_external_users {
    type: yesno
    sql: ${TABLE}.UserPreferencesShowStreetAddressToExternalUsers ;;
  }

  dimension: user_preferences_show_street_address_to_guest_users {
    type: yesno
    sql: ${TABLE}.UserPreferencesShowStreetAddressToGuestUsers ;;
  }

  dimension: user_preferences_show_title_to_external_users {
    type: yesno
    sql: ${TABLE}.UserPreferencesShowTitleToExternalUsers ;;
  }

  dimension: user_preferences_show_title_to_guest_users {
    type: yesno
    sql: ${TABLE}.UserPreferencesShowTitleToGuestUsers ;;
  }

  dimension: user_preferences_show_work_phone_to_external_users {
    type: yesno
    sql: ${TABLE}.UserPreferencesShowWorkPhoneToExternalUsers ;;
  }

  dimension: user_preferences_show_work_phone_to_guest_users {
    type: yesno
    sql: ${TABLE}.UserPreferencesShowWorkPhoneToGuestUsers ;;
  }

  dimension: user_preferences_sort_feed_by_comment {
    type: yesno
    sql: ${TABLE}.UserPreferencesSortFeedByComment ;;
  }

  dimension: user_preferences_task_reminders_checkbox_default {
    type: yesno
    sql: ${TABLE}.UserPreferencesTaskRemindersCheckboxDefault ;;
  }

  dimension: user_role_id {
    type: string
    sql: ${TABLE}.UserRoleId ;;
  }

  dimension: user_type {
    type: string
    sql: ${TABLE}.UserType ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.Username ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      pi__pardot_user_id__c,
      community_nickname,
      first_name,
      name,
      company_name,
      last_name,
      sender_name,
      middle_name,
      username,
      profile.name,
      profile.id,
      account.first_name,
      account.person_assistant_name,
      account.name,
      account.last_name,
      account.id,
      account.middle_name
    ]
  }
}
