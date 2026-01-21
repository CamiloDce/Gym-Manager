
package persistencia;
import java.util.List;
import logica.Usuario;

public class ControladoraPersistencia {
    
    UsuarioJpaController usuJpa = new UsuarioJpaController ();
    
    public void crearUsuario (Usuario usu) {
    
        usuJpa.create(usu);
        
    }
    
    //Op READ
    public List<Usuario> traerUsuarios () {
        return usuJpa.findUsuarioEntities();
    
    }
    
    
}
