view: cdf_i_solved_master {
  sql_table_name: dbo.CDF_iSolved_Master ;;

  dimension: email_address {
    type: string
    sql: ${TABLE}.Email_Address ;;
  }

  dimension: firstname {
    type: string
    sql: ${TABLE}.Firstname ;;
  }

  dimension: i_ds_first_name {
    type: string
    sql: ${TABLE}.iDS_FirstName ;;
  }

  dimension: i_ds_full_name {
    type: string
    sql: ${TABLE}.iDS_FullName ;;
  }

  dimension: i_ds_last_name {
    type: string
    sql: ${TABLE}.iDS_LastName ;;
  }

  dimension: i_solved_hcm_username {
    type: string
    sql: ${TABLE}.iSolvedHCM_Username ;;
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

  dimension_group: ids_dt_session_end {
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
    sql: ${TABLE}.ids_dt_Session_End_Time ;;
  }

  dimension_group: ids_dt_session_start {
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
    sql: ${TABLE}.ids_dt_Session_Start_Time ;;
  }

  dimension: ids_source_file {
    type: string
    sql: ${TABLE}.IDS_SourceFile ;;
  }

  dimension: ids_source_id {
    type: number
    sql: ${TABLE}.IDS_SourceID ;;
  }

  dimension: job_title {
    type: string
    sql: ${TABLE}.Job_Title ;;
  }

  dimension: lastname {
    type: string
    sql: ${TABLE}.Lastname ;;
  }

  dimension: session_end_time {
    type: string
    sql: ${TABLE}.Session_End_Time ;;
  }

  dimension: session_source_ip {
    type: string
    sql: ${TABLE}.Session_Source_IP ;;
  }

  dimension: session_start_time {
    type: string
    sql: ${TABLE}.Session_Start_Time ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      i_solved_hcm_username,
      lastname,
      firstname,
      i_ds_last_name,
      i_ds_first_name,
      i_ds_full_name
    ]
  }
}
