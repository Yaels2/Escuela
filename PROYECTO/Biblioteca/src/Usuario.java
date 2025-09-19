import java.util.ArrayList;

public class Usuario {
    private String nombre;
    private int id;
    ArrayList<Prestamo> prestamos;

    public Usuario(String nombre, int id){
        this.nombre = nombre;
        this.id = id;
        this.prestamos = new ArrayList<>();
    }

}