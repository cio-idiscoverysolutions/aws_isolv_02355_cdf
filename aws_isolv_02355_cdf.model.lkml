connection: "aws_isolv-02355_cdf"

# include all the views
include: "*.view"

datagroup: aws_isolv_02355_cdf_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: aws_isolv_02355_cdf_default_datagroup

explore: cdf_8x8_master {}

explore: cdf_call_activity {}

explore: cdf_catalog {}

explore: cdf_convert {}

explore: cdf_email {}

explore: cdf_login_audit_trail_search_implementation {}

explore: cdf_mimecast_master {}

explore: cdf_netsuite_master {}

explore: cdf_stats {}

explore: cdf_webex_session_master {}

explore: cdf_webex_summary_master {}

explore: headcount_infinisource__for_dol_data_analytics_sheet1 {}

explore: i_ds_distinct_names {}

explore: i_ds_occurances_report {}

explore: i_solved_4_user_data_sample_sheet1 {}

explore: log {}

explore: login_audit_trail_search_implementationjennie_chancey_xls_chart_of_total_login {}

explore: session_summary_report_web_ex_session_summary_report {}

explore: src_dlvry {}

explore: src_files {}

explore: src_master {}

explore: vw_master_custodians_by_hour {}

explore: cdf_i_solved_master {}
