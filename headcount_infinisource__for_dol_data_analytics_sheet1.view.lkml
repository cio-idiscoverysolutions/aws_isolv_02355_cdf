view: headcount_infinisource__for_dol_data_analytics_sheet1 {
  sql_table_name: dbo.Headcount_Infinisource__for_DOL_DataAnalytics_Sheet1$ ;;

  dimension: address_1 {
    type: string
    sql: ${TABLE}."Address 1" ;;
  }

  dimension: address_2 {
    type: string
    sql: ${TABLE}."Address 2" ;;
  }

  dimension: adjusted_service_date {
    type: string
    sql: ${TABLE}."Adjusted Service Date" ;;
  }

  dimension: cell_phone {
    type: string
    sql: ${TABLE}."Cell Phone" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: class_title {
    type: string
    sql: ${TABLE}."Class Title" ;;
  }

  dimension: client_code {
    type: string
    sql: ${TABLE}."Client Code" ;;
  }

  dimension: company_code {
    type: string
    sql: ${TABLE}."Company Code" ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}."Company Name" ;;
  }

  dimension: department_title {
    type: string
    sql: ${TABLE}."Department Title" ;;
  }

  dimension: effective_date {
    type: string
    sql: ${TABLE}."Effective Date" ;;
  }

  dimension: employee_first_name {
    type: string
    sql: ${TABLE}."Employee First Name" ;;
  }

  dimension: employee_last_name {
    type: string
    sql: ${TABLE}."Employee Last Name" ;;
  }

  dimension: employee_number {
    type: string
    sql: ${TABLE}."Employee Number" ;;
  }

  dimension: employment_category {
    type: string
    sql: ${TABLE}."Employment Category" ;;
  }

  dimension: employment_status {
    type: string
    sql: ${TABLE}."Employment Status" ;;
  }

  dimension: hire_date {
    type: string
    sql: ${TABLE}."Hire Date" ;;
  }

  dimension: home_phone {
    type: string
    sql: ${TABLE}."Home Phone" ;;
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

  dimension: job_title {
    type: string
    sql: ${TABLE}."Job Title" ;;
  }

  dimension: original_hire_date {
    type: string
    sql: ${TABLE}."Original Hire Date" ;;
  }

  dimension: pay_type {
    type: string
    sql: ${TABLE}."Pay Type" ;;
  }

  dimension: rehire_date {
    type: string
    sql: ${TABLE}."Rehire Date" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: termination_date {
    type: string
    sql: ${TABLE}."Termination Date" ;;
  }

  dimension: work_phone {
    type: string
    sql: ${TABLE}."Work Phone" ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}."Zip Code" ;;
  }

  measure: count {
    type: count
    drill_fields: [company_name, employee_first_name, employee_last_name]
  }
}
