view: order_facts {
  derived_table: {
    sql: SELECT
        `order`.Id  AS order_id,

        COUNT (DISTINCT `order`.Id) AS number_of_orders,
        CAST(MAX(task.CreatedDate) AS TIMESTAMP) AS latest_task,
        CAST(MAX(event.CreatedDate) AS TIMESTAMP) AS latest_event,
        CAST(MIN(task.CreatedDate) AS TIMESTAMP) AS oldest_task,
        CAST(MIN(event.CreatedDate) AS TIMESTAMP) AS oldest_event
      FROM Salesforce.`Order`  AS `order`
      LEFT JOIN Salesforce.Opportunity  AS opportunity ON (`order`.OpportunityId) = opportunity.Id
      LEFT JOIN Salesforce.User  AS user ON opportunity.OwnerId = user.Id
      FULL OUTER JOIN Salesforce.Task  AS task ON opportunity.Id = task.WhatId
      FULL OUTER JOIN Salesforce.Event  AS event ON opportunity.Id = event.Related_Opportunity__c

      GROUP BY 1
      ORDER BY 4 DESC
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: order_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.order_id ;;
  }

  measure: number_of_orders {
    type: count_distinct
    sql: ${order_id} ;;
  }

  dimension: opportunity_id {
    type: string
    sql: ${TABLE}.opportunity_id ;;
  }

  dimension_group: latest_task {
    type: time
    sql: ${TABLE}.latest_task ;;
  }

  dimension_group: latest_event {
    type: time
    sql: ${TABLE}.latest_event ;;
  }

  dimension_group: oldest_task {
    type: time
    sql: ${TABLE}.oldest_task ;;
  }

  dimension_group: oldest_event {
    type: time
    sql: ${TABLE}.oldest_event ;;
  }

  set: detail {
    fields: [
      order_id,
      opportunity_id,
      latest_task_time,
      latest_event_time,
      oldest_task_time,
      oldest_event_time
    ]
  }
}
