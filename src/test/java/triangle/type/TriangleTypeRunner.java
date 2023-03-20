package triangle.type;

import com.intuit.karate.junit5.Karate;

public class TriangleTypeRunner {
    @Karate.Test
    Karate testUsers() {
        return Karate.run("TriangleType").relativeTo(getClass());
    }    
}
