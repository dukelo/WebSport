package tw.sport.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebAppConfig implements WebMvcConfigurer {

	@Override
	public void addViewControllers(ViewControllerRegistry registry) {

		registry.addViewController("/login/page").setViewName("login");
		registry.addViewController("/websport/index").setViewName("index");
		registry.addViewController("/logout").setViewName("logoutResult");
		registry.addViewController("/logout/page").setViewName("logout");
		registry.addViewController("/signUp/page").setViewName("signUp");
		registry.addViewController("/rePassword/page").setViewName("rePassword");
		registry.addViewController("/reSend/page").setViewName("reSend");
				
	}
	
	
}
