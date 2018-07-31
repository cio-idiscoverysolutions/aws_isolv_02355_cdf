view: i_ds_distinct_names {
  sql_table_name: dbo.iDS_DISTINCT_NAMES ;;

  dimension: i_ds_full_name {
    type: string
    sql: ${TABLE}.iDS_FullName ;;
  }

  measure: count {
    type: count
    drill_fields: [i_ds_full_name]
  }
}
