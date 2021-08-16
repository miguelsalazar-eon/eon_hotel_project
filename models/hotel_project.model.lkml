connection: "dwh_hotel_project"

# include all the views
include: "/views/**/*.view"
# include: "/views/*.view"
# include: "/views/*.view.lkml"

datagroup: hotel_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
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
    filters: [fecha_inicio: "2019-10-03", fecha_final: "2019-10-07"]
  }
}
