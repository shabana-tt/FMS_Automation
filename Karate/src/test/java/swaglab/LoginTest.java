package swaglab; // match your folder structure!

import com.intuit.karate.junit5.Karate;

class LoginTest {

    @Karate.Test
    Karate testLogin() {
        return Karate.run("Login").relativeTo(getClass());
    }

}
