view: pickup_analisis {
    # sql_table_name: `raw_excellence.pms_produccion`
    suggestions: no
    derived_table: {
      sql: select COALESCE(F1.hotel_id, F2.hotel_id) hotel_id
              ,F1.codreserva codreservaF1
              ,F2.codreserva codreservaF2
              ,COALESCE(F1.AnioMes, F2.AnioMes) AnioMes
              ,COALESCE(F1.canal, F2.canal) canal
              ,COALESCE(F1.tipohabitacionuso_id, F2.tipohabitacionuso_id) tipohabitacionuso_id
              ,COALESCE(F1.fechaventa, F2.fechaventa) fechaventa

        FROM
        (
        select
            reserv.hotel_id,
            reserv.codreserva,
            FORMAT_DATE("%Y-%m", reserv.fechaentrada) AnioMes,
            reserv.fechaentrada,
            reserv.canal,
            reserv.tipohabitacionuso_id,
            reserv.fechaventa
        from  raw_excellence.pms_reserva reserv
        WHERE reserv.estado IN (0,2,3)
        AND DATE(reserv.fechaventa) <=  DATE({% date_start fecha_inicio %})
        and reserv.fechaentrada BETWEEN  DATE_ADD(DATE_ADD(LAST_DAY(DATE ({% date_start fecha_inicio %})), INTERVAL  1 DAY),INTERVAL -1 MONTH)
            AND LAST_DAY(DATE_ADD(DATE ({% date_start fecha_inicio %}), INTERVAL 6 MONTH))
        ) F1
        RIGHT OUTER JOIN
        (
        select
            reserv.hotel_id,
            reserv.codreserva,
            FORMAT_DATE("%Y-%m", reserv.fechaentrada) AnioMes,
            reserv.fechaentrada,
            reserv.canal,
            reserv.tipohabitacionuso_id,
            reserv.fechaventa
        from raw_excellence.pms_reserva reserv
        where  reserv.estado IN (0,2,3)
        AND DATE(reserv.fechaventa) <=  DATE({% date_end fecha_final %})
        and reserv.fechaentrada BETWEEN  DATE_ADD(DATE_ADD(LAST_DAY(DATE ({% date_start fecha_inicio %})), INTERVAL  1 DAY),INTERVAL -1 MONTH)
            AND LAST_DAY(DATE_ADD(DATE ({% date_start fecha_inicio %}), INTERVAL 6 MONTH))
         ) F2
        ON F1.codreserva = F2.codreserva
              ;;
    }

    filter: fecha_inicio{
      type: date
    }

    filter: fecha_final {
      type: date
    }

    dimension: hotel_id {
      label: "Hotel"
      type: string
      sql: ${TABLE}.hotel_id ;;
      drill_fields: [drill_group*]
    }

    dimension: codreservaF1 {
      label: "Codigo Reserva F1"
      type: string
      sql: ${TABLE}.codreservaF1 ;;
    }

    dimension: codreservaF2 {
      label: "Codigo Reserva F2"
      type: string
      sql: ${TABLE}.codreservaF2 ;;
    }

    dimension: aniomesentrada {
      label: "Año Mes Ocupacion"
      type: date
      sql: DATE(CONCAT(${TABLE}.AnioMes,'-01')) ;;
      html: {{ rendered_value | date: "%Y %B" }};;
    }

    dimension: canal {
      label: "Canal"
      type: string
      sql: ${TABLE}.canal ;;
    }

    dimension: tipohabitacionuso_id {
      label: "Tipo Habitacion"
      type: string
      sql: ${TABLE}.tipohabitacionuso_id ;;
    }

    dimension: fechaventa {
      label: "Fecha de Venta"
      type: date
      sql: ${TABLE}.fechaventa ;;
    }

    dimension_group: fechaventa {
      type: time
      timeframes: [date, week, month,month_name]
      sql: ${TABLE}.fechaventa ;;
    }

    measure: count_codreservaF1 {
      label: "Reservas Fecha Inicio"
      type: number
      sql: COUNT(${TABLE}.codreservaF1) ;;
    }

    measure: count_codreservaF2 {
      label: "Reservas Fecha Final"
      type: number
      sql: COUNT(${TABLE}.codreservaF2) ;;
    }

    measure: crecimiento {
      label: "% Crecimiento"
      type: number
      value_format: "0.00\%"
      sql: (1-(${count_codreservaF1}/${count_codreservaF2}))*100 ;;
    }

    set: drill_group {
      fields: [
        canal,
        tipohabitacionuso_id
      ]
    }
    parameter: main_dim_selector {
      type: unquoted
      allowed_value: {
        label: "Hotel"
        value: "hotel_id"
      }
      allowed_value: {
        label: "Canal"
        value: "canal"
      }
      allowed_value: {
        label: "Tipo Habitacion"
        value: "tipohabitacionuso_id"
      }
    }

    dimension: dynamic_dim {
      label_from_parameter: main_dim_selector
      sql:
          {% if main_dim_selector._parameter_value == 'hotel_id' %}
            ${hotel_id}
          {% elsif  main_dim_selector._parameter_value == 'canal' %}
            ${canal}
          {% else %}
            ${tipohabitacionuso_id}
          {% endif %};;
    }
  }
