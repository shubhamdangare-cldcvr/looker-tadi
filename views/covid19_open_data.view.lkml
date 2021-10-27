view: covid19_open_data {
  sql_table_name: `looker_test.covid19_open_data`
    ;;

  dimension: active {
    type: number
    sql: ${TABLE}.active ;;
  }

  dimension: admin_2 {
    type: string
    sql: ${TABLE}.admin_2 ;;
  }

  dimension: combined_key {
    type: string
    sql: ${TABLE}.combined_key ;;
  }

  dimension: confirmed {
    type: number
    sql: ${TABLE}.confirmed ;;
  }

  dimension: country_region {
    type: string
    sql: ${TABLE}.country_region ;;
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
    sql: ${TABLE}.date ;;
  }

  measure: deaths {
    type: sum
    sql: ${TABLE}.deaths ;;
  }

  dimension: fips {
    type: string
    sql: ${TABLE}.fips ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: location_geom {
    type: string
    sql: ${TABLE}.location_geom ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: province_state {
    type: string
    sql: ${TABLE}.province_state ;;
  }

  measure: recovered {
    type: sum
    sql: ${TABLE}.recovered ;;
  }

  dimension: sub_region1_name {
    type: string
    sql: ${TABLE}.sub_region1_name ;;
  }

  measure: count {
    type: count
    drill_fields: [sub_region1_name]
  }
}
