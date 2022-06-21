package usuarios.get;

import com.intuit.karate.junit5.Karate;

public class UsuarioGetRunner {

    @Karate.Test
    Karate userGet(){
        return Karate.run().relativeTo(getClass());
    }
}
