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
}
