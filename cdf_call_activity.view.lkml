view: cdf_call_activity {
  sql_table_name: dbo.CDF_CALL_ACTIVITY ;;

  dimension: direction {
    type: string
    sql: ${TABLE}.Direction ;;
  }

  dimension: duration {
    type: string
    sql: ${TABLE}.Duration ;;
  }

  dimension: end_date_and_time {
    type: string
    sql: ${TABLE}."End Date and Time" ;;
  }

  dimension: ext {
    type: string
    sql: ${TABLE}.Ext ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."First Name" ;;
  }

  dimension: from {
    type: string
    sql: ${TABLE}."From" ;;
  }

  dimension_group: ids_date_loaded {
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
    sql: ${TABLE}.IDS_DateLoaded ;;
  }

  dimension: ids_dlvry_id {
    type: number
    sql: ${TABLE}.IDS_DLVRY_ID ;;
  }

  dimension: ids_source_file {
    type: string
    sql: ${TABLE}.IDS_SourceFile ;;
  }

  dimension: ids_source_id {
    type: number
    sql: ${TABLE}.IDS_SourceID ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."Last Name" ;;
  }

  dimension: start_date_and_time {
    type: string
    sql: ${TABLE}."Start Date and Time" ;;
  }

  dimension: to {
    type: string
    sql: ${TABLE}."To" ;;
  }

  measure: count {
    type: count
    drill_fields: [first_name, last_name]
  }
}
