package persistencia;

import java.util.List;
import logic.Usuario;
import persistencia.exceptions.NonexistentEntityException;

public class PersistenceController {
    
    UsuarioJpaController usuJpa = new UsuarioJpaController ();
    
    public void crearUsuario (Usuario usu) {
        usuJpa.create(usu);
    }
    
    public List<Usuario> traerUsuarios () {
        return usuJpa.findUsuarioEntities();
    }

    public void deleteUser(int id_delete) {
        try {
            usuJpa.destroy(id_delete);
        } catch (NonexistentEntityException ex) {
            System.getLogger(PersistenceController.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
        }
    }

    public Usuario traerUser(int id_edit) {
        return usuJpa.findUsuario(id_edit);
    }

    public void editUsuario(Usuario usu) {
        try {
            usuJpa.edit(usu);
        } catch (Exception ex) {
            System.getLogger(PersistenceController.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
        }
    }
}
