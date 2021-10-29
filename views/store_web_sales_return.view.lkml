view: store_web_sales_return {
  sql_table_name: `cc-data-sandbox.looker_test.store_web_sales_return`
    ;;

  dimension: account_credit {
    type: number
    sql: ${TABLE}.account_credit ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.Channel ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: cust_name {
    type: string
    sql: ${TABLE}.cust_name ;;
  }

  dimension: edu_status {
    type: string
    sql: ${TABLE}.edu_status ;;
  }

  dimension: ext_ship_cost {
    type: number
    sql: ${TABLE}.ext_ship_cost ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: item_category {
    type: string
    sql: ${TABLE}.item_category ;;
  }

  dimension: item_class {
    type: string
    sql: ${TABLE}.item_class ;;
  }

  dimension: item_id {
    type: number
    sql: ${TABLE}.item_id ;;
  }

  dimension: item_size {
    type: string
    sql: ${TABLE}.item_size ;;
  }

  dimension: list_price {
    type: number
    sql: ${TABLE}.list_price ;;
  }

  dimension: marital_status {
    type: string
    sql: ${TABLE}.marital_status ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.month ;;
  }

  dimension: month_num {
    type: number
    sql: ${TABLE}.month_num ;;
  }

  dimension: net_loss {
    type: number
    sql: ${TABLE}.net_loss ;;
  }

  dimension: net_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.net_paid ;;
  }

  dimension: net_profit {
    type: number
    sql: ${TABLE}.net_profit ;;
  }

  dimension: qtr {
    type: string
    sql: ${TABLE}.qtr ;;
  }

  dimension: qtr_num {
    type: number
    sql: ${TABLE}.qtr_num ;;
  }

  dimension: rating {
    type: string
    sql: ${TABLE}.rating ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}.reason ;;
  }

  dimension: refunded_cash {
    type: number
    sql: ${TABLE}.refunded_cash ;;
  }

  dimension: return_amt {
    type: number
    sql: ${TABLE}.return_amt ;;
  }

  measure: return_qty {
    type: sum
    sql: ${TABLE}.return_qty ;;
  }

  dimension: reversed_charge {
    type: number
    sql: ${TABLE}.reversed_charge ;;
  }

  measure: sale_qty {
    type: sum
    sql: ${TABLE}.sale_qty ;;
  }

  dimension: sales_price {
    type: number
    sql: ${TABLE}.sales_price ;;
  }

  dimension: ship_carrier {
    type: string
    sql: ${TABLE}.ship_carrier ;;
  }

  dimension: ship_code {
    type: string
    sql: ${TABLE}.ship_code ;;
  }

  dimension: ship_type {
    type: string
    sql: ${TABLE}.ship_type ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: ticket_no {
    type: number
    sql: ${TABLE}.ticket_no ;;
  }

  dimension: wh_city {
    type: string
    sql: ${TABLE}.wh_city ;;
  }

  dimension: wh_state {
    type: string
    sql: ${TABLE}.wh_state ;;
  }

  dimension: wholesale_cost {
    type: number
    sql: ${TABLE}.wholesale_cost ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  measure: cust_count {
    type: count
    drill_fields: [cust_name]
  }
}
