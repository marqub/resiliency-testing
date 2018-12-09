package resiliency;

import com.intuit.karate.junit4.Karate;
import org.junit.runner.RunWith;
import cucumber.api.CucumberOptions;

@RunWith(Karate.class)
@CucumberOptions(tags = {"~@Ignore"}) 
public class TestRunner {
}