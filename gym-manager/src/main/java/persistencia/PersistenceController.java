package persistencia;

import java.util.List;
import logic.Usuario;

public class PersistenceController {
    
    UsuarioJpaController usuJpa = new UsuarioJpaController ();
    
    public void crearUsuario (Usuario usu) {
        usuJpa.create(usu);
    }
    
    public List<Usuario> traerUsuarios () {
        return usuJpa.findUsuarioEntities();
    }
}
