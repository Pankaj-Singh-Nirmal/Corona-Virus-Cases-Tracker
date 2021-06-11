package corona.virus.cases.tracker.app;

import java.io.IOException;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class CoronaVirusCasesTrackerApplication 
{
	public static void main(String[] args) throws IOException 
	{
		SpringApplication.run(CoronaVirusCasesTrackerApplication.class, args);
	}
}
