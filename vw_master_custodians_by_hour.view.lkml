view: vw_master_custodians_by_hour {
  sql_table_name: dbo.vwMasterCustodiansByHour_Mimecast_Sent_Outbound ;;

  dimension: count_raw {
    type: number
    sql: ${TABLE}.Count ;;
  }

  dimension: custodian {
    type: string
    sql: ${TABLE}.Custodian ;;
  }

  dimension: hour {
    type: number
    sql: ${TABLE}.Hour ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.Source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }


  measure: total_events {
    type: sum
    sql: ${TABLE}.Count ;;
  }

}
