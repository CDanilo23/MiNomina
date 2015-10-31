/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.com.miNomina;

import java.beans.*;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Administrador
 */
public class MisFuncionarios implements Serializable {

    public static final String PROP_SAMPLE_PROPERTY = "sampleProperty";

    private String sampleProperty;

    private Statement st;

    private PropertyChangeSupport propertySupport;

    public MisFuncionarios() {
    }

    private List<Empleado> funcionarios = new ArrayList<Empleado>();

    public List<Empleado> getFuncionarios() {
        return funcionarios;
    }

    public void setFuncionarios(List<Empleado> funcionarios) {
        this.funcionarios = funcionarios;
    }

    public void agregarEmpleado(Empleado empleado) {
        funcionarios.add(empleado);

    }

    public void insertarDatos(MisFuncionarios misFuncionarios) {

        try {
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
            Connection conexion = (Connection) DriverManager.getConnection("jdbc:derby://localhost:1527/MiSitioPlusDB", "root", "123456");
            st = conexion.createStatement();
            for (Empleado empleado : misFuncionarios.getFuncionarios()) {
                StringBuilder builder = new StringBuilder();
                builder.append("insert into empleado values('" + empleado.getCodigo() + "','" + empleado.getNombre() + "')");
                st.executeQuery(builder.toString());
            }

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MisFuncionarios.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(MisFuncionarios.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
