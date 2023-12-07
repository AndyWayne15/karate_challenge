package karate;

import com.intuit.karate.junit5.Karate;

public class AdministracionUsuariosRunner {

    @Karate.Test
    Karate CrearUsuarioTest() {
        return Karate.run("classpath:karate/AdministracionUsuarios.feature").tags("@Crear");
    }

    @Karate.Test
    Karate BuscarUsuarioTest() {
        return Karate.run("classpath:karate/AdministracionUsuarios.feature").tags("@Buscar");
    }

    @Karate.Test
    Karate ActualizarUsuarioTest() {
        return Karate.run("classpath:karate/AdministracionUsuarios.feature").tags("@Actualizar");
    }

    @Karate.Test
    Karate BuscarActualizadoUsuarioTest() {
        return Karate.run("classpath:karate/AdministracionUsuarios.feature").tags("@BuscarActualizado");
    }

    @Karate.Test
    Karate EliminarUsuarioTest() {
        return Karate.run("classpath:karate/AdministracionUsuarios.feature").tags("@Eliminar");
    }
}
