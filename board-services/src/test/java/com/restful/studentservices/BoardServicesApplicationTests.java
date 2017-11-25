package com.restful.studentservices;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.restful.application.BoardServicesApplication;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = BoardServicesApplication.class)
public class BoardServicesApplicationTests {
	
	@Test
	public void contextLoads() {
	}

	@Test
	public void testConnection() throws Exception {
		System.out.println("Completed");
	}
}
