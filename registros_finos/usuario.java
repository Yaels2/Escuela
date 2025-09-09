public class usuario {

    String nombre;
    String correo;
    int edad;

    public usuario(){

    }
    public usuario(String nombre, String correo, int edad){
        this.edad = edad;
        this.correo = correo;
        this.nombre = nombre;
    }
    public void Agregar(){
        System.out.println(nombre + "" + edad + "" + correo);
    }
}
