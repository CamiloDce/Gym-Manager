package logic;

import java.util.List;
import persistencia.PersistenceController;

public class Controller {
    PersistenceController persisControl = new PersistenceController ();
    
    public void crearUsuario (Usuario usu) {
        persisControl.crearUsuario(usu);
    }
    
    public List<Usuario> traerUsuarios () {
        return persisControl.traerUsuarios();
    }

    public void deleteUser(int id_delete) {
        persisControl.deleteUser(id_delete);
        
    }

    public Usuario traerUser(int id_edit) {
       return persisControl.traerUser(id_edit);
      
    }

    public void editUsuario(Usuario usu) {
           persisControl.editUsuario(usu);  
    }
    
    public Usuario validarLogin(String email, String password) {

    List<Usuario> usuarios = traerUsuarios();

    for (Usuario user : usuarios) {
        if (user.getEmail().equals(email)
                && user.getPassword().equals(password)
                && user.getActivo()) {

            return user;
        }
    }
    return null;
}
}
