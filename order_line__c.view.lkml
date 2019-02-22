view: order_line__c {
  sql_table_name: Salesforce.OrderLine__c ;;

  dimension: id {
   primary_key:yes  type: string
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

  dimension: assigned_delivery_order__c {
    type: yesno
    sql: ${TABLE}.Assigned_Delivery_Order__c ;;
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

  dimension: delivery_order_line__c {
    type: string
    sql: ${TABLE}.DeliveryOrderLine__c ;;
  }

  dimension: discount_amount__c {
    type: number
    sql: ${TABLE}.DiscountAmount__c ;;
  }

  measure: total_discount_amount__c {
    type: sum
    sql: ${discount_amount__c} ;;
  }

  dimension_group: helper__c {
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
    sql: CAST(${TABLE}.helper__c AS TIMESTAMP) ;;
  }

  dimension: incoming__c {
    type: yesno
    sql: ${TABLE}.Incoming__c ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.IsDeleted ;;
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

  dimension: log_book__c {
    type: string
    sql: ${TABLE}.Log_book__c ;;
  }

  dimension: logistics_status__c {
    type: string
    sql: ${TABLE}.LogisticsStatus__c ;;
  }

  dimension: matched__c {
    type: yesno
    sql: ${TABLE}.Matched__c ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: order__c {
#     primary_key: yes
    type: string
    sql: ${TABLE}.Order__c ;;
  }

  dimension: order_status__c {
    type: string
    sql: ${TABLE}.Order_Status__c ;;
  }

  dimension: price_book__c {
    type: string
    sql: ${TABLE}.PriceBook__c ;;
  }

  dimension: price_book_name__c {
    type: string
    sql: ${TABLE}.PriceBookName__c ;;
  }

  dimension: product__c {
    type: string
    sql: ${TABLE}.Product__c ;;
  }

  dimension: product_variant__c {
    type: string
    sql: ${TABLE}.ProductVariant__c ;;
  }

  dimension: purchase_order_legacy__c {
    type: string
    sql: ${TABLE}.PurchaseOrderLegacy__c ;;
  }

  dimension: purchase_status__c {
    type: string
    sql: ${TABLE}.Purchase_Status__c ;;
  }

  dimension: quantity__c {
    type: number
    sql: ${TABLE}.Quantity__c ;;
  }

  dimension: retail_price__c {
    type: number
    sql: ${TABLE}.RetailPrice__c ;;
  }

  measure: total_retail_price__c {
    type: sum
    sql: ${retail_price__c} ;;
  }

  dimension: serial_number__c {
    type: string
    sql: ${TABLE}.SerialNumber__c ;;
  }

  dimension: sku__c {
    type: string
    sql: ${TABLE}.Sku__c ;;
  }

  dimension: skufor_rollup__c {
    type: string
    sql: ${TABLE}.SKUForRollup__c ;;
  }

  dimension: seat_colours {
    group_label: "Product Features"
    type: string
    sql: CASE WHEN ${skufor_rollup__c} LIKE "%BLK%" THEN 'BLK'
              WHEN ${skufor_rollup__c} LIKE "%CGN%" THEN 'CGN'
              WHEN ${skufor_rollup__c} LIKE "%SND%" THEN 'SND'
              ELSE NULL END ;;
  }

  dimension: body_colours {
    group_label: "Product Features"
    type: string
    sql: CASE WHEN ${skufor_rollup__c} LIKE "%MBLUE%" THEN 'MBLUE'
              WHEN ${skufor_rollup__c} LIKE "%RED%" THEN 'RED'
              WHEN ${skufor_rollup__c} LIKE "%BLUE%" THEN 'BLUE'
              WHEN ${skufor_rollup__c} LIKE "%MGREEN%" THEN 'MGREEN'
              WHEN ${skufor_rollup__c} LIKE "%MROSE%" THEN 'MROSE'
              WHEN ${skufor_rollup__c} LIKE "%MBLACK%" THEN 'MBLACK'
              WHEN ${skufor_rollup__c} LIKE "%BLACK%" THEN 'BLACK'
              WHEN ${skufor_rollup__c} LIKE "%MKHAK%" THEN 'MKHAK'
              ELSE NULL END ;;
  }

  dimension: scooter_type {
    group_label: "Product Features"
    type: string
    sql: CASE WHEN ${skufor_rollup__c} LIKE "%1000%" THEN '1 kW'
              WHEN ${skufor_rollup__c} LIKE "%2000%" THEN '2 kW'
              WHEN ${skufor_rollup__c} LIKE "%3000%" THEN '3 kW'
              ELSE NULL END;;
  }

  dimension: product_type {
    type: string
    sql: CASE WHEN ${skufor_rollup__c} LIKE "%UNU%" THEN "Scooter"
              WHEN ${skufor_rollup__c} LIKE "%unu%" THEN "Scooter"
              WHEN ${skufor_rollup__c} LIKE "%BATTERY%" THEN "BATTERY"
              WHEN ${skufor_rollup__c} LIKE "%HELM%" THEN "HELMET"
              WHEN ${skufor_rollup__c} LIKE "%LOCK%" THEN "LOCK"
              WHEN ${skufor_rollup__c} LIKE "%SP%" THEN "SPARE PART"
              WHEN ${skufor_rollup__c} LIKE "%INSURANCE%" THEN "INSURANCE"
              END ;;
  }

  dimension: status__c {
    type: string
    sql: ${TABLE}.Status__c ;;
  }

  dimension_group: stock_eta__c {
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
    sql: ${TABLE}.StockETA__c ;;
  }

  dimension: stock_item__c {
    type: string
    sql: ${TABLE}.StockItem__c ;;
  }

  dimension: stock_item_received__c {
    type: yesno
    sql: ${TABLE}.Stock_Item_received__c ;;
  }

  dimension_group: stock_received__c {
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
    sql: ${TABLE}.StockReceived__c ;;
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

  dimension: total_price__c {
    type: number
    hidden: yes
    sql: ${TABLE}.TotalPrice__c ;;
  }

  measure: sum_of_total_price__c {
    type: sum
    sql: ${total_price__c} ;;
  }

  dimension: total_price_ex_tax__c {
    type: number
    sql: ${TABLE}.TotalPriceExTax__c ;;
  }

  measure: sum_of_total_price_ex_tax__c {
    type: sum
    sql: ${total_price_ex_tax__c} ;;
  }

  dimension: unique_stock_item_id__c {
    type: string
    sql: ${TABLE}.UniqueStockItemID__c ;;
  }

  dimension: unit_price__c {
    type: number
    sql: ${TABLE}.UnitPrice__c ;;
  }

  measure: sum_of_unit_price__c {
    type: sum
    sql: ${unit_price__c} ;;
  }

  dimension: unit_price_ex_tax__c {
    type: number
    sql: ${TABLE}.UnitPriceExTax__c ;;
  }

  measure: sum_of_unit_price_ex_tax__c {
    type: sum
    sql: ${total_price_ex_tax__c} ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
