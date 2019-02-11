view: task {
  sql_table_name: Salesforce.Task ;;

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

  dimension: account_name__c {
    type: string
    sql: ${TABLE}.Account_Name__c ;;
  }

  dimension_group: activity {
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
    sql: ${TABLE}.ActivityDate ;;
  }

  dimension: aircall__answered_by__c {
    type: string
    sql: ${TABLE}.aircall__Answered_by__c ;;
  }

  dimension: aircall__call_recording__c {
    type: string
    sql: ${TABLE}.aircall__Call_Recording__c ;;
  }

  dimension: aircall__connection_status__c {
    type: string
    sql: ${TABLE}.aircall__Connection_status__c ;;
  }

  dimension: aircall__country__c {
    type: string
    sql: ${TABLE}.aircall__Country__c ;;
  }

  dimension: aircall__detailed_type__c {
    type: string
    sql: ${TABLE}.aircall__Detailed_type__c ;;
  }

  dimension: aircall__has_connected__c {
    type: yesno
    sql: ${TABLE}.aircall__Has_connected__c ;;
  }

  dimension: aircall__hour_of_the_day__c {
    type: string
    sql: ${TABLE}.aircall__Hour_of_the_day__c ;;
  }

  dimension: aircall__is_missed_call__c {
    type: yesno
    sql: ${TABLE}.aircall__Is_Missed_call__c ;;
  }

  dimension: aircall__is_voicemail__c {
    type: yesno
    sql: ${TABLE}.aircall__Is_Voicemail__c ;;
  }

  dimension: aircall__missed_call_ratio__c {
    type: string
    sql: ${TABLE}.aircall__Missed_Call_Ratio__c ;;
  }

  dimension: aircall__phone_number__c {
    type: string
    sql: ${TABLE}.aircall__Phone_number__c ;;
  }

  dimension: aircall__timezone__c {
    type: number
    sql: ${TABLE}.aircall__Timezone__c ;;
  }

  dimension: aircall__transferred_to__c {
    type: string
    sql: ${TABLE}.aircall__Transferred_to__c ;;
  }

  dimension: aircall__waiting_time__c {
    type: number
    sql: ${TABLE}.aircall__Waiting_Time__c ;;
  }

  dimension: calendly_event_status_trig__c {
    type: string
    sql: ${TABLE}.CalendlyEventStatusTrig__c ;;
  }

  dimension: call_disposition {
    type: string
    sql: ${TABLE}.CallDisposition ;;
  }

  dimension: call_duration_in_seconds {
    type: number
    sql: ${TABLE}.CallDurationInSeconds ;;
  }

  dimension: call_object {
    type: string
    sql: ${TABLE}.CallObject ;;
  }

  dimension: call_outcome__c {
    type: string
    sql: ${TABLE}.Call_Outcome__c ;;
  }

  dimension: call_type {
    type: string
    sql: ${TABLE}.CallType ;;
  }

  dimension: case_category_ca__c {
    type: string
    sql: ${TABLE}.Case_Category_CA__c ;;
  }

  dimension: case_owner__c {
    type: string
    sql: ${TABLE}.Case_Owner__c ;;
  }

  dimension: case_owner__c2 {
    type: string
    sql: ${TABLE}.CaseOwner__c ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: event_is_in_the_future_auto__c {
    type: yesno
    sql: ${TABLE}.EventIsInTheFutureAuto__c ;;
  }

  dimension: follow_up__c {
    type: string
    sql: ${TABLE}.Follow_up__c ;;
  }

  dimension: invitee_uuid__c {
    type: string
    sql: ${TABLE}.InviteeUuid__c ;;
  }

  dimension: is_archived {
    type: yesno
    sql: ${TABLE}.IsArchived ;;
  }

  dimension: is_closed {
    type: yesno
    sql: ${TABLE}.IsClosed ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.IsDeleted ;;
  }

  dimension: is_high_priority {
    type: yesno
    sql: ${TABLE}.IsHighPriority ;;
  }

  dimension: is_recurrence {
    type: yesno
    sql: ${TABLE}.IsRecurrence ;;
  }

  dimension: is_reminder_set {
    type: yesno
    sql: ${TABLE}.IsReminderSet ;;
  }

  dimension: is_visible_in_self_service {
    type: yesno
    sql: ${TABLE}.IsVisibleInSelfService ;;
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

  dimension: owner_id {
    type: string
    sql: ${TABLE}.OwnerId ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}.Priority ;;
  }

  dimension: priority__c {
    type: string
    sql: ${TABLE}.Priority__c ;;
  }

  dimension: record_type_id {
    type: string
    sql: ${TABLE}.RecordTypeId ;;
  }

  dimension: recurrence_activity_id {
    type: string
    sql: ${TABLE}.RecurrenceActivityId ;;
  }

  dimension: recurrence_day_of_month {
    type: number
    sql: ${TABLE}.RecurrenceDayOfMonth ;;
  }

  dimension: recurrence_day_of_week_mask {
    type: number
    sql: ${TABLE}.RecurrenceDayOfWeekMask ;;
  }

  dimension_group: recurrence_end_date_only {
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
    sql: ${TABLE}.RecurrenceEndDateOnly ;;
  }

  dimension: recurrence_instance {
    type: string
    sql: ${TABLE}.RecurrenceInstance ;;
  }

  dimension: recurrence_interval {
    type: number
    sql: ${TABLE}.RecurrenceInterval ;;
  }

  dimension: recurrence_month_of_year {
    type: string
    sql: ${TABLE}.RecurrenceMonthOfYear ;;
  }

  dimension: recurrence_regenerated_type {
    type: string
    sql: ${TABLE}.RecurrenceRegeneratedType ;;
  }

  dimension_group: recurrence_start_date_only {
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
    sql: ${TABLE}.RecurrenceStartDateOnly ;;
  }

  dimension: recurrence_time_zone_sid_key {
    type: string
    sql: ${TABLE}.RecurrenceTimeZoneSidKey ;;
  }

  dimension: recurrence_type {
    type: string
    sql: ${TABLE}.RecurrenceType ;;
  }

  dimension: related_opportunity__c {
    type: string
    sql: ${TABLE}.Related_Opportunity__c ;;
  }

  dimension: related_to_case__c {
    type: string
    sql: ${TABLE}.Related_to_Case__c ;;
  }

  dimension_group: reminder_date {
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
    sql: CAST(${TABLE}.ReminderDateTime AS TIMESTAMP) ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: status__c {
    type: string
    sql: ${TABLE}.Status__c ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.Subject ;;
  }

  dimension: subject__c {
    type: string
    sql: ${TABLE}.Subject__c ;;
  }

  dimension: successful__c {
    type: yesno
    sql: ${TABLE}.Successful__c ;;
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

  dimension: task_subtype {
    type: string
    sql: ${TABLE}.TaskSubtype ;;
  }

  dimension: top_level_subject__c {
    type: string
    sql: ${TABLE}.Top_Level_Subject__c ;;
  }

  dimension: topics__c {
    type: string
    sql: ${TABLE}.Topics__c ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: what_count {
    type: number
    sql: ${TABLE}.WhatCount ;;
  }

  dimension: what_id {
    type: string
    sql: ${TABLE}.WhatId ;;
  }

  dimension: who_count {
    type: number
    sql: ${TABLE}.WhoCount ;;
  }

  dimension: who_id {
    type: string
    sql: ${TABLE}.WhoId ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      account.first_name,
      account.person_assistant_name,
      account.name,
      account.last_name,
      account.id,
      account.middle_name
    ]
  }
}
