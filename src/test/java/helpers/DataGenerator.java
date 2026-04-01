package helpers;

import java.util.UUID;

public class DataGenerator {
    public static String randomEmail() {
        return "user_" + UUID.randomUUID().toString() + "@test.com";
    }
}
