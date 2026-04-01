package runners;

import com.intuit.karate.junit5.Karate;

class TestRunner {
    @Karate.Test
    Karate testAll() {
        // Ejecuta todos los .feature dentro de la carpeta "features"
        return Karate.run("classpath:features").relativeTo(getClass());
    }
}