view: session_summary_report_web_ex_session_summary_report {
  sql_table_name: dbo.SessionSummaryReport_WebEx_SessionSummaryReport ;;

  dimension: attended {
    type: string
    sql: ${TABLE}.Attended ;;
  }

  dimension: custom10 {
    type: string
    sql: ${TABLE}.Custom10 ;;
  }

  dimension: custom5 {
    type: string
    sql: ${TABLE}.Custom5 ;;
  }

  dimension: custom6 {
    type: string
    sql: ${TABLE}.Custom6 ;;
  }

  dimension: custom7 {
    type: string
    sql: ${TABLE}.Custom7 ;;
  }

  dimension: custom8 {
    type: string
    sql: ${TABLE}.Custom8 ;;
  }

  dimension: custom9 {
    type: string
    sql: ${TABLE}.Custom9 ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.Date ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.Department ;;
  }

  dimension: department2 {
    type: string
    sql: ${TABLE}.Department2 ;;
  }

  dimension: duration {
    type: string
    sql: ${TABLE}.Duration ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."First Name" ;;
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

  dimension: integrated_vo_ip {
    type: string
    sql: ${TABLE}."Integrated VoIP" ;;
  }

  dimension: internal_callout {
    type: string
    sql: ${TABLE}."Internal# Callout" ;;
  }

  dimension: intl_callin {
    type: string
    sql: ${TABLE}."Intl# Call-in" ;;
  }

  dimension: intl_callout {
    type: string
    sql: ${TABLE}."Intl# Callout" ;;
  }

  dimension: invited {
    type: string
    sql: ${TABLE}.Invited ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."Last Name" ;;
  }

  dimension: local_callout {
    type: string
    sql: ${TABLE}."Local Callout" ;;
  }

  dimension: local_toll_callin {
    type: string
    sql: ${TABLE}."Local toll call-in" ;;
  }

  dimension: local_tollfree_callin {
    type: string
    sql: ${TABLE}."Local toll-free call-in" ;;
  }

  dimension: meeting_type {
    type: string
    sql: ${TABLE}."Meeting Type" ;;
  }

  dimension: mpv {
    type: string
    sql: ${TABLE}.MPV ;;
  }

  dimension: other {
    type: string
    sql: ${TABLE}.Other ;;
  }

  dimension: people_mins {
    type: string
    sql: ${TABLE}."People Mins" ;;
  }

  dimension: project {
    type: string
    sql: ${TABLE}.Project ;;
  }

  dimension: registered {
    type: string
    sql: ${TABLE}.Registered ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}."Session ID" ;;
  }

  dimension: session_no {
    type: string
    sql: ${TABLE}."Session no#" ;;
  }

  dimension: start_time {
    type: string
    sql: ${TABLE}."Start Time" ;;
  }

  dimension: tele {
    type: string
    sql: ${TABLE}.Tele ;;
  }

  dimension: topic {
    type: string
    sql: ${TABLE}.Topic ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.Username ;;
  }

  measure: count {
    type: count
    drill_fields: [first_name, last_name, username]
  }
}
