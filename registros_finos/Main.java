import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
    Scanner sc = new Scanner(System.in); 
    int op = 0; 
      while(op != 4){
        System.out.println("Bienvenido agrega un usuario para hacer absolutamente nada jaja...");
        System.out.println("Opcion 1: Agregar");
        System.out.println("Opcion 2: Buscar");
        System.out.println("Opcion 3: Borrar");
        System.out.println("Opcion 4: Salir");
        op = sc.nextInt();
      
            switch (op) {
                case 1:
                System.out.println("agrega algo..");
                System.out.println("introduza un solo nombre");
                String nombre = sc.nextLine();
                System.out.println("Introduzca un correo");
                String correo = sc.nextLine();
                System.out.println("Introduzca la edad");
                int edad = sc.nextInt();

                
                break;
            
                 case 2:
                System.out.println("busca algo jaajaja");
                
                break;
        
                 case 3:
                System.out.println("borra algo... pero no hay nada");
                break;

                case 4:
                System.out.println("lograste salir jajaja");
                break;
                default:
                break;
        }
        }
        
    }
}
