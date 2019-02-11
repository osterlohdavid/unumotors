view: account {
  sql_table_name: Salesforce.Account ;;

  dimension: id {
    primary_key: yes
    hidden: yes
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

  dimension: account_number {
    type: string
    sql: ${TABLE}.AccountNumber ;;
  }

  dimension: account_number__c {
    type: string
    sql: ${TABLE}.Account_Number__c ;;
  }

  dimension: account_source {
    type: string
    sql: ${TABLE}.AccountSource ;;
  }

  dimension: address_update_trigger__c {
    type: yesno
    sql: ${TABLE}.AddressUpdateTrigger__c ;;
  }

  dimension: age_group__c {
    type: string
    sql: ${TABLE}.Age_group__c ;;
  }

  dimension: amount_of_1k_w_scooters__c {
    type: number
    sql: ${TABLE}.Amount_of_1kW_Scooters__c ;;
  }

  dimension: amount_of_2k_w_scooters__c {
    type: number
    sql: ${TABLE}.Amount_of_2kW_Scooters__c ;;
  }

  dimension: amount_of_3k_w_scooters__c {
    type: number
    sql: ${TABLE}.Amount_of_3kW_Scooters__c ;;
  }

  dimension: amount_of_compensation_left_to_give__c {
    type: number
    sql: ${TABLE}.Amount_of_compensation_left_to_give__c ;;
  }

  dimension: amount_of_opps_with_test_ride_completed_auto__c {
    type: number
    sql: ${TABLE}.AmountOfOppsWithTestRideCompletedAuto__c ;;
  }

  dimension: amount_of_opps_with_test_ride_no_show_auto__c {
    type: number
    sql: ${TABLE}.AmountOfOppsWithTestRideNoShowAuto__c ;;
  }

  dimension: amount_of_won_opportunities_auto__c {
    type: number
    sql: ${TABLE}.AmountOfWonOpportunitiesAuto__c ;;
  }

  dimension: annual_revenue {
    type: number
    sql: ${TABLE}.AnnualRevenue ;;
  }

  dimension: appropriate_motor_size__c {
    type: string
    sql: ${TABLE}.Appropriate_motor_size__c ;;
  }

  dimension: b2_b_type__c {
    type: string
    sql: ${TABLE}.B2B_Type__c ;;
  }

  dimension: battery_redeem__c {
    type: yesno
    sql: ${TABLE}.Battery_REDEEM__c ;;
  }

  dimension: battery_redeem_used__c {
    type: yesno
    sql: ${TABLE}.Battery_REDEEM_Used__c ;;
  }

  dimension: bic__pc {
    type: string
    sql: ${TABLE}.BIC__pc ;;
  }

  dimension: billing_address {
    type: string
    sql: ${TABLE}.BillingAddress ;;
  }

  dimension: billing_city {
    type: string
    sql: ${TABLE}.BillingCity ;;
  }

  dimension: billing_company_name__c {
    type: string
    sql: ${TABLE}.BillingCompanyName__c ;;
  }

  dimension: billing_country {
    type: string
    sql: ${TABLE}.BillingCountry ;;
  }

  dimension: billing_country_code {
    type: string
    sql: ${TABLE}.BillingCountryCode ;;
  }

  dimension: billing_geocode_accuracy {
    type: string
    sql: ${TABLE}.BillingGeocodeAccuracy ;;
  }

  dimension: billing_latitude {
    type: number
    sql: ${TABLE}.BillingLatitude ;;
  }

  dimension: billing_longitude {
    type: number
    sql: ${TABLE}.BillingLongitude ;;
  }

  dimension: billing_postal_code {
    type: string
    sql: ${TABLE}.BillingPostalCode ;;
  }

  dimension: billing_state {
    type: string
    sql: ${TABLE}.BillingState ;;
  }

  dimension: billing_state_code {
    type: string
    sql: ${TABLE}.BillingStateCode ;;
  }

  dimension: billing_street {
    type: string
    sql: ${TABLE}.BillingStreet ;;
  }

  dimension: calendly_time_with_time_zone_auto__c {
    type: string
    sql: ${TABLE}.CalendlyTimeWithTimeZoneAuto__c ;;
  }

  dimension: calendly_time_without_time_zone_auto__c {
    type: string
    sql: ${TABLE}.CalendlyTimeWithoutTimeZoneAuto__c ;;
  }

  dimension: can_do_pick_ups__c {
    type: yesno
    sql: ${TABLE}.Can_do_pick_ups__c ;;
  }

  dimension: charger_earned__c {
    type: yesno
    sql: ${TABLE}.Charger_Earned__c ;;
  }

  dimension: charger_redeem__c {
    type: yesno
    sql: ${TABLE}.Charger_REDEEM__c ;;
  }

  dimension: charger_redeem_used__c {
    type: yesno
    sql: ${TABLE}.Charger_REDEEM_Used__c ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: city_1 {
    type: string
    sql: ${TABLE}.city_1 ;;
  }

  dimension: city_2 {
    type: string
    sql: ${TABLE}.city_2 ;;
  }

  dimension: city__c {
    type: string
    sql: ${TABLE}.City__c ;;
  }

  dimension: contact_idauto__c {
    type: string
    sql: ${TABLE}.ContactIDAuto__c ;;
  }

  dimension: contact_person__c {
    type: string
    sql: ${TABLE}.Contact_person__c ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: country_1 {
    type: string
    sql: ${TABLE}.country_1 ;;
  }

  dimension: country_2 {
    type: string
    sql: ${TABLE}.country_2 ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.countryCode ;;
  }

  dimension: country_code_1 {
    type: string
    sql: ${TABLE}.countryCode_1 ;;
  }

  dimension: country_code_2 {
    type: string
    sql: ${TABLE}.countryCode_2 ;;
  }

  dimension: created_by_flow__c {
    type: yesno
    sql: ${TABLE}.Created_By_Flow__c ;;
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

  dimension: currently_in_amarketing_cloud_journey_trig__pc {
    type: yesno
    sql: ${TABLE}.CurrentlyInAMarketingCloudJourneyTrig__pc ;;
  }

  dimension: customer_assigned__c {
    type: number
    sql: ${TABLE}.Customer_assigned__c ;;
  }

  dimension: customer_status__c {
    type: string
    sql: ${TABLE}.Customer_Status__c ;;
  }

  dimension_group: customers_first_order_date_trig__c {
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
    sql: CAST(${TABLE}.CustomersFirstOrderDateTrig__c AS TIMESTAMP) ;;
  }

  dimension_group: date_of_birth__pc {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date_of_birth__pc ;;
  }

  dimension: delivery_order__c {
    type: string
    sql: ${TABLE}.Delivery_Order__c ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: email_2__c {
    type: string
    sql: ${TABLE}.Email_2__c ;;
  }

  dimension: email__c {
    type: string
    sql: ${TABLE}.Email__c ;;
  }

  dimension: eu_vat_id__c {
    type: string
    sql: ${TABLE}.EU_VAT_ID__c ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}.Fax ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: garage_assigned__c {
    type: string
    sql: ${TABLE}.garage_assigned__c ;;
  }

  dimension: garage_id__c {
    type: string
    sql: ${TABLE}.Garage_ID__c ;;
  }

  dimension: garage_knows_about_unu__c {
    type: yesno
    sql: ${TABLE}.Garage_knows_about_unu__c ;;
  }

  dimension: garage_phone__c {
    type: string
    sql: ${TABLE}.GaragePhone__c ;;
  }

  dimension: garage_shipping_address__c {
    type: string
    sql: ${TABLE}.GarageShippingAddress__c ;;
  }

  dimension: gender__c {
    type: string
    sql: ${TABLE}.Gender__c ;;
  }

  dimension: generated_referral_code__c {
    type: string
    sql: ${TABLE}.Generated_Referral_Code__c ;;
  }

  dimension: geocode_accuracy {
    type: string
    sql: ${TABLE}.geocodeAccuracy ;;
  }

  dimension: geocode_accuracy_1 {
    type: string
    sql: ${TABLE}.geocodeAccuracy_1 ;;
  }

  dimension: geocode_accuracy_2 {
    type: string
    sql: ${TABLE}.geocodeAccuracy_2 ;;
  }

  dimension: happiness_level__c {
    type: number
    sql: ${TABLE}.happiness_level__c ;;
  }

  dimension: helmet_size__pc {
    type: string
    sql: ${TABLE}.Helmet_size__pc ;;
  }

  dimension_group: holiday_return_date__pc {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Holiday_return_date__pc ;;
  }

  dimension_group: holiday_start_date__pc {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Holiday_start_date__pc ;;
  }

  dimension: hourly_rate__c {
    type: number
    sql: ${TABLE}.Hourly_Rate__c ;;
  }

  dimension: how_does_the_user_know_unu__c {
    type: string
    sql: ${TABLE}.How_does_the_user_know_unu__c ;;
  }

  dimension: iban__pc {
    type: string
    sql: ${TABLE}.IBAN__pc ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}.Industry ;;
  }

  dimension: inspection_given__c {
    type: yesno
    sql: ${TABLE}.Inspection_given__c ;;
  }

  dimension: inspection_redeem__c {
    type: yesno
    sql: ${TABLE}.Inspection_REDEEM__c ;;
  }

  dimension: inspection_redeem_used__c {
    type: yesno
    sql: ${TABLE}.Inspection_REDEEM_Used__c ;;
  }

  dimension: interested_color__c {
    type: string
    sql: ${TABLE}.Interested_Color__c ;;
  }

  dimension: is_customer_portal {
    type: yesno
    sql: ${TABLE}.IsCustomerPortal ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.IsDeleted ;;
  }

  dimension: is_duplicate__c {
    type: yesno
    sql: ${TABLE}.isDuplicate__c ;;
  }

  dimension: is_partner {
    type: yesno
    sql: ${TABLE}.IsPartner ;;
  }

  dimension: is_person_account {
    type: yesno
    sql: ${TABLE}.IsPersonAccount ;;
  }

  dimension: jacket_size__pc {
    type: string
    sql: ${TABLE}.Jacket_size__pc ;;
  }

  dimension: jigsaw {
    type: string
    sql: ${TABLE}.Jigsaw ;;
  }

  dimension: jigsaw_company_id {
    type: string
    sql: ${TABLE}.JigsawCompanyId ;;
  }

  dimension_group: last_activity {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.LastActivityDate ;;
  }

  dimension: last_coupon_used_customer_email__c {
    type: string
    sql: ${TABLE}.Last_coupon_used_customer_email__c ;;
  }

  dimension: last_coupon_used_customer_name__c {
    type: string
    sql: ${TABLE}.Last_coupon_used_customer_name__c ;;
  }

  dimension: last_journey_email_received_trig__pc {
    type: string
    sql: ${TABLE}.LastJourneyEmailReceivedTrig__pc ;;
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

  dimension: last_opened_email_before_converting_auto__c {
    type: string
    sql: ${TABLE}.LastOpenedEmailBeforeConvertingAuto__c ;;
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
    sql: ${TABLE}.latitude ;;
  }

  dimension: latitude_1 {
    type: number
    sql: ${TABLE}.latitude_1 ;;
  }

  dimension: latitude_2 {
    type: number
    sql: ${TABLE}.latitude_2 ;;
  }

  dimension: latitude_3 {
    type: string
    sql: ${TABLE}.latitude_3 ;;
  }

  dimension: location__c {
    type: string
    sql: ${TABLE}.Location__c ;;
  }

  dimension: location__latitude__s {
    type: number
    sql: ${TABLE}.Location__Latitude__s ;;
  }

  dimension: location__longitude__s {
    type: number
    sql: ${TABLE}.Location__Longitude__s ;;
  }

  dimension: log_book__c {
    type: string
    sql: ${TABLE}.Log_book__c ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: longitude_1 {
    type: number
    sql: ${TABLE}.longitude_1 ;;
  }

  dimension: longitude_2 {
    type: number
    sql: ${TABLE}.longitude_2 ;;
  }

  dimension: longitude_3 {
    type: string
    sql: ${TABLE}.longitude_3 ;;
  }

  dimension: mail_chimp_import__c {
    type: yesno
    sql: ${TABLE}.MailChimp_Import__c ;;
  }

  dimension: mail_chimp_import__pc {
    type: yesno
    sql: ${TABLE}.MailChimp_Import__pc ;;
  }

  dimension: master_record_id {
    type: string
    sql: ${TABLE}.MasterRecordId ;;
  }

  dimension: maximum_compensation_to_give_in_lifetime__c {
    type: number
    sql: ${TABLE}.Maximum_compensation_to_give_in_lifetime__c ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.MiddleName ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: name_of_current_last_journey_trig__pc {
    type: string
    sql: ${TABLE}.NameOfCurrentLastJourneyTrig__pc ;;
  }

  dimension: never_heard_before_question__c {
    type: string
    sql: ${TABLE}.Never_heard_before_question__c ;;
  }

  dimension_group: next_open_calendly_appointment_trig__c {
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
    sql: CAST(${TABLE}.NextOpenCalendlyAppointmentTrig__c AS TIMESTAMP) ;;
  }

  dimension: number_of_cases__c {
    type: number
    sql: ${TABLE}.Number_of_cases__c ;;
  }

  dimension: number_of_employees {
    type: number
    sql: ${TABLE}.NumberOfEmployees ;;
  }

  dimension: number_of_hiccups__c {
    type: number
    sql: ${TABLE}.Number_of_Hiccups__c ;;
  }

  dimension: order__c {
    type: string
    sql: ${TABLE}.Order__c ;;
  }

  dimension: ordered__c {
    type: yesno
    sql: ${TABLE}.Ordered__c ;;
  }

  dimension: other_concerns__c {
    type: string
    sql: ${TABLE}.Other_concerns__c ;;
  }

  dimension: other_use_case__c {
    type: string
    sql: ${TABLE}.Other_use_case__c ;;
  }

  dimension: owner_email_address_auto__pc {
    type: string
    sql: ${TABLE}.OwnerEmailAddressAuto__pc ;;
  }

  dimension: owner_first_name_auto__pc {
    type: string
    sql: ${TABLE}.OwnerFirstNameAuto__pc ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}.OwnerId ;;
  }

  dimension: owner_last_name_auto__pc {
    type: string
    sql: ${TABLE}.OwnerLastNameAuto__pc ;;
  }

  dimension: owner_mobile_number_auto__pc {
    type: string
    sql: ${TABLE}.OwnerMobileNumberAuto__pc ;;
  }

  dimension: ownership {
    type: string
    sql: ${TABLE}.Ownership ;;
  }

  dimension: parent_id {
    type: string
    sql: ${TABLE}.ParentId ;;
  }

  dimension: person_assistant_name {
    type: string
    sql: ${TABLE}.PersonAssistantName ;;
  }

  dimension: person_assistant_phone {
    type: string
    sql: ${TABLE}.PersonAssistantPhone ;;
  }

  dimension_group: person_birthdate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PersonBirthdate ;;
  }

  dimension: person_contact_id {
    type: string
    sql: ${TABLE}.PersonContactId ;;
  }

  dimension: person_department {
    type: string
    sql: ${TABLE}.PersonDepartment ;;
  }

  dimension: person_do_not_call {
    type: yesno
    sql: ${TABLE}.PersonDoNotCall ;;
  }

  dimension: person_email {
    type: string
    sql: ${TABLE}.PersonEmail ;;
  }

  dimension_group: person_email_bounced {
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
    sql: CAST(${TABLE}.PersonEmailBouncedDate AS TIMESTAMP) ;;
  }

  dimension: person_email_bounced_reason {
    type: string
    sql: ${TABLE}.PersonEmailBouncedReason ;;
  }

  dimension: person_has_opted_out_of_email {
    type: yesno
    sql: ${TABLE}.PersonHasOptedOutOfEmail ;;
  }

  dimension: person_has_opted_out_of_fax {
    type: yesno
    sql: ${TABLE}.PersonHasOptedOutOfFax ;;
  }

  dimension: person_home_phone {
    type: string
    sql: ${TABLE}.PersonHomePhone ;;
  }

  dimension_group: person_last_curequest {
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
    sql: CAST(${TABLE}.PersonLastCURequestDate AS TIMESTAMP) ;;
  }

  dimension_group: person_last_cuupdate {
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
    sql: CAST(${TABLE}.PersonLastCUUpdateDate AS TIMESTAMP) ;;
  }

  dimension: person_lead_source {
    type: string
    sql: ${TABLE}.PersonLeadSource ;;
  }

  dimension: person_mailing_address {
    type: string
    sql: ${TABLE}.PersonMailingAddress ;;
  }

  dimension: person_mailing_city {
    type: string
    sql: ${TABLE}.PersonMailingCity ;;
  }

  dimension: person_mailing_country {
    type: string
    sql: ${TABLE}.PersonMailingCountry ;;
  }

  dimension: person_mailing_country_code {
    type: string
    sql: ${TABLE}.PersonMailingCountryCode ;;
  }

  dimension: person_mailing_geocode_accuracy {
    type: string
    sql: ${TABLE}.PersonMailingGeocodeAccuracy ;;
  }

  dimension: person_mailing_latitude {
    type: number
    sql: ${TABLE}.PersonMailingLatitude ;;
  }

  dimension: person_mailing_longitude {
    type: number
    sql: ${TABLE}.PersonMailingLongitude ;;
  }

  dimension: person_mailing_postal_code {
    type: string
    sql: ${TABLE}.PersonMailingPostalCode ;;
  }

  dimension: person_mailing_state {
    type: string
    sql: ${TABLE}.PersonMailingState ;;
  }

  dimension: person_mailing_state_code {
    type: string
    sql: ${TABLE}.PersonMailingStateCode ;;
  }

  dimension: person_mailing_street {
    type: string
    sql: ${TABLE}.PersonMailingStreet ;;
  }

  dimension: person_mobile_phone {
    type: string
    sql: ${TABLE}.PersonMobilePhone ;;
  }

  dimension: person_other_address {
    type: string
    sql: ${TABLE}.PersonOtherAddress ;;
  }

  dimension: person_other_city {
    type: string
    sql: ${TABLE}.PersonOtherCity ;;
  }

  dimension: person_other_country {
    type: string
    sql: ${TABLE}.PersonOtherCountry ;;
  }

  dimension: person_other_country_code {
    type: string
    sql: ${TABLE}.PersonOtherCountryCode ;;
  }

  dimension: person_other_geocode_accuracy {
    type: string
    sql: ${TABLE}.PersonOtherGeocodeAccuracy ;;
  }

  dimension: person_other_latitude {
    type: number
    sql: ${TABLE}.PersonOtherLatitude ;;
  }

  dimension: person_other_longitude {
    type: number
    sql: ${TABLE}.PersonOtherLongitude ;;
  }

  dimension: person_other_phone {
    type: string
    sql: ${TABLE}.PersonOtherPhone ;;
  }

  dimension: person_other_postal_code {
    type: string
    sql: ${TABLE}.PersonOtherPostalCode ;;
  }

  dimension: person_other_state {
    type: string
    sql: ${TABLE}.PersonOtherState ;;
  }

  dimension: person_other_state_code {
    type: string
    sql: ${TABLE}.PersonOtherStateCode ;;
  }

  dimension: person_other_street {
    type: string
    sql: ${TABLE}.PersonOtherStreet ;;
  }

  dimension: person_title {
    type: string
    sql: ${TABLE}.PersonTitle ;;
  }

  dimension: personal_email__pc {
    type: string
    sql: ${TABLE}.Personal_email__pc ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.Phone ;;
  }

  dimension: phone_prefix_send__c {
    type: yesno
    sql: ${TABLE}.Phone_Prefix_Send__c ;;
  }

  dimension: photo_url {
    type: string
    sql: ${TABLE}.PhotoUrl ;;
  }

  dimension: pi__campaign__pc {
    type: string
    sql: ${TABLE}.pi__campaign__pc ;;
  }

  dimension: pi__comments__pc {
    type: string
    sql: ${TABLE}.pi__comments__pc ;;
  }

  dimension_group: pi__conversion_date__pc {
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
    sql: CAST(${TABLE}.pi__conversion_date__pc AS TIMESTAMP) ;;
  }

  dimension: pi__conversion_object_name__pc {
    type: string
    sql: ${TABLE}.pi__conversion_object_name__pc ;;
  }

  dimension: pi__conversion_object_type__pc {
    type: string
    sql: ${TABLE}.pi__conversion_object_type__pc ;;
  }

  dimension_group: pi__created_date__pc {
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
    sql: CAST(${TABLE}.pi__created_date__pc AS TIMESTAMP) ;;
  }

  dimension_group: pi__first_activity__pc {
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
    sql: CAST(${TABLE}.pi__first_activity__pc AS TIMESTAMP) ;;
  }

  dimension: pi__first_search_term__pc {
    type: string
    sql: ${TABLE}.pi__first_search_term__pc ;;
  }

  dimension: pi__first_search_type__pc {
    type: string
    sql: ${TABLE}.pi__first_search_type__pc ;;
  }

  dimension: pi__first_touch_url__pc {
    type: string
    sql: ${TABLE}.pi__first_touch_url__pc ;;
  }

  dimension: pi__grade__pc {
    type: string
    sql: ${TABLE}.pi__grade__pc ;;
  }

  dimension_group: pi__last_activity__pc {
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
    sql: CAST(${TABLE}.pi__last_activity__pc AS TIMESTAMP) ;;
  }

  dimension: pi__needs_score_synced__pc {
    type: yesno
    sql: ${TABLE}.pi__Needs_Score_Synced__pc ;;
  }

  dimension: pi__notes__pc {
    type: string
    sql: ${TABLE}.pi__notes__pc ;;
  }

  dimension: pi__pardot_hard_bounced__pc {
    type: yesno
    sql: ${TABLE}.pi__pardot_hard_bounced__pc ;;
  }

  dimension_group: pi__pardot_last_scored_at__pc {
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
    sql: CAST(${TABLE}.pi__Pardot_Last_Scored_At__pc AS TIMESTAMP) ;;
  }

  dimension: pi__score__pc {
    type: number
    sql: ${TABLE}.pi__score__pc ;;
  }

  dimension: pi__url__pc {
    type: string
    sql: ${TABLE}.pi__url__pc ;;
  }

  dimension: pi__utm_campaign__pc {
    type: string
    sql: ${TABLE}.pi__utm_campaign__pc ;;
  }

  dimension: pi__utm_content__pc {
    type: string
    sql: ${TABLE}.pi__utm_content__pc ;;
  }

  dimension: pi__utm_medium__pc {
    type: string
    sql: ${TABLE}.pi__utm_medium__pc ;;
  }

  dimension: pi__utm_source__pc {
    type: string
    sql: ${TABLE}.pi__utm_source__pc ;;
  }

  dimension: pi__utm_term__pc {
    type: string
    sql: ${TABLE}.pi__utm_term__pc ;;
  }

  dimension: pioneer_id__pc {
    type: string
    sql: ${TABLE}.Pioneer_ID__pc ;;
  }

  dimension: pioneer_information__pc {
    type: string
    sql: ${TABLE}.Pioneer_Information__pc ;;
  }

  dimension: pioneer_offboarded__pc {
    type: yesno
    sql: ${TABLE}.PioneerOffboarded__pc ;;
  }

  dimension: possibility_to_buy__c {
    type: string
    sql: ${TABLE}.Possibility_to_buy__c ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postalCode ;;
  }

  dimension: postal_code_1 {
    type: string
    sql: ${TABLE}.postalCode_1 ;;
  }

  dimension: postal_code_2 {
    type: string
    sql: ${TABLE}.postalCode_2 ;;
  }

  dimension: primary_use_case__c {
    type: string
    sql: ${TABLE}.Primary_use_case__c ;;
  }

  dimension: rating {
    type: string
    sql: ${TABLE}.Rating ;;
  }

  dimension: record_type_id {
    type: string
    sql: ${TABLE}.RecordTypeId ;;
  }

  dimension: referral_used_date__c {
    type: string
    sql: ${TABLE}.Referral_Used_Date__c ;;
  }

  dimension: referrals__c {
    type: string
    sql: ${TABLE}.Referrals__c ;;
  }

  dimension: referred_used_count__c {
    type: number
    sql: ${TABLE}.Referred_used_count__c ;;
  }

  dimension: salutation {
    type: string
    sql: ${TABLE}.Salutation ;;
  }

  dimension: scooter_problems__pc {
    type: string
    sql: ${TABLE}.Scooter_problems__pc ;;
  }

  dimension: scooter_user__c {
    type: string
    sql: ${TABLE}.Scooter_User__c ;;
  }

  dimension: sf4twitter__contact_source__pc {
    type: string
    sql: ${TABLE}.sf4twitter__Contact_Source__pc ;;
  }

  dimension: sf4twitter__fcbk_image_url__pc {
    type: string
    sql: ${TABLE}.sf4twitter__Fcbk_Image_Url__pc ;;
  }

  dimension: sf4twitter__fcbk_picture__pc {
    type: string
    sql: ${TABLE}.sf4twitter__Fcbk_Picture__pc ;;
  }

  dimension: sf4twitter__fcbk_profile_url__pc {
    type: string
    sql: ${TABLE}.sf4twitter__Fcbk_Profile_Url__pc ;;
  }

  dimension: sf4twitter__fcbk_user_id__pc {
    type: string
    sql: ${TABLE}.sf4twitter__Fcbk_User_Id__pc ;;
  }

  dimension: sf4twitter__fcbk_username__pc {
    type: string
    sql: ${TABLE}.sf4twitter__Fcbk_Username__pc ;;
  }

  dimension: sf4twitter__follow_status__pc {
    type: string
    sql: ${TABLE}.sf4twitter__Follow_Status__pc ;;
  }

  dimension: sf4twitter__followed__pc {
    type: yesno
    sql: ${TABLE}.sf4twitter__followed__pc ;;
  }

  dimension: sf4twitter__influencer__pc {
    type: string
    sql: ${TABLE}.sf4twitter__Influencer__pc ;;
  }

  dimension: sf4twitter__influencer_type__pc {
    type: string
    sql: ${TABLE}.sf4twitter__Influencer_Type__pc ;;
  }

  dimension: sf4twitter__klout_number__pc {
    type: number
    sql: ${TABLE}.sf4twitter__Klout_Number__pc ;;
  }

  dimension: sf4twitter__klout_score__pc {
    type: string
    sql: ${TABLE}.sf4twitter__Klout_Score__pc ;;
  }

  dimension: sf4twitter__languages__pc {
    type: string
    sql: ${TABLE}.sf4twitter__Languages__pc ;;
  }

  dimension: sf4twitter__level__pc {
    type: string
    sql: ${TABLE}.sf4twitter__Level__pc ;;
  }

  dimension: sf4twitter__origin__pc {
    type: string
    sql: ${TABLE}.sf4twitter__Origin__pc ;;
  }

  dimension: sf4twitter__research_this_contact__pc {
    type: string
    sql: ${TABLE}.sf4twitter__Research_this_Contact__pc ;;
  }

  dimension: sf4twitter__twitter_bio__pc {
    type: string
    sql: ${TABLE}.sf4twitter__Twitter_Bio__pc ;;
  }

  dimension_group: sf4twitter__twitter_creation_date__pc {
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
    sql: CAST(${TABLE}.sf4twitter__Twitter_Creation_Date__pc AS TIMESTAMP) ;;
  }

  dimension: sf4twitter__twitter_follower_count__pc {
    type: number
    sql: ${TABLE}.sf4twitter__Twitter_Follower_Count__pc ;;
  }

  dimension: sf4twitter__twitter_following_count__pc {
    type: number
    sql: ${TABLE}.sf4twitter__Twitter_Following_count__pc ;;
  }

  dimension: sf4twitter__twitter_image_url__pc {
    type: string
    sql: ${TABLE}.sf4twitter__Twitter_Image_Url__pc ;;
  }

  dimension_group: sf4twitter__twitter_last_tweet__pc {
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
    sql: CAST(${TABLE}.sf4twitter__Twitter_Last_Tweet__pc AS TIMESTAMP) ;;
  }

  dimension: sf4twitter__twitter_location__pc {
    type: string
    sql: ${TABLE}.sf4twitter__Twitter_Location__pc ;;
  }

  dimension: sf4twitter__twitter_picture__pc {
    type: string
    sql: ${TABLE}.sf4twitter__Twitter_Picture__pc ;;
  }

  dimension: sf4twitter__twitter_status_count__pc {
    type: number
    sql: ${TABLE}.sf4twitter__Twitter_Status_count__pc ;;
  }

  dimension: sf4twitter__twitter_user_id__pc {
    type: string
    sql: ${TABLE}.sf4twitter__Twitter_User_Id__pc ;;
  }

  dimension: sf4twitter__twitter_username__pc {
    type: string
    sql: ${TABLE}.sf4twitter__Twitter_Username__pc ;;
  }

  dimension: sfccltng_ptr__lead_conversion_rate__c {
    type: number
    sql: ${TABLE}.SFCCLtngPtr__Lead_Conversion_Rate__c ;;
  }

  dimension: sfccltng_ptr__lead_to_opportunity_close_rate__c {
    type: number
    sql: ${TABLE}.SFCCLtngPtr__Lead_To_Opportunity_Close_Rate__c ;;
  }

  dimension: sfccltng_ptr__number_closed_lost_opportunities__c {
    type: number
    sql: ${TABLE}.SFCCLtngPtr__Number_Closed_Lost_Opportunities__c ;;
  }

  dimension: sfccltng_ptr__number_closed_opportunities__c {
    type: number
    sql: ${TABLE}.SFCCLtngPtr__Number_Closed_Opportunities__c ;;
  }

  dimension: sfccltng_ptr__number_closed_won_opportunities__c {
    type: number
    sql: ${TABLE}.SFCCLtngPtr__Number_Closed_Won_Opportunities__c ;;
  }

  dimension: sfccltng_ptr__number_leads_converted__c {
    type: number
    sql: ${TABLE}.SFCCLtngPtr__Number_Leads_Converted__c ;;
  }

  dimension: sfccltng_ptr__number_leads_total__c {
    type: number
    sql: ${TABLE}.SFCCLtngPtr__Number_Leads_Total__c ;;
  }

  dimension: sfccltng_ptr__number_open_opportunities__c {
    type: number
    sql: ${TABLE}.SFCCLtngPtr__Number_Open_Opportunities__c ;;
  }

  dimension: sfccltng_ptr__opportunity_win_rate__c {
    type: number
    sql: ${TABLE}.SFCCLtngPtr__Opportunity_Win_Rate__c ;;
  }

  dimension: sfccltng_ptr__partner_geographic_coverage__c {
    type: string
    sql: ${TABLE}.SFCCLtngPtr__Partner_Geographic_Coverage__c ;;
  }

  dimension: sfccltng_ptr__partner_program_level__c {
    type: string
    sql: ${TABLE}.SFCCLtngPtr__Partner_Program_Level__c ;;
  }

  dimension: sfccltng_ptr__partner_type__c {
    type: string
    sql: ${TABLE}.SFCCLtngPtr__Partner_Type__c ;;
  }

  dimension: sfccltng_ptr__value_closed_won_opportunties__c {
    type: number
    sql: ${TABLE}.SFCCLtngPtr__Value_Closed_Won_Opportunties__c ;;
  }

  dimension: sfccltng_ptr__value_open_opportunties__c {
    type: number
    sql: ${TABLE}.SFCCLtngPtr__Value_Open_Opportunties__c ;;
  }

  dimension: sfccltng_ptr__ytd_revenue_generated__c {
    type: number
    sql: ${TABLE}.SFCCLtngPtr__YTD_Revenue_Generated__c ;;
  }

  dimension: shipping_address {
    type: string
    sql: ${TABLE}.ShippingAddress ;;
  }

  dimension: shipping_city {
    type: string
    sql: ${TABLE}.ShippingCity ;;
  }

  dimension: shipping_country {
    type: string
    sql: ${TABLE}.ShippingCountry ;;
  }

  dimension: shipping_country_code {
    type: string
    sql: ${TABLE}.ShippingCountryCode ;;
  }

  dimension: shipping_geocode_accuracy {
    type: string
    sql: ${TABLE}.ShippingGeocodeAccuracy ;;
  }

  dimension: shipping_latitude {
    type: number
    sql: ${TABLE}.ShippingLatitude ;;
  }

  dimension: shipping_longitude {
    type: number
    sql: ${TABLE}.ShippingLongitude ;;
  }

  dimension: shipping_postal_code {
    type: string
    sql: ${TABLE}.ShippingPostalCode ;;
  }

  dimension: shipping_state {
    type: string
    sql: ${TABLE}.ShippingState ;;
  }

  dimension: shipping_state_code {
    type: string
    sql: ${TABLE}.ShippingStateCode ;;
  }

  dimension: shipping_street {
    type: string
    sql: ${TABLE}.ShippingStreet ;;
  }

  dimension: sic {
    type: string
    sql: ${TABLE}.Sic ;;
  }

  dimension: sic_desc {
    type: string
    sql: ${TABLE}.SicDesc ;;
  }

  dimension: site {
    type: string
    sql: ${TABLE}.Site ;;
  }

  dimension: sku__pc {
    type: string
    sql: ${TABLE}.SKU__pc ;;
  }

  dimension: skype_id__pc {
    type: string
    sql: ${TABLE}.Skype_ID__pc ;;
  }

  dimension: special_customer_status__c {
    type: string
    sql: ${TABLE}.Special_Customer_Status__c ;;
  }

  dimension_group: starting_date__pc {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Starting_date__pc ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: state_1 {
    type: string
    sql: ${TABLE}.state_1 ;;
  }

  dimension: state_2 {
    type: string
    sql: ${TABLE}.state_2 ;;
  }

  dimension: state_code {
    type: string
    sql: ${TABLE}.stateCode ;;
  }

  dimension: state_code_1 {
    type: string
    sql: ${TABLE}.stateCode_1 ;;
  }

  dimension: state_code_2 {
    type: string
    sql: ${TABLE}.stateCode_2 ;;
  }

  dimension: status__c {
    type: string
    sql: ${TABLE}.Status__c ;;
  }

  dimension: status_page_link__c {
    type: string
    sql: ${TABLE}.StatusPageLink__c ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}.street ;;
  }

  dimension: street_1 {
    type: string
    sql: ${TABLE}.street_1 ;;
  }

  dimension: street_2 {
    type: string
    sql: ${TABLE}.street_2 ;;
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

  dimension: tax_id__c {
    type: string
    sql: ${TABLE}.Tax_ID__c ;;
  }

  dimension: tax_number__pc {
    type: string
    sql: ${TABLE}.Tax_Number__pc ;;
  }

  dimension: test_ride_duration_in_minutes__c {
    type: number
    sql: ${TABLE}.Test_ride_duration_in_minutes__c ;;
  }

  dimension: testride_capacity_per_week__pc {
    type: number
    sql: ${TABLE}.Testride_capacity_per_week__pc ;;
  }

  dimension: ticker_symbol {
    type: string
    sql: ${TABLE}.TickerSymbol ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: ua_nurture_opportunity__c {
    type: number
    sql: ${TABLE}.UA_Nurture_Opportunity__c ;;
  }

  dimension: used_code__c {
    type: string
    sql: ${TABLE}.Used_Code__c ;;
  }

  dimension: user_s_concerns__c {
    type: string
    sql: ${TABLE}.User_s_concerns__c ;;
  }

  dimension: user_s_occupation__c {
    type: string
    sql: ${TABLE}.User_s_occupation__c ;;
  }

  dimension: user_s_preferred_language__c {
    type: string
    sql: ${TABLE}.User_s_preferred_language__c ;;
  }

  dimension: user_s_reasons_not_to_buy__c {
    type: string
    sql: ${TABLE}.User_s_reasons_not_to_buy__c ;;
  }

  dimension: value_of_compensation_already_given__c {
    type: number
    sql: ${TABLE}.Value_of_compensation_already_given__c ;;
  }

  dimension: vatnumber__c {
    type: string
    sql: ${TABLE}.VATNumber__c ;;
  }

  dimension: very_important_customer__c {
    type: yesno
    sql: ${TABLE}.Very_Important_Customer__c ;;
  }

  dimension: vin_number__c {
    type: string
    sql: ${TABLE}.VIN_Number__c ;;
  }

  dimension: vin_number__pc {
    type: string
    sql: ${TABLE}.VIN_Number__pc ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}.Website ;;
  }

  dimension: when_would_you_like_me_to_call_you_back__c {
    type: string
    sql: ${TABLE}.When_would_you_like_me_to_call_you_back__c ;;
  }

  dimension: your_performance__c {
    type: string
    sql: ${TABLE}.Your_performance__c ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      first_name,
      person_assistant_name,
      name,
      last_name,
      middle_name,
      event.count,
      opportunity.count,
      task.count,
      user.count
    ]
  }
}
