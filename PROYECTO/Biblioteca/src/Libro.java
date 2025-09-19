import java.sql.Date;

    public class Libro {
        private String titulo;
        private String autor;
        private Date año;
        private String genero;
        private boolean disponible;

    public Libro(String titulo, String autor, Date año, String genero, boolean disponible){
        this.titulo = titulo;
        this.autor = autor;
        this.año = año;
        this.genero = genero;
        this.disponible = disponible;
    }

}
