package fleet_login;

import com.intuit.karate.junit5.Karate;

class Create_User_API {

    @Karate.Test
    Karate testCreate_User_API() {
        return Karate.run("Create_User_API").relativeTo(getClass());
    }
}
