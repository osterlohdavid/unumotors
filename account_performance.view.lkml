view: account_performance {
  sql_table_name: GoogleAds.AccountPerformance ;;

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

  dimension: _metadata_customer_id {
    type: number
    sql: ${TABLE}._metadata_customer_id ;;
  }

  dimension_group: _metadata {
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
    sql: ${TABLE}._metadata_date ;;
  }

  dimension_group: _metadata_pull {
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
    sql: CAST(${TABLE}._metadata_pull_time AS TIMESTAMP) ;;
  }

  dimension: _metadata_total_rows {
    type: number
    sql: ${TABLE}._metadata_total_rows ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.Clicks ;;
  }

  dimension: conversions {
    type: number
    sql: ${TABLE}.Conversions ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.Cost ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.Date ;;
  }

  ### Measures ###

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_clicks {
    type: sum
    sql: ${clicks} ;;
  }

  measure: total_cost {
    value_format_name: eur_0
    type: sum
    sql: ${cost} ;;
  }

  measure: total_conversions {
    type: sum
    sql: ${conversions} ;;
  }

  measure: cost_per_click {
    label: "CPC"
    value_format_name: eur_0
    type: number
    sql: 1.0 * ${total_cost} / nullif(${total_clicks},0) ;;
  }
}
