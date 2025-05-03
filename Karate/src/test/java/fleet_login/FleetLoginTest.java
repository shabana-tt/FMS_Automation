package fleet_login;

import com.intuit.karate.junit5.Karate;

class FleetLoginTest {

    @Karate.Test
    Karate testFleetLogin() {
        return Karate.run("FleetLoginTest").relativeTo(getClass());
    }
}
