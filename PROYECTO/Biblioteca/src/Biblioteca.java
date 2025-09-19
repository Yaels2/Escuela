import java.util.ArrayList;

public class Biblioteca {
    private String nombre;
    private String direccion;
    ArrayList<Libro> libros;
    ArrayList<Usuario> usuarios;

    public Biblioteca(String nombre, String direccion){
        this.nombre = nombre;
        this.direccion = direccion;
        this.libros = new ArrayList<>();
        this.usuarios = new ArrayList<>();
    }

}
