view: i_ds_occurances_report {
  sql_table_name: dbo.iDS_OCCURANCES_Report ;;

  dimension: 8x8_count {
    type: number
    sql: ${TABLE}.8x8_Count ;;
  }

  dimension: 8x8_earliest_date {
    type: string
    sql: ${TABLE}.8x8_Earliest_Date ;;
  }

  dimension: 8x8_latest_date {
    type: string
    sql: ${TABLE}.8x8_Latest_Date ;;
  }

  dimension: i_ds_full_name {
    type: string
    sql: ${TABLE}.iDS_FullName ;;
  }

  dimension: mimecast_count {
    type: number
    sql: ${TABLE}.Mimecast_Count ;;
  }

  dimension: mimecast_earliest_date {
    type: string
    sql: ${TABLE}.Mimecast_Earliest_Date ;;
  }

  dimension: mimecast_latest_date {
    type: string
    sql: ${TABLE}.Mimecast_Latest_Date ;;
  }

  dimension: netsuite_count {
    type: number
    sql: ${TABLE}.Netsuite_Count ;;
  }

  dimension: netsuite_earliest_date {
    type: string
    sql: ${TABLE}.Netsuite_Earliest_Date ;;
  }

  dimension: netsuite_latest_date {
    type: string
    sql: ${TABLE}.Netsuite_Latest_Date ;;
  }

  dimension: webex_session_count {
    type: number
    sql: ${TABLE}.Webex_Session_Count ;;
  }

  dimension: webex_session_earliest_date {
    type: string
    sql: ${TABLE}.Webex_Session_Earliest_Date ;;
  }

  dimension: webex_session_latest_date {
    type: string
    sql: ${TABLE}.Webex_Session_Latest_Date ;;
  }

  dimension: webex_summary_count {
    type: number
    sql: ${TABLE}.Webex_Summary_Count ;;
  }

  dimension: webex_summary_earliest_date {
    type: string
    sql: ${TABLE}.Webex_Summary_Earliest_Date ;;
  }

  dimension: webex_summary_latest_date {
    type: string
    sql: ${TABLE}.Webex_Summary_Latest_Date ;;
  }

  measure: count {
    type: count
    drill_fields: [i_ds_full_name]
  }
}
