view: login_audit_trail_search_implementationjennie_chancey_xls_chart_of_total_login {
  sql_table_name: dbo.LoginAuditTrailSearchImplementation-Jennie Chancey.xls_Chart of Total Login ;;

  dimension: column_labels {
    type: string
    sql: ${TABLE}."Column Labels" ;;
  }

  dimension: count_of_date {
    type: string
    sql: ${TABLE}."Count of Date" ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
