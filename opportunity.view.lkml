view: opportunity {
  sql_table_name: Salesforce.Opportunity ;;

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

  dimension: account_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.AccountId ;;
  }

  dimension: age_group__c {
    type: string
    sql: ${TABLE}.Age_Group__c ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.Amount ;;
  }

  dimension: appropriate_engine_size__c {
    type: string
    sql: ${TABLE}.Appropriate_engine_size__c ;;
  }

  dimension: approximate_value__c {
    type: number
    sql: ${TABLE}.Approximate_Value__c ;;
  }

  dimension: b2_b_to_contact_in_18__c {
    type: yesno
    sql: ${TABLE}.B2B_to_contact_in_18__c ;;
  }

  dimension: calendly_email__c {
    type: string
    sql: ${TABLE}.Calendly_Email__c ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.CampaignId ;;
  }

  dimension_group: close {
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
    sql: ${TABLE}.CloseDate ;;
  }

  dimension: comment_to_hq__c {
    type: string
    sql: ${TABLE}.Comment_to_HQ__c ;;
  }

  dimension: commission_created__c {
    type: yesno
    sql: ${TABLE}.CommissionCreated__c ;;
  }

  dimension: commission_created_check__c {
    type: yesno
    sql: ${TABLE}.CommissionCreatedCheck__c ;;
  }

  dimension: commission_paid__c {
    type: yesno
    sql: ${TABLE}.Commission_paid__c ;;
  }

  dimension_group: contact_again_date__c {
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
    sql: ${TABLE}.Contact_Again_Date__c ;;
  }

  dimension: contact_created__c {
    type: yesno
    sql: ${TABLE}.Contact_created__c ;;
  }

  dimension: country__c {
    type: string
    sql: ${TABLE}.Country__c ;;
  }

  dimension: create_commission_trigg__c {
    type: yesno
    sql: ${TABLE}.Create_Commission_Trigg__c ;;
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

  dimension: created_time__c {
    type: number
    sql: ${TABLE}.Created_Time__c ;;
  }

  dimension: currency_iso_code {
    type: string
    sql: ${TABLE}.CurrencyIsoCode ;;
  }

  dimension: customer_category__c {
    type: string
    sql: ${TABLE}.Customer_category__c ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: duplicate__c {
    type: yesno
    sql: ${TABLE}.Duplicate__c ;;
  }

  dimension: email__c {
    type: string
    sql: ${TABLE}.Email__c ;;
  }

  dimension: exception_anything_special__c {
    type: string
    sql: ${TABLE}.Exception_anything_special__c ;;
  }

  dimension: exit_campaign__c {
    type: yesno
    sql: ${TABLE}.Exit_Campaign__c ;;
  }

  dimension: first_contact_response_time__c {
    type: number
    sql: ${TABLE}.FirstContactResponseTime__c ;;
  }

  dimension_group: first_follow_up_actual_date__c {
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
    sql: ${TABLE}.First_Follow_Up_Actual_Date__c ;;
  }

  dimension_group: first_follow_up_due_date__c {
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
    sql: ${TABLE}.First_Follow_Up_Due_Date__c ;;
  }

  dimension: first_follow_up_user__c {
    type: string
    sql: ${TABLE}.First_Follow_up_User__c ;;
  }

  dimension: fiscal {
    type: string
    sql: ${TABLE}.Fiscal ;;
  }

  dimension: fiscal_quarter {
    type: number
    sql: ${TABLE}.FiscalQuarter ;;
  }

  dimension: fiscal_year {
    type: number
    sql: ${TABLE}.FiscalYear ;;
  }

  dimension: follow_up_call__c {
    type: yesno
    sql: ${TABLE}.Follow_up_call__c ;;
  }

  dimension: forecast_category {
    type: string
    sql: ${TABLE}.ForecastCategory ;;
  }

  dimension: forecast_category_name {
    type: string
    sql: ${TABLE}.ForecastCategoryName ;;
  }

  dimension: gclid__c {
    type: string
    sql: ${TABLE}.GCLID__c ;;
  }

  dimension: has_open_activity {
    type: yesno
    sql: ${TABLE}.HasOpenActivity ;;
  }

  dimension: has_opportunity_line_item {
    type: yesno
    sql: ${TABLE}.HasOpportunityLineItem ;;
  }

  dimension: has_overdue_task {
    type: yesno
    sql: ${TABLE}.HasOverdueTask ;;
  }

  dimension: ideal_colour__c {
    type: string
    sql: ${TABLE}.Ideal_colour__c ;;
  }

  dimension: industry__c {
    type: string
    sql: ${TABLE}.Industry__c ;;
  }

  dimension: inside_sales_opportunity__c {
    type: yesno
    sql: ${TABLE}.Inside_Sales_Opportunity__c ;;
  }

  dimension: is_closed {
    type: yesno
    sql: ${TABLE}.IsClosed ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.IsDeleted ;;
  }

  dimension: is_duplicate__c {
    type: yesno
    sql: ${TABLE}.isDuplicate__c ;;
  }

  dimension: is_won {
    type: yesno
    sql: ${TABLE}.IsWon ;;
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

  dimension_group: last_stage_change__c {
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
    sql: CAST(${TABLE}.last_stage_change__c AS TIMESTAMP) ;;
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

  dimension: lead_created_by__c {
    type: string
    sql: ${TABLE}.Lead_created_by__c ;;
  }

  dimension_group: lead_created_date__c {
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
    sql: CAST(${TABLE}.LeadCreatedDate__c AS TIMESTAMP) ;;
  }

  dimension_group: lead_first_contact_date__c {
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
    sql: CAST(${TABLE}.LeadFirstContactDate__c AS TIMESTAMP) ;;
  }

  dimension: lead_source {
    type: string
    sql: ${TABLE}.LeadSource ;;
  }

  dimension: log_a_call__c {
    type: string
    sql: ${TABLE}.Log_a_call__c ;;
  }

  dimension: log_book__c {
    type: string
    sql: ${TABLE}.Log_Book__c ;;
  }

  dimension: lost_reason__c {
    type: string
    sql: ${TABLE}.Lost_Reason__c ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: next_step {
    type: string
    sql: ${TABLE}.NextStep ;;
  }

  dimension: number_commissions__c {
    type: number
    sql: ${TABLE}.Number_commissions__c ;;
  }

  dimension: number_of_scooters__c {
    type: number
    sql: ${TABLE}.Number_of_Scooters__c ;;
  }

  dimension: offer_send__c {
    type: yesno
    sql: ${TABLE}.Offer_send__c ;;
  }

  dimension: opportunity_gender__c {
    type: string
    sql: ${TABLE}.Opportunity_Gender__c ;;
  }

  dimension: opportunity_occupation__c {
    type: string
    sql: ${TABLE}.Opportunity_Occupation__c ;;
  }

  dimension: opportunity_reason_not_to_buy__c {
    type: string
    sql: ${TABLE}.Opportunity_Reason_not_to_buy__c ;;
  }

  dimension: opportunity_source__c {
    type: string
    sql: ${TABLE}.Opportunity_Source__c ;;
  }

  dimension: opportunity_used_case__c {
    type: string
    sql: ${TABLE}.Opportunity_Used_Case__c ;;
  }

  dimension: opportunity_website__c {
    type: string
    sql: ${TABLE}.Opportunity_Website__c ;;
  }

  dimension: order__c {
    type: string
    sql: ${TABLE}.Order__c ;;
  }

  dimension: order_paid__c {
    type: yesno
    sql: ${TABLE}.OrderPaid__c ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}.OwnerId ;;
  }

  dimension: owner_name__c {
    type: string
    sql: ${TABLE}.Owner_Name__c ;;
  }

  dimension_group: paid__c {
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
    sql: ${TABLE}.Paid__c ;;
  }

  dimension: payment_method__c {
    type: string
    sql: ${TABLE}.PaymentMethod__c ;;
  }

  dimension: person_contact_idauto__c {
    type: string
    sql: ${TABLE}.PersonContactIDAuto__c ;;
  }

  dimension: phone__c {
    type: string
    sql: ${TABLE}.Phone__c ;;
  }

  dimension: pioneer_id__c {
    type: string
    sql: ${TABLE}.Pioneer_ID__c ;;
  }

  dimension: pioneer_user_type__c {
    type: string
    sql: ${TABLE}.Pioneer_User_Type__c ;;
  }

  dimension: preferred_contact_time__c {
    type: string
    sql: ${TABLE}.PreferredContactTime__c ;;
  }

  dimension: pricebook2_id {
    type: string
    sql: ${TABLE}.Pricebook2Id ;;
  }

  dimension: probability {
    type: number
    sql: ${TABLE}.Probability ;;
  }

  dimension: purchasing_time_frame__c {
    type: string
    sql: ${TABLE}.Purchasing_Time_Frame__c ;;
  }

  dimension: record_type_id {
    type: string
    sql: ${TABLE}.RecordTypeId ;;
  }

  dimension: sales_lead_for_nurture__c {
    type: yesno
    sql: ${TABLE}.Sales_Lead_for_Nurture__c ;;
  }

  dimension: scooter_skus__c {
    type: string
    sql: ${TABLE}.Scooter_Skus__c ;;
  }

  dimension_group: second_follow_up_actual_date__c {
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
    sql: ${TABLE}.Second_Follow_Up_Actual_Date__c ;;
  }

  dimension_group: second_follow_up_due_date__c {
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
    sql: ${TABLE}.Second_Follow_Up_Due_Date__c ;;
  }

  dimension: second_follow_up_user__c {
    type: string
    sql: ${TABLE}.Second_Follow_up_User__c ;;
  }

  dimension: sfccltng_ptr__days_left_until_expire__c {
    type: number
    sql: ${TABLE}.SFCCLtngPtr__Days_Left_Until_Expire__c ;;
  }

  dimension_group: sfccltng_ptr__deal_approved_date__c {
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
    sql: ${TABLE}.SFCCLtngPtr__Deal_Approved_Date__c ;;
  }

  dimension: sfccltng_ptr__deal_source__c {
    type: string
    sql: ${TABLE}.SFCCLtngPtr__Deal_Source__c ;;
  }

  dimension: sfccltng_ptr__distributor__c {
    type: string
    sql: ${TABLE}.SFCCLtngPtr__Distributor__c ;;
  }

  dimension_group: sfccltng_ptr__intial_estimated_close_date__c {
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
    sql: ${TABLE}.SFCCLtngPtr__Intial_Estimated_Close_Date__c ;;
  }

  dimension: sfccltng_ptr__products__c {
    type: string
    sql: ${TABLE}.SFCCLtngPtr__Products__c ;;
  }

  dimension_group: sfccltng_ptr__registration_expiration__c {
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
    sql: ${TABLE}.SFCCLtngPtr__Registration_Expiration__c ;;
  }

  dimension: stage_age__c {
    type: string
    sql: ${TABLE}.Stage_Age__c ;;
  }

  dimension: stage_name {
    type: string
    sql: ${TABLE}.StageName ;;
  }

  dimension: synced_quote_id {
    type: string
    sql: ${TABLE}.SyncedQuoteId ;;
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

  dimension_group: test_ride_appointment_date__c {
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
    sql: ${TABLE}.TestRideAppointmentDate__c ;;
  }

  dimension: test_ride_city__c {
    type: string
    sql: ${TABLE}.TestRideCity__c ;;
  }

  dimension: test_ride_now__c {
    type: yesno
    sql: ${TABLE}.TestRide_now__c ;;
  }

  dimension_group: third_follow_up_actual_date__c {
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
    sql: ${TABLE}.Third_follow_up_actual_date__c ;;
  }

  dimension_group: third_follow_up_due_date__c {
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
    sql: ${TABLE}.Third_follow_up_due_date__c ;;
  }

  dimension: third_follow_up_user__c {
    type: string
    sql: ${TABLE}.Third_Follow_up_User__c ;;
  }

  dimension: tr_survey_filled_out__c {
    type: yesno
    sql: ${TABLE}.TR_Survey_Filled_Out__c ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      stage_name,
      name,
      forecast_category_name,
      account.first_name,
      account.person_assistant_name,
      account.name,
      account.last_name,
      account.id,
      account.middle_name
    ]
  }
}
