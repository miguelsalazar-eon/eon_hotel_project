# connection: "dwh_hotel_project"
connection: "dwh_hotel_project2"

# include all the views
include: "/views/**/*.view"

# include all the dashboard
include: "*.dashboard.lookml"

datagroup: hotel_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

access_grant: can_see_mail {
  user_attribute: can_see_mail
  allowed_values: ["yes"]
}

persist_with: hotel_project_default_datagroup

explore: maestro_habitacion {}

explore: maestro_pais {}

explore: maestro_tripleta {}

explore: pms_cardex {}

explore: pms_lineasreserva {}

explore: pms_ocupante {}

explore: pms_produccion {}

explore: pms_reserva {}

explore: pickup_analisis {
  always_filter: {
    filters: [fecha_inicio: "2021-01-13", fecha_final: "2021-01-24"]
  }
}
