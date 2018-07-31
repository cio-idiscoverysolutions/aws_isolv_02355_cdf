view: cdf_netsuite_master {
  sql_table_name: dbo.CDF_Netsuite_Master ;;

  dimension_group: date {
    type: time
    timeframes: [date, day_of_week, hour_of_day, month]
    sql: ${TABLE}.Date ;;
  }

  dimension: date_yymm {
    type: string
    sql: ${TABLE}."Date YY-MM" ;;
  }

  dimension: email_address {
    type: string
    sql: ${TABLE}."Email Address" ;;
  }

  dimension: formula_date {
    type: string
    sql: ${TABLE}."Formula Date" ;;
  }

  dimension: i_ds_first_name {
    type: string
    sql: ${TABLE}.iDS_FirstName ;;
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

  dimension: ip_address {
    type: string
    sql: ${TABLE}."IP Address" ;;
  }

  dimension: role {
    type: string
    sql: ${TABLE}.Role ;;
  }

  dimension: security_challenge {
    type: string
    sql: ${TABLE}."Security Challenge" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}."User" ;;
  }

  measure: count {
    type: count
    drill_fields: [i_ds_first_name, ids_last_name]
  }
}
