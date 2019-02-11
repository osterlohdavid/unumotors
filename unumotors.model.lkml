connection: "bigquery"

include: "*.view.lkml"                       # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

explore: order {
  label: "Sales"
  join: order_line__c {
    relationship: one_to_one
    type: inner
    sql_on: ${order.id} = ${order_line__c.order__c} ;;
  }
  join: account {
    relationship: one_to_one
    type: inner
    sql_on: ${order.account_id} = ${account.id} ;;
  }

  join: opportunity {
    relationship: many_to_one
    type: left_outer
    sql_on: ${order.opportunity_id} = ${opportunity.id} ;;
  }

}

explore: account_performance {
  label: "Google Ads"
}
