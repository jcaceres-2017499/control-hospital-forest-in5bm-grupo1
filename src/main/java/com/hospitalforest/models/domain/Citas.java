package com.hospitalforest.models.domain;

import java.io.Serializable;
import javax.persistence.Id;
import java.time.LocalTime;
import java.time.LocalDate;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import javax.persistence.NamedQuery;
import javax.persistence.NamedQueries;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

/**
 *
 * @author Jhonatan Jose Acalón Ajanel <jacalon-2021048@kinal.edu.gt>
 * @date 2/09/2022
 * @time 16:35:14
 * @codigo IN5BM
 * @jornada Matutina
 * @grupo 1
 */
@Entity
@Table(name = "citas")
@NamedQueries({
    @NamedQuery(name = "Citas.findAll", query = "from Citas"),
    @NamedQuery(name = "Citas.find", query = "from Citas where id=:id")
})
public class Citas implements Serializable{
    private static final long serialVersionUID=1L;
    @Id
    @Column(name = "id_cita")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idCita;
    @Column(name = "descripcion")    
    private String descripcion;
    @Column(name = "fecha")
    private LocalDate fecha;
    @Column(name = "hora")
    private LocalTime hora;
    @Column(name = "doctor_id")
    private String nombreDoctor;
    @Column(name = "paciente_id")
    private String nombrePaciente;
    @Column(name = "habitacion_id")
    private int habitacionId;

    public Citas(){
    
    }

    public Citas(int idCita) {
        this.idCita = idCita;
    }

    public Citas(String descripcion, LocalDate fecha, LocalTime hora, String nombreDoctor, String nombrePaciente, int habitacionId) {
        this.descripcion = descripcion;
        this.fecha = fecha;
        this.hora = hora;
        this.nombreDoctor = nombreDoctor;
        this.nombrePaciente = nombrePaciente;
        this.habitacionId = habitacionId;
    }

    public Citas(int idCita, String descripcion, LocalDate fecha, LocalTime hora, String nombreDoctor, String nombrePaciente, int habitacionId) {
        this.idCita = idCita;
        this.descripcion = descripcion;
        this.fecha = fecha;
        this.hora = hora;
        this.nombreDoctor = nombreDoctor;
        this.nombrePaciente = nombrePaciente;
        this.habitacionId = habitacionId;
    }

    public int getIdCita() {
        return idCita;
    }

    public void setIdCita(int idCita) {
        this.idCita = idCita;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public LocalDate getFecha() {
        return fecha;
    }

    public void setFecha(LocalDate fecha) {
        this.fecha = fecha;
    }

    public LocalTime getHora() {
        return hora;
    }

    public void setHora(LocalTime hora) {
        this.hora = hora;
    }

    public String getNombreDoctor() {
        return nombreDoctor;
    }

    public void setNombreDoctor(String nombreDoctor) {
        this.nombreDoctor = nombreDoctor;
    }

    public String getNombrePaciente() {
        return nombrePaciente;
    }

    public void setNombrePaciente(String nombrePaciente) {
        this.nombrePaciente = nombrePaciente;
    }

    public int getHabitacionId() {
        return habitacionId;
    }

    public void setHabitacionId(int habitacionId) {
        this.habitacionId = habitacionId;
    }

    @Override
    public String toString() {
        return "Citas{" + "idCita=" + idCita + ", descripcion=" + descripcion 
                + ", fecha=" + fecha + ", hora=" + hora 
                + ", nombreDoctor=" + nombreDoctor 
                + ", nombrePaciente=" + nombrePaciente 
                + ", habitacionId=" + habitacionId + '}';
    }
}