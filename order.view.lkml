view: order {
  sql_table_name: Salesforce.`Order` ;;

  dimension: magento_order_id__c {
    type: string
    sql: ${TABLE}.Magento_Order_Id__c ;;
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
    sql: ${TABLE}.AccountId ;;
  }

  dimension: account_name__c {
    type: string
    sql: ${TABLE}.AccountName__c ;;
  }

  dimension: activated_by_id {
    type: string
    sql: ${TABLE}.ActivatedById ;;
  }

  dimension_group: activated {
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
    sql: CAST(${TABLE}.ActivatedDate AS TIMESTAMP) ;;
  }

  dimension_group: actual_delivery_date__c {
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
    sql: ${TABLE}.Actual_Delivery_Date__c ;;
  }

  dimension: advice__c {
    type: string
    sql: ${TABLE}.Advice__c ;;
  }

  dimension: all_matched__c {
    type: yesno
    sql: ${TABLE}.AllMatched__c ;;
  }

  dimension: assignment_e_mail_sent__c {
    type: yesno
    sql: ${TABLE}.Assignment_E_Mail_sent__c ;;
  }

  dimension: bill_to_contact_id {
    type: string
    sql: ${TABLE}.BillToContactId ;;
  }

  dimension: billing_address_name__c {
    type: string
    sql: ${TABLE}.Billing_Address_Name__c ;;
  }

  dimension: billing_address_phone__c {
    type: string
    sql: ${TABLE}.Billing_Address_Phone__c ;;
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

  dimension: commission_amount__c {
    type: number
    sql: ${TABLE}.Commission_amount__c ;;
  }

  dimension: company_authorized_by_id {
    type: string
    sql: ${TABLE}.CompanyAuthorizedById ;;
  }

  dimension_group: company_authorized {
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
    sql: ${TABLE}.CompanyAuthorizedDate ;;
  }

  dimension: confirmation_email_sent__c {
    type: yesno
    sql: ${TABLE}.ConfirmationEmailSent__c ;;
  }

  dimension: contract_id {
    type: string
    sql: ${TABLE}.ContractId ;;
  }

  dimension: country__c {
    type: string
    sql: ${TABLE}.Country__c ;;
  }

  dimension: coupon_code__c {
    type: string
    sql: ${TABLE}.CouponCode__c ;;
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

  dimension: customer_authorized_by_id {
    type: string
    sql: ${TABLE}.CustomerAuthorizedById ;;
  }

  dimension_group: customer_authorized {
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
    sql: ${TABLE}.CustomerAuthorizedDate ;;
  }

  dimension: customer_vatnumber__c {
    type: string
    sql: ${TABLE}.CustomerVATNumber__c ;;
  }

  dimension_group: customization_finished_date__c {
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
    sql: ${TABLE}.Customization_finished_Date__c ;;
  }

  dimension: delay_category__c {
    type: string
    sql: ${TABLE}.Delay_Category__c ;;
  }

  dimension: delay_days__c {
    type: number
    sql: ${TABLE}.Delay_Days__c ;;
  }

  dimension: delivered_legacy__c {
    type: yesno
    sql: ${TABLE}.DeliveredLegacy__c ;;
  }

  dimension: delivery_customisation_finished_del__c {
    type: yesno
    sql: ${TABLE}.Delivery_Customisation_finished_del__c ;;
  }

  dimension_group: delivery_date__c {
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
    sql: ${TABLE}.Delivery_Date__c ;;
  }

  dimension: delivery_delay__c {
    type: string
    sql: ${TABLE}.Delivery_Delay__c ;;
  }

  dimension: delivery_order__c {
    type: string
    sql: ${TABLE}.Delivery_Order__c ;;
  }

  dimension: delivery_order_checked__c {
    type: yesno
    sql: ${TABLE}.Delivery_Order_checked__c ;;
  }

  dimension: delivery_order_created__c {
    type: yesno
    sql: ${TABLE}.DeliveryOrderCreated__c ;;
  }

  dimension: delivery_order_shipped__c {
    type: yesno
    sql: ${TABLE}.DeliveryOrderShipped__c ;;
  }

#   dimension: delivery_order_shipped__c {
#     type: yesno
#     sql: ${TABLE}.Delivery_Order_shipped__c ;;
#   }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: description__c {
    type: string
    sql: ${TABLE}.Description__c ;;
  }

  dimension: discount_amount__c {
    type: number
    sql: ${TABLE}.DiscountAmount__c ;;
  }

  dimension: discount_amount_ex_tax__c {
    type: number
    sql: ${TABLE}.DiscountAmountExTax__c ;;
  }

  dimension_group: doscheduleddeliverydate__c {
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
    sql: ${TABLE}.DOScheduleddeliverydate__c ;;
  }

  dimension_group: effective {
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
    sql: ${TABLE}.EffectiveDate ;;
  }

  dimension: email__c {
    type: string
    sql: ${TABLE}.Email__c ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.EndDate ;;
  }

  dimension_group: expected_delivery_date_max__c {
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
    sql: ${TABLE}.Expected_delivery_date_max__c ;;
  }

  dimension_group: expected_delivery_date_min__c {
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
    sql: ${TABLE}.Expected_delivery_date_min__c ;;
  }

  dimension: finishedcustomisation__c {
    type: yesno
    sql: ${TABLE}.Finishedcustomisation__c ;;
  }

  dimension: friends__c {
    type: string
    sql: ${TABLE}.Friends__c ;;
  }

  dimension: guid__c {
    type: string
    sql: ${TABLE}.GUID__c ;;
  }

  dimension: has_deferred_payment_method__c {
    type: yesno
    sql: ${TABLE}.hasDeferredPaymentMethod__c ;;
  }

  dimension: has_insurance__c {
    type: yesno
    sql: ${TABLE}.Has_Insurance__c ;;
  }

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
  }

  dimension: in_servicing_area__c {
    type: yesno
    sql: ${TABLE}.In_Servicing_Area__c ;;
  }

  dimension: instalment_confirmation_email_sent__c {
    type: yesno
    sql: ${TABLE}.Instalment_confirmation_email_sent__c ;;
  }

  dimension: invoice__c {
    type: string
    sql: ${TABLE}.Invoice__c ;;
  }

  dimension: invoice_created__c {
    type: yesno
    sql: ${TABLE}.InvoiceCreated__c ;;
  }

  dimension: invoice_id__c {
    type: string
    sql: ${TABLE}.Invoice_Id__c ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.IsDeleted ;;
  }

  dimension: is_reduction_order {
    type: yesno
    sql: ${TABLE}.IsReductionOrder ;;
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
    sql: ${TABLE}.Log_Book__c ;;
  }

  dimension: logistics_status__c {
    type: string
    sql: ${TABLE}.LogisticsStatus__c ;;
  }

  dimension_group: lp_sending_date__c {
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
    sql: ${TABLE}.LP_sending_date__c ;;
  }

  dimension: magento_grand_total__c {
    type: number
    sql: ${TABLE}.Magento_Grand_Total__c ;;
  }

  measure: total_sales {
    type: sum
    value_format_name: eur_0
    sql: ${magento_grand_total__c} ;;
    filters: {
      field: status
      value: "Paid"
    }
    drill_fields: []
  }


  dimension: magento_shipping_amount__c {
    type: number
    sql: ${TABLE}.MagentoShippingAmount__c ;;
  }

  dimension: magento_shipping_method__c {
    type: string
    sql: ${TABLE}.MagentoShippingMethod__c ;;
  }

  dimension: magento_subtotal__c {
    type: number
    sql: ${TABLE}.MagentoSubtotal__c ;;
  }

  dimension: magento_tax_amount__c {
    type: number
    sql: ${TABLE}.MagentoTaxAmount__c ;;
  }

  dimension: matched_available_stock_items__c {
    type: number
    sql: ${TABLE}.Matched_Available_Stock_Items__c ;;
  }

  dimension: matched_items__c {
    type: number
    sql: ${TABLE}.MatchedItems__c ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: net_amount__c {
    type: number
    sql: ${TABLE}.NetAmount__c ;;
  }

  dimension: notes_to_logistics__c {
    type: string
    sql: ${TABLE}.Notes_to_Logistics__c ;;
  }

  dimension: number_of_assigned_scooters__c {
    type: number
    sql: ${TABLE}.Number_of_assigned_scooters__c ;;
  }

  dimension: number_of_inssurences__c {
    type: number
    sql: ${TABLE}.Number_of_inssurences__c ;;
  }

  dimension: opportunity_id {
    type: string
    sql: ${TABLE}.OpportunityId ;;
  }

  dimension: order_delivery_notes__c {
    type: string
    sql: ${TABLE}.OrderDeliveryNotes__c ;;
  }

  dimension: order_lines_delivered__c {
    type: number
    sql: ${TABLE}.OrderLinesDelivered__c ;;
  }

  dimension: order_lines_out_for_delivery__c {
    type: number
    sql: ${TABLE}.OrderLinesOutForDelivery__c ;;
  }

  dimension: order_lines_to_deliver__c {
    type: number
    sql: ${TABLE}.OrderLinesToDeliver__c ;;
  }

  dimension: order_number {
    type: string
    sql: ${TABLE}.OrderNumber ;;
  }

  dimension: order_provider__c {
    type: string
    sql: ${TABLE}.OrderProvider__c ;;
  }

  dimension: order_reference_number {
    type: string
    sql: ${TABLE}.OrderReferenceNumber ;;
  }

  dimension: original_order_id {
    type: string
    sql: ${TABLE}.OriginalOrderId ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}.OwnerId ;;
  }

  dimension_group: paid_date__c {
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
    sql: ${TABLE}.PaidDate__c ;;
  }

  dimension: payment_id__c {
    type: string
    sql: ${TABLE}.PaymentId__c ;;
  }

  dimension: payment_method__c {
    type: string
    sql: ${TABLE}.PaymentMethod__c ;;
  }

  dimension: performed_paid_assignment__c {
    type: yesno
    sql: ${TABLE}.Performed_Paid_Assignment__c ;;
  }

  dimension: po_number {
    type: string
    sql: ${TABLE}.PoNumber ;;
  }

  dimension: pricebook2_id {
    type: string
    sql: ${TABLE}.Pricebook2Id ;;
  }

  dimension_group: promised_delivery_date_max__c {
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
    sql: ${TABLE}.Promised_Delivery_Date_max__c ;;
  }

  dimension_group: promised_delivery_date_min__c {
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
    sql: ${TABLE}.Promised_Delivery_Date_min__c ;;
  }

  dimension_group: promised_delivery_date_order_start_date__c {
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
    sql: ${TABLE}.Promised_Delivery_Date_order_start_date__c ;;
  }

  dimension: ratenzahlungs_confirmation_email__c {
    type: yesno
    sql: ${TABLE}.Ratenzahlungs_Confirmation_Email__c ;;
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

  dimension: referred_order_ids__c {
    type: string
    sql: ${TABLE}.Referred_Order_ids__c ;;
  }

  dimension: referred_used_count__c {
    type: number
    sql: ${TABLE}.Referred_used_count__c ;;
  }

  dimension: refund_amount__c {
    type: number
    sql: ${TABLE}.RefundAmount__c ;;
  }

  dimension: refund_by__c {
    type: string
    sql: ${TABLE}.Refund_By__c ;;
  }

  dimension_group: refund_date__c {
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
    sql: ${TABLE}.RefundDate__c ;;
  }

  dimension: registration_package_sent__c {
    type: yesno
    sql: ${TABLE}.Registration_Package_sent__c ;;
  }

  dimension: scooter_matched__c {
    type: yesno
    sql: ${TABLE}.Scooter_matched__c ;;
  }

  dimension: scooter_stock_available__c {
    type: yesno
    sql: ${TABLE}.Scooter_Stock_available__c ;;
  }

  dimension_group: scooterstock_eta__c {
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
    sql: ${TABLE}.ScooterstockETA__c ;;
  }

  dimension: servicing_area__c {
    type: string
    sql: ${TABLE}.Servicing_Area__c ;;
  }

  dimension: servicing_area_accepted__c {
    type: yesno
    sql: ${TABLE}.Servicing_Area_Accepted__c ;;
  }

  dimension: shipping_address_name__c {
    type: string
    sql: ${TABLE}.Shipping_Address_Name__c ;;
  }

  dimension: shipping_address_phone__c {
    type: string
    sql: ${TABLE}.Shipping_Address_Phone__c ;;
  }

  dimension: shipping_city {
    type: string
    sql: ${TABLE}.ShippingCity ;;
  }

  dimension: shipping_company_name__c {
    type: string
    sql: ${TABLE}.ShippingCompanyName__c ;;
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

  dimension: shipping_handling_ex_tax__c {
    type: number
    sql: ${TABLE}.ShippingHandlingExTax__c ;;
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

  dimension: shipping_tax_amount__c {
    type: number
    sql: ${TABLE}.ShippingTaxAmount__c ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: status_code {
    type: string
    sql: ${TABLE}.StatusCode ;;
  }

  dimension: status_page_link__c {
    type: string
    sql: ${TABLE}.StatusPageLink__c ;;
  }

  dimension: stock_incoming__c {
    type: yesno
    sql: ${TABLE}.StockIncoming__c ;;
  }

  dimension: sub_total_ex_tax__c {
    type: number
    sql: ${TABLE}.SubTotalExTax__c ;;
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

  dimension: tax_rate__c {
    type: number
    sql: ${TABLE}.TaxRate__c ;;
  }

  dimension_group: timeframe_execution_assignment__c {
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
    sql: CAST(${TABLE}.Timeframe_Execution_Assignment__c AS TIMESTAMP) ;;
  }

  dimension: total_amount {
    type: number
    sql: ${TABLE}.TotalAmount ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: unique_order_reference__c {
    type: string
    sql: ${TABLE}.UniqueOrderReference__c ;;
  }

  measure: number_of_sales {
    type: count
    drill_fields: [magento_order_id__c, name]
  }
}
