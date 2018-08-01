view: cdf_8x8_master {
  sql_table_name: dbo.CDF_8x8_Master ;;

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

  dimension: ids_first_name {
    type: string
    sql: ${TABLE}.IDS_FirstName ;;
  }

  dimension: ids_last_name {
    type: string
    sql: ${TABLE}.IDS_LastName ;;
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

  dimension: ids_fullname {
    type: string
    sql: ${TABLE}.ids_fullname ;;
  }


  dimension_group: start_date_and_time {
    type: time
    timeframes: [date, day_of_week, month, hour]
    sql: cast(${TABLE}."Start Date and Time" as datetime) ;;
  }

  dimension: to {
    type: string
    sql: ${TABLE}."To" ;;
  }

  measure: count {
    type: count
    drill_fields: [first_name, last_name, ids_first_name, ids_last_name]
  }
}
