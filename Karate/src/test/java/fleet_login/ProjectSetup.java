package projectsetup;

import com.intuit.karate.junit5.Karate;

public class ProjectSetup {
    @Karate.Test
    public Karate testProjectSetup() {
        return Karate.run("ProjectSetup").relativeTo(getClass());
    }
}
