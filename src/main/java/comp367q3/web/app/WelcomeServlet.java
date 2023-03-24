package comp367q3.web.app;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WelcomeServlet extends HttpServlet {
	@RequestMapping ("/welcome")
	public String display(HttpServletRequest request, HttpServletResponse response) {
		return "Welcome to COMP367";
//        response.setContentType("text/html");
//        PrintWriter out = response.getWriter();
//        out.println("<html><body><h1>Welcome to COMP367</h1></body></html>");
    }

}