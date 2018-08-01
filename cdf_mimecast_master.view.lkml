view: cdf_mimecast_master {
  sql_table_name: dbo.CDF_Mimecast_Master ;;

  dimension: attachment {
    type: string
    sql: ${TABLE}.Attachment ;;
  }

  dimension_group: date {
    type: time
    timeframes: [date, day_of_week, hour_of_day, month]
    sql: cast(${TABLE}.Date as datetime) ;;
  }

  dimension: from {
    type: string
    sql: ${TABLE}."From" ;;
  }

  dimension: i_ds_first_name {
    type: string
    sql: ${TABLE}.iDS_FirstName ;;
  }

  dimension: ids_fullname {
    type: string
    sql: ${TABLE}.iDS_fullname ;;
  }


  dimension: i_ds_last_name {
    type: string
    sql: ${TABLE}.iDS_LastName ;;
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

  dimension: routing {
    type: string
    sql: ${TABLE}.Routing ;;
  }

  dimension: size {
    type: string
    sql: ${TABLE}.Size ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.Subject ;;
  }

  dimension: to {
    type: string
    sql: ${TABLE}."To" ;;
  }

  measure: count {
    type: count
    drill_fields: [i_ds_last_name, i_ds_first_name]
  }
}
