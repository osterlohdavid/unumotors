view: order_line__c {
  sql_table_name: Salesforce.OrderLine__c ;;

  dimension: id {
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
    primary_key: yes
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

  dimension: product_type {
    type: string
    sql: CASE WHEN ${skufor_rollup__c} LIKE "%UNU%" THEN "Scooter"
              WHEN ${skufor_rollup__c} LIKE "%BATTERY%" THEN "Battery" END ;;
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

  dimension: total_price_ex_tax__c {
    type: number
    sql: ${TABLE}.TotalPriceExTax__c ;;
  }

  dimension: unique_stock_item_id__c {
    type: string
    sql: ${TABLE}.UniqueStockItemID__c ;;
  }

  dimension: unit_price__c {
    type: number
    sql: ${TABLE}.UnitPrice__c ;;
  }

  dimension: unit_price_ex_tax__c {
    type: number
    sql: ${TABLE}.UnitPriceExTax__c ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
