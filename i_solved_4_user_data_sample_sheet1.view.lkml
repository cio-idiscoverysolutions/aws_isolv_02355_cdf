view: i_solved_4_user_data_sample_sheet1 {
  sql_table_name: dbo.iSolved 4 User Data Sample_Sheet1 ;;

  dimension: begin_time {
    type: string
    sql: ${TABLE}.BeginTime ;;
  }

  dimension: email_address {
    type: string
    sql: ${TABLE}.EMailAddress ;;
  }

  dimension: end_time {
    type: string
    sql: ${TABLE}.EndTime ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
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

  dimension: ipaddress {
    type: string
    sql: ${TABLE}.IPAddress ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.UserName ;;
  }

  measure: count {
    type: count
    drill_fields: [first_name, last_name, user_name]
  }
}
