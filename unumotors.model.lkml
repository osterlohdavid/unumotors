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
    relationship: one_to_many
    type: left_outer
    sql_on: ${order.id} = ${order_line__c.order__c} ;;
  }

  join: order_facts {
    relationship: one_to_many
    type: left_outer
    sql_on: ${order.id} = ${order_facts.order_id} ;;
  }

  join: account {
    relationship: many_to_one
    type: left_outer
    sql_on: ${order.account_id} = ${account.id} ;;
  }

  join: opportunity {
    relationship: one_to_many
    type: left_outer
    sql_on: ${order.opportunity_id} = ${opportunity.id} ;;
  }

  join: user {
    relationship: one_to_many
    type: left_outer
    sql_on:${opportunity.owner_id} = ${user.id} ;;
  }

  join: profile {
    relationship: one_to_many
    type: left_outer
    sql_on:  ${user.profile_id} = ${profile.id}   ;;
  }

  join: task {
    relationship: one_to_many
    type: full_outer
    sql_on: ${opportunity.id} = ${task.what_id} ;;
  }

  join: event {
    relationship: one_to_many
    type: full_outer
    sql_on: ${account.id} = ${event.account_id} ;;
  }

}

explore: account_performance {
  label: "Google Ads"
}
