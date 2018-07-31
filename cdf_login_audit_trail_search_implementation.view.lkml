view: cdf_login_audit_trail_search_implementation {
  sql_table_name: dbo.CDF_LoginAuditTrailSearchImplementation ;;

  dimension: date {
    type: string
    sql: ${TABLE}.Date ;;
  }

  dimension: date_yymm {
    type: string
    sql: ${TABLE}."Date (YY-MM)" ;;
  }

  dimension: email_address {
    type: string
    sql: ${TABLE}."Email Address" ;;
  }

  dimension: formula_date {
    type: string
    sql: ${TABLE}."Formula (Date)" ;;
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

  dimension: ip_address {
    type: string
    sql: ${TABLE}."IP Address" ;;
  }

  dimension: role {
    type: string
    sql: ${TABLE}.Role ;;
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
    drill_fields: []
  }
}
