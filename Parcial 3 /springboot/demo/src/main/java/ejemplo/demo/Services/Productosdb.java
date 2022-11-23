package ejemplo.demo.Services;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import ejemplo.demo.Models.Productos;
import ejemplo.demo.Models.Viajes;

public class Productosdb {
    Connection _cn;

    public Productosdb() {
        _cn = new Conexion().openDb();
    }

    public List<Productos> ObtenerProductos() {
        try {
           Statement stmt = _cn.createStatement();
            String query = "SELECT * FROM productos";

            List<Productos> productos = new ArrayList<>();
            ResultSet result = stmt.executeQuery(query);
            while (result.next()) {
                Productos producto = new Productos(
                    result.getInt("ProductID"),
                    result.getString("Nombre"),
                    result.getInt("Precio"),
                    result.getString("Foto")
        );
                productos.add(producto);
             }
             result.close();
             stmt.close();
             return productos;


        } catch (Exception e) {
            int x= 1;
        }
        return null;
    }

    public int GuardarProductos(Productos producto){
        int resultado=0;

        try {
            Statement stm = _cn.createStatement();
            String query ="Call InsertTheProduct('"
            +producto.getNombre()+"','"+producto.getPrecio()+"','"+producto.getFoto()+"')";

            resultado=stm.executeUpdate(query);
        } catch(Exception e) {
            int x=1;

        }
        return resultado;

    }

    public int EliminarProductos(int productID) {
        int resultado = 0;

        try {
            Statement stmt = _cn.createStatement();
            String query = "Call DeleteProduct("+productID+")";
            return stmt.executeUpdate(query);
        } catch(Exception e) {
            int x=1;

        }
        return resultado;

    }

    public int ActualizarProductos(Productos producto){
        int resultado=0;

        try {
            Statement stm = _cn.createStatement();
            String query ="Call UpdateProduct(" +producto.getProductId()+",'" +producto.getNombre()+"','"+producto.getPrecio()+"','"+producto.getFoto()+"')";

            resultado=stm.executeUpdate(query);

        } catch(Exception e) {
            int x=1;

        }
        return resultado;

    }


    public List<Viajes> ObtenerViajes() {
        try {
           Statement stmt = _cn.createStatement();
            String query = "SELECT * FROM viaje";

            List<Viajes> viajes = new ArrayList<>();
            ResultSet result = stmt.executeQuery(query);
            while (result.next()) {
                Viajes viaje = new Viajes(
                    result.getInt("viajeID"),
                    result.getString("titulo"),
                    result.getString("descripcion"),
                    result.getString("urlimage")
        );
                viajes.add(viaje);
             }
             result.close();
             stmt.close();
             return viajes;


        } catch (Exception e) {
            int x= 1;
        }
        return null;
    }
} 
